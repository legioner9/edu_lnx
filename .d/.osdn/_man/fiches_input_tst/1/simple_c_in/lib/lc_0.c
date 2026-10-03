#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <iso646.h>
#include <stdlib.h>
#include <time.h>

#define DEBUG false

/*
*()  : Pt() as *arr : PtAr
arr  : Ar
argc : Ac
max value : MxV
min value : MnV
checked int : Chint
hight from to
*/

/*#*/ void fill_rand_lc_0_MxV_Ac_Ar(int max_value, int argc, int arr[])
{
    if (DEBUG)
        printf("fill_rand_lc_0_MxV_Ac_Ar\n");
    srand(time(NULL));
    for (int i = 0; i < argc; i++)
    {
        arr[i] = rand() % max_value;
    }
}

/*#*/ void pr_int_arr_lc_0_Ac_Ar(int argc, int arr[])
{
    if (DEBUG)
        printf("pr_int_arr_lc_0_Ac_Ar\n");
    for (int i = 0; i < argc; i++)
    {
        printf("%4d", arr[i]);
    }
    printf("\n");
}

/*#*/ int is_prime_lc_0_Chint(int a)
{
    for (int divisor = 2;
         divisor * divisor <= a;
         ++divisor)
    {
        if (0 == a % divisor)
        {
            printf("divisor = %d\n", divisor);
            return 0; // false -> not prime
        }
    }
    return 1; // thue -> is prime
}

/*#*/ void insert_sort_up_lc_0_AcMxV_Ar(int N, int A[])
{
    for (size_t i = 1; i < N; i++)
    {
        int k = i;
        while (k > 0 and A[k - 1] > A[k])
        {
            int tmp = A[k - 1];
            A[k - 1] = A[k];
            A[k] = tmp;
            // revers_int_arg(A[k - 1], A[k]);
            k--;
        }
    }
}

/*#*/ void insert_sort_down_lc_0_AcMxV_Ar(int N, int A[])
{
    for (size_t i = N - 1; i > 0; i--)
    {
        int k = i;
        while (k < N and A[k - 1] < A[k])
        {
            // printf("i = %d, k = %d\n", i, k);
            int tmp = A[k];
            A[k] = A[k - 1];
            A[k - 1] = tmp;
            // revers_int_arg(A[k - 1], A[k]);
            k++;
        }
    }
}

int count_sort_lc_0_MxV_Ac_Ar(int max_num, int size_arr, int arr[])
{
    // start/communis/Deploy_store/.qa/main_repo_fn/dir_c_/_c_/_man/site/tkh_c_0/v_25/count_sort_spj/main.c
}

/*#*/ int gcd_lc_0_int_int(int a, int b)
{
    if (0 == b)
        return a;
    int div = a % b;
    return gcd_lc_0_int_int(b, div);
}

/*#*/ int factorial_lc_0_int(int a)
{
    if (0 == a)
        return 1;
    int step = a * factorial_lc_0_int(a - 1);
    return step;
}

/*#*/ int fib_lc_0_int(int a)
{
    if (1 >= a) 
        return a;
    int step = fib_lc_0_int(a - 1) + fib_lc_0_int(a - 2);
    return step;
}

/*#*/ void hanoi_lc_0_hight_from_to(int n, int i, int k)
{
    // i issue , k dist , n value of piramid
    if (1 == n)
        printf("n = %d : from %d to %d\n", n, i, k);
    else
    {
        int tmp = 6 - i - k;
        hanoi_lc_0_hight_from_to(n - 1, i, tmp);
        printf("n = %d : from %d to %d\n", n, i, k);
        hanoi_lc_0_hight_from_to(n - 1, tmp, k);
    }
}