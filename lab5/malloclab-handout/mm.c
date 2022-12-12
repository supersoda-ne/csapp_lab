/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "test_team_name",
    /* First member's full name */
    "test_member_name",
    /* First member's email address */
    "test_email_address",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define ADDR_MASK (~0b11)

#define IS_FREE(header_ptr) (*(size_t *)header_ptr & 1)

#define BLOCK_SIZE(header_ptr) (*(size_t *)header_ptr & ADDR_MASK)

// #define HEADER_TO_FOOTER(header_ptr) (header_ptr + BLOCK_SIZE(header_ptr) - SIZE_T_SIZE)

#define HEADER_TO_NEXT(header_ptr) (header_ptr + BLOCK_SIZE(header_ptr))

#define SPACE_TO_HEADER(space_ptr) (space_ptr - SIZE_T_SIZE)

void *free_list_head = NULL;
/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void) {
    return 0;
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size) {
    int newsize = ALIGN(size + SIZE_T_SIZE);
    
    void *p;
    if (free_list_head != NULL) {
        printf("Search for space size: %x\n", newsize);
        for(p = free_list_head; p < mem_heap_hi(); p = HEADER_TO_NEXT(p)) {
            printf("p (free, size): (%1d, %x)\n", IS_FREE(p), BLOCK_SIZE(p));
            if(IS_FREE(p) && BLOCK_SIZE(p) > newsize) {
                *(size_t *)p |= 1;
                printf("Found free space\n");
                return (void *)((char *)p + SIZE_T_SIZE);
            }
        }
    }

    p = mem_sbrk(newsize);
    if ((int)p < 0) {
        printf("NO FREE SPACE!\n");
	    return NULL;
    } else {
        *(size_t *)p = newsize | 1;
        return (void *)((char *)p + SIZE_T_SIZE);
    }
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr) {
    ptr = SPACE_TO_HEADER(ptr);
    printf("Try to free %p\n", ptr);
    size_t size = BLOCK_SIZE(ptr);
    printf("BLOCK_SIZE:%x\n", size);
    printf("mem_heap_hi:%p\n", mem_heap_hi());
    *(size_t *)ptr = size;
    if (free_list_head == NULL) {
        free_list_head = ptr;
    } else if (free_list_head > ptr) {
        free_list_head = ptr;
    }
    for(ptr = free_list_head; ptr < mem_heap_hi(); ptr = HEADER_TO_NEXT(ptr)) {
        if(!IS_FREE(ptr)) {
            continue;
        }
        while(HEADER_TO_NEXT(ptr) < mem_heap_hi() && IS_FREE(HEADER_TO_NEXT(ptr))) {
            *(size_t *)ptr += BLOCK_SIZE(HEADER_TO_NEXT(ptr));
        }
    }
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size) {
    void *oldptr = ptr;
    void *newptr;
    size_t copySize;
    
    newptr = mm_malloc(size);
    if (newptr == NULL) {
        return NULL;
    }
    copySize = *(size_t *)((char *)oldptr - SIZE_T_SIZE);
    if (size < copySize) {
        copySize = size;
    }
    memcpy(newptr, oldptr, copySize);
    mm_free(oldptr);
    return newptr;
}














