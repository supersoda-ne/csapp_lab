# **Lab 1**

## bitXor

> bitXor - x^y using only ~ and & 

User De Morgan's laws.
$$
A\oplus B=(A+B)\cdot(\overline{A}+ \overline{B})=\overline{\overline{A}\cdot\overline{B}}\cdot\overline{A\cdot B}
$$

```c
int bitXor(int x, int y) {
  return  ~(x & y) & ~(~x & ~y) ;
}
```

## tmin

> tmin - return minimum two's complement integer

Easy.

```c
int tmin(void) {
  return 1 << 31;
}
```

## isTmax

> isTmax - returns 1 if x is the maximum, two's complement number, and 0 otherwise 

`Tmax + 1 & Tmax == 0` 

And we need to exclude `-1`

```c
int isTmax(int x) {
  return (!~((x+1) ^ x)) & !!(x+1);
}
```

## allOddBits

> allOddBits - return 1 if all odd-numbered bits in word set to 1
>
> where bits are numbered from 0 (least significant) to 31 (most significant)

`mask=0xAA` can check 1 byte. We need 4 of them to check a whole word. The combination of `^` and `!` can replace `==`.

```c
int allOddBits(int x) {
  int m01 = (0xAA << 8) + 0xAA;
  int m0123 = (m01 << 16) + m01;
  return !((x&m0123) ^ m0123);
}
```

## negate

> negate - return -x 

Easy. Use the two'2 complement rules.

```c
int negate(int x) {
  return (~x) + 1;
}
```

## isAsciiDigit

> isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')

See comments.

```c
int isAsciiDigit(int x) {
  return !(x>>8) // have no higher bit
      & !((x&0xF0)^0x30) // 2nd lowest byte is 0x3
      & !((x&0x8) & (((x&0x2)<<2)| (x&0x4)<<1)); 
    	// lowest byte is not [0b1010,0b1011,0b1100,0b1101, 0b1111]
}
```

## conditional

> conditional - same as x ? y : z 

If `x!=0`, return`(z << 0) + (y << 32)`, vice versa.

```c
int conditional(int x, int y, int z) {
  int cond_z = !x;
  int new_z = z << ((!cond_z) << 4);
  int new_y = y << (cond_z << 4);
  return (new_z << ((!cond_z) << 4)) + (new_y << (cond_z << 4));
}
```

## isLessOrEqual

>  isLessOrEqual - if x <= y  then return 1, else return 0 

```c
// pseudocode
return 	(x>0 && y<0) |
    	((x>0&&y>0) | (x<0&&y<0)) && ((x-y) > 0) |
    	(x==y)
    	
```

Actual implementation.

```c
int isLessOrEqual(int x, int y) {
  int sign = 1 << 31;
  int neg_y = (~y) + 1;
  int not_sign_x = !(x & sign);
  int not_sign_y = !(y & sign);
  int same_sign = (not_sign_x & not_sign_y) | (!not_sign_x & !not_sign_y);
  return  ((!not_sign_x) & not_sign_y) |
          (same_sign & !!((x + neg_y) & sign))|
          !(x^y);
}
```

## logicalNeg

> logicalNeg - implement the ! operator, using all of the legal operators except !

Let's assume the input has only 2 bits. The solution is simple:`!x == (~(x|x>>1)) & 1`. We can apply this to more bits by using more `|` operations.

```c
int logicalNeg(int x) {
  int right_16 = x | (x >> 0x10);
  int right_8 = right_16 | (right_16 >> 0x8);
  int right_4 = right_8 | (right_8 >> 0x4);
  int right_2 = right_4 | (right_4 >> 0x2);
  int right_1 = right_2 | (right_2 >> 0x1);
  return (~right_1) & 0x1;
}
```

## howManyBits

> howManyBits - return the minimum number of bits required to represent x in two's complement

Firstly, we use `-x` if the sign bit of `x` is `1`. In this way, all we need to do is to find the highest bit. 

