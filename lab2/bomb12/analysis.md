## phase 1

It calls strings_not_equal with $0x8049958.

It must be a char* for a string.

And we can peek its value with gdb print (char *) 0x8049958.

So we got:

`Why make trillions when we could make... billions?`

## phase 2

` 8048bb7:	e8 4c 04 00 00       	call   8049008 <read_six_numbers>`
Read 6 numbers from input string.

And the next step is a loop. Its body looks like this.
```(asm)
 8048bd2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bd5:	8b 4c 85 e4          	mov    -0x1c(%ebp,%eax,4),%ecx
 
 8048bd9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bdc:	48                   	dec    %eax
 8048bdd:	8b 54 85 e4          	mov    -0x1c(%ebp,%eax,4),%edx

 8048be1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048be4:	40                   	inc    %eax
 8048be5:	0f af c2             	imul   %edx,%eax
 8048be8:	39 c1                	cmp    %eax,%ecx
```
It basically read `a[i]` and `a[i+1]` from the 6 numbers, and try to compare `a[i] * l` with `a[i+1]`. `l` starts from `2` and `a[0]` is 1. 

So we got:

`1 2 6 24 120 720`

## phase 3
It reads 2 integer to `-0xc(%ebp)` and `-0x10(%ebp)`.

It will check if the first integer is `0x7`.
```
 8048c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c42:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048c45:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
 8048c49:	77 54                	ja     8048c9f <phase_3+0xa3>
```

From gdb we can learn which case it will fall in.
```
(gdb) print /x $eax
$19 = 0x8048c96
```

That is:
```
 8048c96:	c7 45 f8 86 03 00 00 	movl   $0x386,-0x8(%ebp)
 8048c9d:	eb 05                	jmp    8048ca4 <phase_3+0xa8>
```

Finally it will compare the second integer with `-0x8(%ebp)`
```
 8048ca4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ca7:	39 45 f8             	cmp    %eax,-0x8(%ebp)
```

So the answer is:
```
7 902
```