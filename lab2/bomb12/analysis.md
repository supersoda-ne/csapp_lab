# Lab 2
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
It calls `atof` and `func6`, and we will dig into that later.

There is a loop structure after call site of `func6`.

```
 8048e83:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048e8a:	eb 0c                	jmp    8048e98 <phase_6+0x48>

 8048e8c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e8f:	8b 40 08             	mov    0x8(%eax),%eax
 8048e92:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e95:	ff 45 f4             	incl   -0xc(%ebp)

 8048e98:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8048e9c:	7e ee                	jle    8048e8c <phase_6+0x3c>
```
`-0xc(%ebp)` iterates from 1 to 7.

And in the loop body, it read some value from the address `-0x4(%ebp)`, and then write it back to `-0x4(%ebp)`. It seems like link list.

So this loop is going to get the 8th node of a link list.

fun6
`bb3, bb4, bb5`, loop until `p->val <= node1->val || p == NULL`

So it is insertion sort.

The input we need to provide should be the 8th biggest value. It's node4 `0xef (239)`.
```
(gdb) x/12a 0x0804a66c
(gdb) x/4a 0x0804a66c
0x804a66c <node0>:      0x0     0x0     0x804a660 <node1>       0x3e9
(gdb) x/4a 0x804a660
0x804a660 <node1>:      0x143   0x1     0x804a654 <node2>       0x0
(gdb) x/4 0x804a654
0x804a654 <node2>:      0x396   0x2     0x804a648 <node3>       0x143
(gdb) x/4 0x804a648
0x804a648 <node3>:      0x399   0x3     0x804a63c <node4>       0x396
(gdb) x/4 0x804a63c
0x804a63c <node4>:      0xef    0x4     0x804a630 <node5>       0x399
(gdb) x/4 0x804a630
0x804a630 <node5>:      0x97    0x5     0x804a624 <node6>       0xef
(gdb) x/4 0x804a624
0x804a624 <node6>:      0x356   0x6     0x804a618 <node7>       0x97
(gdb) x/4 0x804a618
0x804a618 <node7>:      0x201   0x7     0x804a60c <node8>       0x356
(gdb) x/4 0x804a60c
0x804a60c <node8>:      0x2cd   0x8     0x804a600 <node9>       0x201
(gdb) x/4 0x804a600
0x804a600 <node9>:      0x356   0x9     0x0     0x2cd
```

### Secret Phase
Well, this is easier than p6, or I'm just luckily hit it.

We need first insert some magic string behind the input of phase 4.
```
(gdb) x/s 0x8049e5a
0x8049e5a:      "austinpowers"
```
`secret_phase` calls `fun7` with a new line of input, and ask for a return value of `0x7`.

Randomly check some value in `fun7`, it visits something like `n1`, `n22`. We can find more of these `n[0-9]+` in `symbol_table.txt`. They are `n1`, `n21`, `n22`, `n31`,...,`n34`,...,`n41`, ...,`n48`. If you look into `fun7`, it is search a value on a BST. Each turn left will double the return value, and turn right will double and increase 1. To get `0x7`, we need go all the way right, to `n48`. So the answer should be the value of `n48`, that is `0x3e9 (1001)`
```
(gdb) x/a ($edx)
0x804aa81 <input_strings+481>:  0x30
(gdb) x/a $edx
0x804aa81 <input_strings+481>:  0x30
(gdb) x/a $eax
0x804a720 <n1>: 0x24
(gdb) x/a ($eax+8)
0x804a728 <n1+8>:       0x804a708 <n22>
```

```
(gdb) x/a 0x0804a678
0x804a678 <n48>:        0x3e9
```

## Hurray
```
$ ./bomb < ./solution.txt 
Welcome to my fiendish little bomb. You have 6 phases with
which to blow yourself up. Have a nice day!
Phase 1 defused. How about the next one?
That's number 2.  Keep going!
Halfway there!
So you got that one.  Try this one.
Good work!  On to the next...
Curses, you've found the secret phase!
But finding it and solving it are quite different...
Wow! You've defused the secret stage!
Congratulations! You've defused the bomb!
```