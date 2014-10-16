/* Some sample functions to be tested. Yeah, they're dumb. */

#include <math.h>
#include "myfunctions.h"

double add_numbers(double a, double b)
{
    return a + b;
};

double is_multiple(double x)
{
    double q3 = x / 3.0;
    double q5 = x / 5.0;

    if (q3 == rint(q3) || q5 == rint(q5)) {
        return x;
    } else {
        return 0.0;
    }
};
