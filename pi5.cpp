/*
Author Name: W. Austin Wade
File Name: pi5.cpp
Parallel Calculation of PI with mutex and local sum
*/

#include <sys/time.h>

#include <iostream>
#include <sstream>
#include <iomanip>

#include <climits>
#include <cstring>

#include <pthread.h>
#include <stdlib.h>

double pi = 0.0;
unsigned int n = 0;
unsigned int thread_count = 0;
pthread_mutex_t lock;

/*
Calculates a certain range of PI values

@param rank The rank of the thread
*/
void *pi_thread(void *rank)
{
		//Set up all the local variables
		long my_rank = (long) rank;
		double factor, my_sum = 0.0;
		long long i;
		long long my_n = n/thread_count;
		long long my_first_i = my_n*my_rank;
		long long my_last_i = my_first_i + my_n;

		//Compute the first factor
		if(my_first_i % 2 == 0)
		{
			factor = 1.0;
		}
		else
		{
			factor = -1.0;
		}

		//Calculate PI
		for(i = my_first_i; i < my_last_i; i++, factor = -factor)
		{
			my_sum += factor/((2*i)+1);
		}

		//Wait until this threads to to add to global sum
		pthread_mutex_lock(&lock);
		pi += my_sum;
		pthread_mutex_unlock(&lock);

		return NULL;
}

/*
Set up the threads for calculating PI in parallel

@param terms The number of terms to calculate to
@param threads The number of threads to used

@return The value of PI
*/
double calculate_pi(unsigned int terms, unsigned int threads)
{
	n = terms;
	thread_count = threads;

	if(pthread_mutex_init(&lock, NULL) != 0)
	{
		std::cout << "Mutex Init Failed" << std::endl;
		return 0;
	}

	long thread;
	pthread_t* thread_handles = (pthread_t*) malloc(threads*sizeof(pthread_t));

	for (thread = 0; thread < threads; thread++)
	{
			pthread_create(&thread_handles[thread], NULL, pi_thread, (void*)thread);
	}

	for(thread = 0; thread < thread_count; thread++)
	{
			pthread_join(thread_handles[thread], NULL);
	}

	pthread_mutex_destroy(&lock);

	free(thread_handles);

	return (4*pi);
}

void usage(const char *file_name)
{
	std::cout << "Calculating PI." << std::endl << std::endl;

	std::cout << "Usage:  " << file_name << " [--terms n] [--threads n]" << std::endl << std::endl;
	std::cout << "  --terms        number of terms used to calucate PI, default 1000" << std::endl;
	std::cout << "  --threads  number of threads to use, default 2" << std::endl;

}

bool parse_args(int argc, char *argv[], unsigned int &terms, unsigned int &threads)
{
	terms = 1000;
	threads = 2;

	int ii=1;
	while(ii < argc)
	{
		if(strcmp(argv[ii], "--terms") == 0)
		{
			ii++;
			if(ii >= argc)
			{
				std::cerr << "Option " << argv[ii-1] << " requires an argument." << std::endl << std::endl;
				usage(argv[0]);

				return false;
			}

			std::istringstream iss(argv[ii]);
			iss >> terms;

			if(iss.bad() || iss.fail() || !iss.eof())
			{
				if(terms == UINT_MAX)
				{
					std::cerr << "Number of terms specified exceeds maximum allowed value." << std::endl << std::endl;
					usage(argv[0]);

					return false;
				}
				else
				{
					std::cerr << "Option " << argv[ii-1] << " requires a positive integer value." << std::endl << std::endl;
					usage(argv[0]);

					return false;
				}
			}
		}
		else if(strcmp(argv[ii], "--threads") == 0)
		{
			ii++;
			if(ii >= argc)
			{
				std::cerr << "Option " << argv[ii-1] << " requires an argument." << std::endl << std::endl;
				usage(argv[0]);

				return false;
			}

			std::istringstream iss(argv[ii]);
			iss >> threads;

			if(iss.bad() || iss.fail() || !iss.eof())
			{
				if(threads == UINT_MAX)
				{
					std::cerr << "Number of threads specified exceeds maximum allowed value." << std::endl << std::endl;
					usage(argv[0]);

					return false;
				}
				else
				{
					std::cerr << "Option " << argv[ii-1] << " requires a positive integer value." << std::endl << std::endl;
					usage(argv[0]);

					return false;
				}
			}
		}
		else if((strcmp(argv[ii], "-h") == 0) || (strcmp(argv[ii], "--help") == 0))
		{
			usage(argv[0]);

			return false;
		}
		else
		{
			std::cerr << "Unrecognized input option " << argv[ii] << std::endl << std::endl;
			usage(argv[0]);

			return false;
		}

		ii++;
	}

	return true;
}

int main(int argc, char *argv[])
{
	unsigned int terms, threads;

	if(parse_args(argc, argv, terms, threads))
	{
		struct timeval start_tv, end_tv;

		gettimeofday(&start_tv, NULL);
		double pi = calculate_pi(terms, threads);
		gettimeofday(&end_tv, NULL);

		long double runtime = ((end_tv.tv_sec - start_tv.tv_sec)*(1000000.0L) + (end_tv.tv_usec - start_tv.tv_usec))/(1000.0L);

		std::cout << std::setprecision(17);
		std::cout << "PI: " << pi << std::endl;
		std::cout << "Run Time: " << runtime << std::endl;
	}

	return 0;
}
