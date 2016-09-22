/*
Author Name: W. Austin Wade
File Name: pi1.cpp
Serial Calculation of PI
*/

#include <sys/time.h>

#include <iostream>
#include <sstream>
#include <iomanip>

#include <climits>
#include <cstring>

/*
This funcion calculates PI serially

@param terms The number of terms to calculate to

@return The final value of PI calculated
*/
double calculate_pi(unsigned int terms)
{
	double factor = 1.0;
	double sum = 0.0;
	for(int i = 0; i < terms; i++, factor = -factor)
	{
		sum += factor/((2*i)+1);
	}
	return (4.0*sum);
}

void usage(const char *file_name)
{
	std::cout << "Calculating PI." << std::endl << std::endl;

	std::cout << "Usage:  " << file_name << " [--terms n]" << std::endl << std::endl;
	std::cout << "  --terms        number of terms used to calucate PI, default 1000" << std::endl;

}

bool parse_args(int argc, char *argv[], unsigned int &terms)
{
	terms = 1000;

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
	unsigned int terms;

	if(parse_args(argc, argv, terms))
	{
		struct timeval start_tv, end_tv;

		gettimeofday(&start_tv, NULL);
		double pi = calculate_pi(terms);
		gettimeofday(&end_tv, NULL);

		long double runtime = ((end_tv.tv_sec - start_tv.tv_sec)*(1000000.0L) + (end_tv.tv_usec - start_tv.tv_usec))/(1000.0L);

		std::cout << std::setprecision(17);
		std::cout << "PI: " << pi << std::endl;
		std::cout << "Run Time: " << runtime << std::endl;
	}

	return 0;
}
