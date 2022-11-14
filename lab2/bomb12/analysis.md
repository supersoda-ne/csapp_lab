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


### phase 4
```
 8048cef:	c7 44 24 04 b4 99 04 	movl   $0x80499b4,0x4(%esp)
 8048cf6:	08 
 8048cf7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cfa:	89 04 24             	mov    %eax,(%esp)
 8048cfd:	e8 66 fb ff ff       	call   8048868 <sscanf@plt>
```
```
(gdb) x/s 0x80499b4
0x80499b4:      "%d"
```
Read 1 int.
```
 8048d0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d0e:	85 c0                	test   %eax,%eax
```
Input int has to be positive.
```
 8048d1d:	e8 91 ff ff ff       	call   8048cb3 <func4>
 8048d22:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048d25:	81 7d f8 d0 02 00 00 	cmpl   $0x2d0,-0x8(%ebp)
```
Check return value of func4 is 0x2d0 or not.

```
08048cb3 <func4>:
 8048cb3:	55                   	push   %ebp
 8048cb4:	89 e5                	mov    %esp,%ebp
 8048cb6:	83 ec 08             	sub    $0x8,%esp
 8048cb9:	83 7d 08 01          	cmpl   $0x1,0x8(%ebp)
 8048cbd:	7f 09                	jg     8048cc8 <func4+0x15>
 8048cbf:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048cc6:	eb 15                	jmp    8048cdd <func4+0x2a>
 8048cc8:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ccb:	48                   	dec    %eax
 8048ccc:	89 04 24             	mov    %eax,(%esp)
 8048ccf:	e8 df ff ff ff       	call   8048cb3 <func4>
 8048cd4:	89 c2                	mov    %eax,%edx
 8048cd6:	0f af 55 08          	imul   0x8(%ebp),%edx
 8048cda:	89 55 fc             	mov    %edx,-0x4(%ebp)
 8048cdd:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048ce0:	c9                   	leave  
 8048ce1:	c3                   	ret    
```
func4 will recurrsively run until param goes down to 0. And it will multiply each param to inner result. So it calculates the factorial.
`x! == 0x2d0`
The answer is
`6`

### phase 5
input format:
```
 8048d49:	c7 44 24 04 8b 99 04 	movl   $0x804998b,0x4(%esp)
 8048d50:	08 
 8048d51:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d54:	89 04 24             	mov    %eax,(%esp)
 8048d57:	e8 0c fb ff ff       	call   8048868 <sscanf@plt>
```
```
(gdb) x/s 0x804998b
0x804998b:      "%d %d"
```
Input 2 integers.

```
 8048d87:	eb 16                	jmp    8048d9f <phase_5+0x6a>
 8048d89:	ff 45 f0             	incl   -0x10(%ebp)

 8048d8c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d8f:	8b 04 85 c0 a5 04 08 	mov    0x804a5c0(,%eax,4),%eax
 8048d96:	89 45 ec             	mov    %eax,-0x14(%ebp)

 8048d99:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d9c:	01 45 f4             	add    %eax,-0xc(%ebp)

 8048d9f:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048da2:	83 f8 0f             	cmp    $0xf,%eax
 8048da5:	75 e2                	jne    8048d89 <phase_5+0x54>
 8048da7:	83 7d f0 08          	cmpl   $0x8,-0x10(%ebp)
 8048dab:	75 08                	jne    8048db5 <phase_5+0x80>
 8048dad:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8048db0:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8048db3:	74 05                	je     8048dba <phase_5+0x85>
```
Here is a complex loop. 
1. `-0x10(%ebp)` incr each time during the loop. At the end of the loop it has to be `0x8`. Before that, we will execute 8 times.
2. In the loop, `-0x14(%ebp)` will be updated with `0x804a5c0(,%eax,4)`. I'v found all of the 16 values for it. Those are:`[10, 2, 14, 7, 8, 12, 15, 11, 0, 4, 1, 13, 3, 9, 6, 5]`
3. At the end of the loop, `-0x14(%ebp)` suppose to be `0xf` or `15`.
4. The `-0xc(%ebp)` records the sum of each `-0x14(%ebp)`, and it should equals to the second input value.

From 1~3, we can imagine the value sequence of `-0x14(%ebp)` from the last one `15` to the first `4`.

And then we sum up this sequence to get the value of the second input. That is `56`.

So the answer is `4 56`

### phase 6

