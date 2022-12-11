/********************************************************
 * Kernels to be optimized for the CS:APP Performance Lab
 ********************************************************/

#include <stdio.h>
#include <stdlib.h>
#include "defs.h"
#define SMOOTH_N 8
#define ROW_SUM_N (SMOOTH_N + 2)
/* 
 * Please fill in the following team struct 
 */
team_t team = {
    "test_team_name",              /* Team name */

    "test_member_name",     /* First member full name */
    "test_email",  /* First member email address */

    "",                   /* Second member full name (leave blank if none) */
    ""                    /* Second member email addr (leave blank if none) */
};

/***************
 * ROTATE KERNEL
 ***************/

/******************************************************
 * Your different versions of the rotate kernel go here
 ******************************************************/

/* 
 * naive_rotate - The naive baseline version of rotate 
 */
char naive_rotate_descr[] = "naive_rotate: Naive baseline implementation";
void naive_rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(dim-1-j, i, dim)] = src[RIDX(i, j, dim)];
}

/* 
 * rotate - Your current working version of rotate
 * IMPORTANT: This is the version you will be graded on
 */
char rotate_descr[] = "rotate: Current working version";
// void rotate(int dim, pixel *src, pixel *dst) 
// {
//     int i, j;
//     int ii, jj;
//     int ts, td;
//     pixel *ps=src;
//     for (i = 0; i < dim; i += 1) {
//         // ps = src + i;
//         for (j = 0; j < dim; j += 1) {
//             dst[RIDX(dim-1-j, i, dim)] = *ps++;
//         }
//     }
// }

void rotate(int dim, pixel *src, pixel *dst) 
{
    int i, j;
    int ii, jj;
    int ts, td;
    pixel *ps, *pd;
    for (i = 0; i < dim; i += 8) {
        for (j = 0; j < dim; j += 8) {
            
            for (ii = i; ii < i + 8; ii += 1) {
                // ts = ii * dim + j;
                // td = (dim-1-j) * dim + ii;
                pd = dst + (dim-1-j)*dim+ii;
                ps = src + ii*dim+j;
                *pd = *ps++;
                pd -= dim;
                *pd = *ps++;
                pd -= dim;
                *pd = *ps++;
                pd -= dim;
                *pd = *ps++;
                pd -= dim;

                *pd = *ps++;
                pd -= dim;
                *pd = *ps++;
                pd -= dim;
                *pd = *ps++;
                pd -= dim;
                *pd = *ps;

                // td = (dim-1-j)*dim+ii;
                // ts = ii*dim+j;
                // dst[td - 0 * dim] = src[ts+0];
                // dst[td - 1 * dim] = src[ts+1];
                // dst[td - 2 * dim] = src[ts+2];
                // dst[td - 3 * dim] = src[ts+3];
                // dst[td - 4 * dim] = src[ts+4];
                // dst[td - 5 * dim] = src[ts+5];
                // dst[td - 6 * dim] = src[ts+6];
                // dst[td - 7 * dim] = src[ts+7];

                // for (jj = j; jj < j + ROTATE_BATCH; jj += 1) {
                //     // dst[td] = src[ts];
                //     // td -= dim;
                //     // ts += 1;
                //     dst[(dim-1-jj)*dim+ii] = src[ii*dim+jj];
                    
                // }
            }
        }
    }
}

/*********************************************************************
 * register_rotate_functions - Register all of your different versions
 *     of the rotate kernel with the driver by calling the
 *     add_rotate_function() for each test function. When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_rotate_functions() 
{
    // add_rotate_function(&naive_rotate, naive_rotate_descr);   
    // add_rotate_function(&rotate, rotate_descr);   
    /* ... Register additional test functions here */
}


/***************
 * SMOOTH KERNEL
 **************/

/***************************************************************
 * Various typedefs and helper functions for the smooth function
 * You may modify these any way you like.
 **************************************************************/

/* A struct used to compute averaged pixel value */
typedef struct {
    int red;
    int green;
    int blue;
    int num;
} pixel_sum;

/* Compute min and max of two integers, respectively */
static int min(int a, int b) { return (a < b ? a : b); }
static int max(int a, int b) { return (a > b ? a : b); }

/* 
 * initialize_pixel_sum - Initializes all fields of sum to 0 
 */
static void initialize_pixel_sum(pixel_sum *sum) 
{
    sum->red = sum->green = sum->blue = 0;
    sum->num = 0;
    return;
}

/* 
 * accumulate_sum - Accumulates field values of p in corresponding 
 * fields of sum 
 */
static void accumulate_sum(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    sum->num++;
    return;
}

