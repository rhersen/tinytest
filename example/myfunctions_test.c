/* Tests for myfunctions.c, using TinyTest. */

#include "../tinytest.h"
#include "myfunctions.h"

void test_addition()
{
  ASSERT_EQUALS(10, add_numbers(3, 7));
  ASSERT_EQUALS(-10, add_numbers(4, -14));
}

void euler1()
{
  ASSERT_EQUALS(0.0, is_multiple(2.0));
  ASSERT_EQUALS(3.0, is_multiple(3.0));
  ASSERT_EQUALS(5.0, is_multiple(5.0));
  ASSERT_EQUALS(6.0, is_multiple(6.0));
}

/* test runner */
int main()
{
  RUN(test_addition);
  RUN(euler1);
  return TEST_REPORT();
}