And then start from a very simple case, 4-bit input. We should check the highest half bits. If it's not zero, we then check its highest half bits (actually only 1 bit). If it is zero, we should check the highest bit for lowest half of `x`. Repeat this process, and we can deal with 32-bit input.

```c
int howManyBits(int x) {
  int has_bit_32, has_bit_16, has_bit_8, has_bit_4, has_bit_2, has_bit_1;
  int sign = x >> 31;
  int abs = (x & ~sign) + (~x & sign);
  has_bit_32 = !!abs;
  has_bit_16 = !!(abs >> 16) << 4;
  abs = abs >> has_bit_16;
  has_bit_8 = !!(abs >> 8) << 3;
  abs = abs >> has_bit_8;
  has_bit_4 = !!(abs >> 4) << 2;
  abs = abs >> has_bit_4;
  has_bit_2 = !!(abs >> 2) << 1;
  abs = abs >> has_bit_2;
  has_bit_1 = !!(abs >> 1);
  return has_bit_32 + has_bit_16 + has_bit_8 + has_bit_4 + has_bit_2 + has_bit_1 + 1;
}
```

## floatScale2

> floatScale2 - Return bit-level equivalent of expression 2*f for floating point argument f.

See comments.

```c
unsigned floatScale2(unsigned uf) {
  int sign = uf & (1<<31);
  unsigned exponent = (uf & (0xFF << 23)) >> 23;
  unsigned exponent_add1 = exponent + 1;
  if(
      !(uf&~(1<<31)) 			// +0, -0
     || !(exponent_add1<<24) 	// NaN
    ){
    return uf;
  } else if(!exponent){			// denormalised
    return (uf*2) | sign;
  } else {						// normalised
    exponent_add1 = exponent_add1 << 23;
    return (uf & ~(0xFF << 23)) | exponent_add1;
  }
}
```

## floatFloat2Int

> floatFloat2Int - Return bit-level equivalent of expression (int) f for floating point argument f.

See comments.

```c
int floatFloat2Int(unsigned uf) {
  int overflow = 1 << 31;
  int sign = uf & (1<<31);
  unsigned exponent = (uf & (0xFF << 23)) >> 23;
  unsigned E = exponent - 0x7F;
  int fraction = (uf & ~((0xFF << 23) | sign)) | (1 << 23);
  int ans;  
  if(exponent < 0x7F){ 						// E < 0 means fraction, return zero
    return 0;
  } else if(exponent >= 0xFF || E >= 31){ 	// overflow
    return overflow;
  } else {
    if(E > 23) {							// rounding
      ans = fraction << (E  - 23);
    } else {
      ans = fraction >> (23 - E);
    }
    if(sign){ 								// set sign
      return ~(ans) + 1;
    } else {
      return ans;
    }
  }
}
```



## floatPower2

>  floatPower2 - Return bit-level equivalent of the expression 2.0^x
>
>  (2.0 raised to the power x) for any 32-bit integer x.

See comments.

```c
unsigned floatPower2(int x) {
  int subnormal = -23 - 0x7F;
  if (x >= 0x80) { 				// NaN
    return 0xFF << 23;
  } else if(x >= (1-0x7F)) {	// normal
    return (x + 0x7F) << 23;
  } else if(x >= subnormal){ 	// subnormal
    return 1 << (x-subnormal);
  } else {						// too small
    return 0;
  }
}
```



## Result

```
Score   Rating  Errors  Function
 1      1       0       bitXor
 1      1       0       tmin
 1      1       0       isTmax
 2      2       0       allOddBits
 2      2       0       negate
 3      3       0       isAsciiDigit
 3      3       0       conditional
 3      3       0       isLessOrEqual
 4      4       0       logicalNeg
 4      4       0       howManyBits
 4      4       0       floatScale2
 4      4       0       floatFloat2Int
 4      4       0       floatPower2
Total points: 36/36
```