/* 
 * assign_sum_to_pixel - Computes averaged pixel value in current_pixel 
 */
static void assign_sum_to_pixel(pixel *current_pixel, pixel_sum sum) 
{
    current_pixel->red = (unsigned short) (sum.red/sum.num);
    current_pixel->green = (unsigned short) (sum.green/sum.num);
    current_pixel->blue = (unsigned short) (sum.blue/sum.num);
    return;
}

/* 
 * avg - Returns averaged pixel value at (i,j) 
 */
static pixel avg(int dim, int i, int j, pixel *src) 
{
    int ii, jj;
    pixel_sum sum;
    pixel current_pixel;

    initialize_pixel_sum(&sum);
    for(ii = max(i-1, 0); ii <= min(i+1, dim-1); ii++) 
	for(jj = max(j-1, 0); jj <= min(j+1, dim-1); jj++) 
	    accumulate_sum(&sum, src[RIDX(ii, jj, dim)]);

    assign_sum_to_pixel(&current_pixel, sum);
    return current_pixel;
}

/******************************************************
 * Your different versions of the smooth kernel go here
 ******************************************************/

/*
 * naive_smooth - The naive baseline version of smooth 
 */
char naive_smooth_descr[] = "naive_smooth: Naive baseline implementation";
void naive_smooth(int dim, pixel *src, pixel *dst) 
{
    int i, j;

    for (i = 0; i < dim; i++)
	for (j = 0; j < dim; j++)
	    dst[RIDX(i, j, dim)] = avg(dim, i, j, src);
}

/* 
 * add_pixel - Add field values of p in corresponding 
 * fields of sum 
 */
static void add_pixel(pixel_sum *sum, pixel p) 
{
    sum->red += (int) p.red;
    sum->green += (int) p.green;
    sum->blue += (int) p.blue;
    return;
}

/* 
 * minus_pixel - Minus field values of p in corresponding 
 * fields of sum 
 */
static void minus_pixel(pixel_sum *sum, pixel p) 
{
    sum->red -= (int) p.red;
    sum->green -= (int) p.green;
    sum->blue -= (int) p.blue;
    return;
}

/* 
 * add_sum - Add field values of p in corresponding 
 * fields of sum 
 */
static void add_sum(pixel_sum *sum, pixel_sum p) 
{
    sum->red += p.red;
    sum->green += p.green;
    sum->blue += p.blue;
    return;
}

/* 
 * minus_sum - Minus field values of p in corresponding 
 * fields of sum 
 */
static void minus_sum(pixel_sum *sum, pixel_sum p) 
{
    sum->red -= p.red;
    sum->green -= p.green;
    sum->blue -= p.blue;
    return;
}

static void assign_avg_to_pixel(pixel *current_pixel, pixel_sum sum, int cnt) 
{
    current_pixel->red = (unsigned short) (sum.red/cnt);
    current_pixel->green = (unsigned short) (sum.green/cnt);
    current_pixel->blue = (unsigned short) (sum.blue/cnt);
    return;
}
static void pixel_to_str(char *s, pixel x) {
    sprintf(s, "(%d, %d, %d)", x.red, x.green, x.blue);
}
static void sum_to_str(char *s, pixel_sum x) {
    sprintf(s, "(%d, %d, %d)", x.red, x.green, x.blue);
}

pixel_sum row_sum_space[SMOOTH_N+2][SMOOTH_N+2]={0};
pixel_sum *row_sum = &row_sum_space[1][1];
/*
 * smooth_NxN - smooth NxN square inside the matrix
 */
static void smooth_NxN(int dim, pixel *src, pixel *dst) {
    int i, j;
    pixel_sum s;
    pixel_sum t;
    // row sum
    for(i = -1; i < SMOOTH_N+1; i += 1) {
        memset(&s, 0, sizeof(pixel_sum));
        add_pixel(&s, src[RIDX(i, -1, dim)]);
        add_pixel(&s, src[RIDX(i, 0, dim)]);

        for(j = 0; j < SMOOTH_N; j += 1) {
            add_pixel(&s, src[RIDX(i, j+1, dim)]);
            row_sum[RIDX(i, j, ROW_SUM_N)] = s;
            minus_pixel(&s, src[RIDX(i, j-1, dim)]);
        }
    }
    for(j = 0; j < SMOOTH_N; j += 1) {
        memset(&s, 0, sizeof(pixel_sum));
        add_sum(&s, row_sum[RIDX(-1, j, ROW_SUM_N)]);
        add_sum(&s, row_sum[RIDX(0, j, ROW_SUM_N)]);

        for(i = 0; i < SMOOTH_N; i += 1) {
            add_sum(&s, row_sum[RIDX(i+1, j, ROW_SUM_N)]);
            assign_avg_to_pixel(dst + RIDX(i, j, dim), s, 9);
            minus_sum(&s, row_sum[RIDX(i-1, j, ROW_SUM_N)]);
        }
    }
}
static void sum_2x2(pixel *res, int dim, pixel *src) {
    pixel_sum s;
    memset(&s, 0, sizeof(pixel_sum));
    add_pixel(&s, src[RIDX(0,0,dim)]); add_pixel(&s, src[RIDX(0,1,dim)]);
    add_pixel(&s, src[RIDX(1,0,dim)]); add_pixel(&s, src[RIDX(1,1,dim)]);
    assign_avg_to_pixel(res, s, 4);
}
static void sum_2x3(pixel *res, int dim, pixel *src) {
    pixel_sum s;
    memset(&s, 0, sizeof(pixel_sum));
    add_pixel(&s, src[RIDX(0,0,dim)]); add_pixel(&s, src[RIDX(0,1,dim)]); add_pixel(&s, src[RIDX(0,2,dim)]);
    add_pixel(&s, src[RIDX(1,0,dim)]); add_pixel(&s, src[RIDX(1,1,dim)]); add_pixel(&s, src[RIDX(1,2,dim)]);
    assign_avg_to_pixel(res, s, 6);
}

static void sum_3x2(pixel *res, int dim, pixel *src) {
    pixel_sum s;
    memset(&s, 0, sizeof(pixel_sum));
    add_pixel(&s, src[RIDX(0,0,dim)]); add_pixel(&s, src[RIDX(0,1,dim)]);
    add_pixel(&s, src[RIDX(1,0,dim)]); add_pixel(&s, src[RIDX(1,1,dim)]);
    add_pixel(&s, src[RIDX(2,0,dim)]); add_pixel(&s, src[RIDX(2,1,dim)]);
    assign_avg_to_pixel(res, s, 6);
}
/*
 * smooth - Your current working version of smooth. 
 * IMPORTANT: This is the version you will be graded on
 */
char smooth_descr[] = "smooth: Current working version";

char str0[100];
char str1[100];
char str2[100];
void smooth(int dim, pixel *src, pixel *dst) 
{   
    int i, j;
    // printf("$%d$\n", (int)(src-10)->red);
    // exit(0);
    // naive_smooth(dim, src, dst);
    
    // pixel_sum s;

    for(i = 0; i < dim; i += SMOOTH_N) {
        for(j = 0; j < dim; j += SMOOTH_N) {
            smooth_NxN(dim, src + RIDX(i, j, dim), dst + RIDX(i, j, dim));
        }
    }
    // top
    for(i = 1; i < dim-1; i += 1) {
        sum_2x3(dst + RIDX(0, i, dim), dim, src + RIDX(0, i-1, dim));
        sum_2x3(dst + RIDX(dim-1, i, dim), dim, src + RIDX(dim-2, i-1, dim));
        sum_3x2(dst + RIDX(i, 0, dim), dim, src + RIDX(i-1, 0, dim));
        sum_3x2(dst + RIDX(i, dim-1, dim), dim, src + RIDX(i-1, dim-2, dim));

    }
    // // bottom
    // for(i = 1; i < dim-1; i += 1) {
        
    // }
    // // left
    // for(i = 1; i < dim-1; i += 1) {
    // }
    // // right
    // for(i = 1; i < dim-1; i += 1) {
        
    // }
    // top-left
    sum_2x2(dst + RIDX(0,0,dim), dim, src + RIDX(0,0,dim));
    // top-right
    sum_2x2(dst + RIDX(0,dim-1,dim), dim, src + RIDX(0,dim-2,dim));
    // bottom-left
    sum_2x2(dst + RIDX(dim-1,0,dim), dim, src + RIDX(dim-2,0,dim));
    // bottom-right
    sum_2x2(dst + RIDX(dim-1,dim-1,dim), dim, src + RIDX(dim-2,dim-2,dim));

}


/********************************************************************* 
 * register_smooth_functions - Register all of your different versions
 *     of the smooth kernel with the driver by calling the
 *     add_smooth_function() for each test function.  When you run the
 *     driver program, it will test and report the performance of each
 *     registered test function.  
 *********************************************************************/

void register_smooth_functions() {
    add_smooth_function(&smooth, smooth_descr);
    // add_smooth_function(&naive_smooth, naive_smooth_descr);
    /* ... Register additional test functions here */
}

