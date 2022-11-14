
bomb:     file format elf32-i386


Disassembly of section .init:

08048710 <_init>:
 8048710:	55                   	push   %ebp
 8048711:	89 e5                	mov    %esp,%ebp
 8048713:	83 ec 08             	sub    $0x8,%esp
 8048716:	e8 39 02 00 00       	call   8048954 <call_gmon_start>
 804871b:	e8 90 02 00 00       	call   80489b0 <frame_dummy>
 8048720:	e8 9b 10 00 00       	call   80497c0 <__do_global_ctors_aux>
 8048725:	c9                   	leave  
 8048726:	c3                   	ret    

Disassembly of section .plt:

08048728 <.plt>:
 8048728:	ff 35 e4 a0 04 08    	push   0x804a0e4
 804872e:	ff 25 e8 a0 04 08    	jmp    *0x804a0e8
 8048734:	00 00                	add    %al,(%eax)
	...

08048738 <close@plt>:
 8048738:	ff 25 ec a0 04 08    	jmp    *0x804a0ec
 804873e:	68 00 00 00 00       	push   $0x0
 8048743:	e9 e0 ff ff ff       	jmp    8048728 <.plt>

08048748 <fprintf@plt>:
 8048748:	ff 25 f0 a0 04 08    	jmp    *0x804a0f0
 804874e:	68 08 00 00 00       	push   $0x8
 8048753:	e9 d0 ff ff ff       	jmp    8048728 <.plt>

08048758 <tmpfile@plt>:
 8048758:	ff 25 f4 a0 04 08    	jmp    *0x804a0f4
 804875e:	68 10 00 00 00       	push   $0x10
 8048763:	e9 c0 ff ff ff       	jmp    8048728 <.plt>

08048768 <getenv@plt>:
 8048768:	ff 25 f8 a0 04 08    	jmp    *0x804a0f8
 804876e:	68 18 00 00 00       	push   $0x18
 8048773:	e9 b0 ff ff ff       	jmp    8048728 <.plt>

08048778 <signal@plt>:
 8048778:	ff 25 fc a0 04 08    	jmp    *0x804a0fc
 804877e:	68 20 00 00 00       	push   $0x20
 8048783:	e9 a0 ff ff ff       	jmp    8048728 <.plt>

08048788 <fflush@plt>:
 8048788:	ff 25 00 a1 04 08    	jmp    *0x804a100
 804878e:	68 28 00 00 00       	push   $0x28
 8048793:	e9 90 ff ff ff       	jmp    8048728 <.plt>

08048798 <bcopy@plt>:
 8048798:	ff 25 04 a1 04 08    	jmp    *0x804a104
 804879e:	68 30 00 00 00       	push   $0x30
 80487a3:	e9 80 ff ff ff       	jmp    8048728 <.plt>

080487a8 <rewind@plt>:
 80487a8:	ff 25 08 a1 04 08    	jmp    *0x804a108
 80487ae:	68 38 00 00 00       	push   $0x38
 80487b3:	e9 70 ff ff ff       	jmp    8048728 <.plt>

080487b8 <system@plt>:
 80487b8:	ff 25 0c a1 04 08    	jmp    *0x804a10c
 80487be:	68 40 00 00 00       	push   $0x40
 80487c3:	e9 60 ff ff ff       	jmp    8048728 <.plt>

080487c8 <puts@plt>:
 80487c8:	ff 25 10 a1 04 08    	jmp    *0x804a110
 80487ce:	68 48 00 00 00       	push   $0x48
 80487d3:	e9 50 ff ff ff       	jmp    8048728 <.plt>

080487d8 <fgets@plt>:
 80487d8:	ff 25 14 a1 04 08    	jmp    *0x804a114
 80487de:	68 50 00 00 00       	push   $0x50
 80487e3:	e9 40 ff ff ff       	jmp    8048728 <.plt>

080487e8 <sleep@plt>:
 80487e8:	ff 25 18 a1 04 08    	jmp    *0x804a118
 80487ee:	68 58 00 00 00       	push   $0x58
 80487f3:	e9 30 ff ff ff       	jmp    8048728 <.plt>

080487f8 <fputc@plt>:
 80487f8:	ff 25 1c a1 04 08    	jmp    *0x804a11c
 80487fe:	68 60 00 00 00       	push   $0x60
 8048803:	e9 20 ff ff ff       	jmp    8048728 <.plt>

08048808 <__libc_start_main@plt>:
 8048808:	ff 25 20 a1 04 08    	jmp    *0x804a120
 804880e:	68 68 00 00 00       	push   $0x68
 8048813:	e9 10 ff ff ff       	jmp    8048728 <.plt>

08048818 <printf@plt>:
 8048818:	ff 25 24 a1 04 08    	jmp    *0x804a124
 804881e:	68 70 00 00 00       	push   $0x70
 8048823:	e9 00 ff ff ff       	jmp    8048728 <.plt>

08048828 <fclose@plt>:
 8048828:	ff 25 28 a1 04 08    	jmp    *0x804a128
 804882e:	68 78 00 00 00       	push   $0x78
 8048833:	e9 f0 fe ff ff       	jmp    8048728 <.plt>

08048838 <gethostbyname@plt>:
 8048838:	ff 25 2c a1 04 08    	jmp    *0x804a12c
 804883e:	68 80 00 00 00       	push   $0x80
 8048843:	e9 e0 fe ff ff       	jmp    8048728 <.plt>

08048848 <exit@plt>:
 8048848:	ff 25 30 a1 04 08    	jmp    *0x804a130
 804884e:	68 88 00 00 00       	push   $0x88
 8048853:	e9 d0 fe ff ff       	jmp    8048728 <.plt>

08048858 <atoi@plt>:
 8048858:	ff 25 34 a1 04 08    	jmp    *0x804a134
 804885e:	68 90 00 00 00       	push   $0x90
 8048863:	e9 c0 fe ff ff       	jmp    8048728 <.plt>

08048868 <sscanf@plt>:
 8048868:	ff 25 38 a1 04 08    	jmp    *0x804a138
 804886e:	68 98 00 00 00       	push   $0x98
 8048873:	e9 b0 fe ff ff       	jmp    8048728 <.plt>

08048878 <htons@plt>:
 8048878:	ff 25 3c a1 04 08    	jmp    *0x804a13c
 804887e:	68 a0 00 00 00       	push   $0xa0
 8048883:	e9 a0 fe ff ff       	jmp    8048728 <.plt>

08048888 <connect@plt>:
 8048888:	ff 25 40 a1 04 08    	jmp    *0x804a140
 804888e:	68 a8 00 00 00       	push   $0xa8
 8048893:	e9 90 fe ff ff       	jmp    8048728 <.plt>

08048898 <fopen@plt>:
 8048898:	ff 25 44 a1 04 08    	jmp    *0x804a144
 804889e:	68 b0 00 00 00       	push   $0xb0
 80488a3:	e9 80 fe ff ff       	jmp    8048728 <.plt>

080488a8 <dup@plt>:
 80488a8:	ff 25 48 a1 04 08    	jmp    *0x804a148
 80488ae:	68 b8 00 00 00       	push   $0xb8
 80488b3:	e9 70 fe ff ff       	jmp    8048728 <.plt>

080488b8 <sprintf@plt>:
 80488b8:	ff 25 4c a1 04 08    	jmp    *0x804a14c
 80488be:	68 c0 00 00 00       	push   $0xc0
 80488c3:	e9 60 fe ff ff       	jmp    8048728 <.plt>

080488c8 <fwrite@plt>:
 80488c8:	ff 25 50 a1 04 08    	jmp    *0x804a150
 80488ce:	68 c8 00 00 00       	push   $0xc8
 80488d3:	e9 50 fe ff ff       	jmp    8048728 <.plt>

080488d8 <socket@plt>:
 80488d8:	ff 25 54 a1 04 08    	jmp    *0x804a154
 80488de:	68 d0 00 00 00       	push   $0xd0
 80488e3:	e9 40 fe ff ff       	jmp    8048728 <.plt>

080488e8 <__ctype_b_loc@plt>:
 80488e8:	ff 25 58 a1 04 08    	jmp    *0x804a158
 80488ee:	68 d8 00 00 00       	push   $0xd8
 80488f3:	e9 30 fe ff ff       	jmp    8048728 <.plt>

080488f8 <cuserid@plt>:
 80488f8:	ff 25 5c a1 04 08    	jmp    *0x804a15c
 80488fe:	68 e0 00 00 00       	push   $0xe0
 8048903:	e9 20 fe ff ff       	jmp    8048728 <.plt>

08048908 <__gmon_start__@plt>:
 8048908:	ff 25 60 a1 04 08    	jmp    *0x804a160
 804890e:	68 e8 00 00 00       	push   $0xe8
 8048913:	e9 10 fe ff ff       	jmp    8048728 <.plt>

08048918 <strcpy@plt>:
 8048918:	ff 25 64 a1 04 08    	jmp    *0x804a164
 804891e:	68 f0 00 00 00       	push   $0xf0
 8048923:	e9 00 fe ff ff       	jmp    8048728 <.plt>

Disassembly of section .text:

08048930 <_start>:
 8048930:	31 ed                	xor    %ebp,%ebp
 8048932:	5e                   	pop    %esi
 8048933:	89 e1                	mov    %esp,%ecx
 8048935:	83 e4 f0             	and    $0xfffffff0,%esp
 8048938:	50                   	push   %eax
 8048939:	54                   	push   %esp
 804893a:	52                   	push   %edx
 804893b:	68 10 97 04 08       	push   $0x8049710
 8048940:	68 60 97 04 08       	push   $0x8049760
 8048945:	51                   	push   %ecx
 8048946:	56                   	push   %esi
 8048947:	68 d4 89 04 08       	push   $0x80489d4
 804894c:	e8 b7 fe ff ff       	call   8048808 <__libc_start_main@plt>
 8048951:	f4                   	hlt    
 8048952:	90                   	nop
 8048953:	90                   	nop

08048954 <call_gmon_start>:
 8048954:	55                   	push   %ebp
 8048955:	89 e5                	mov    %esp,%ebp
 8048957:	53                   	push   %ebx
 8048958:	83 ec 04             	sub    $0x4,%esp
 804895b:	e8 00 00 00 00       	call   8048960 <call_gmon_start+0xc>
 8048960:	5b                   	pop    %ebx
 8048961:	81 c3 80 17 00 00    	add    $0x1780,%ebx
 8048967:	8b 93 fc ff ff ff    	mov    -0x4(%ebx),%edx
 804896d:	85 d2                	test   %edx,%edx
 804896f:	74 05                	je     8048976 <call_gmon_start+0x22>
 8048971:	e8 92 ff ff ff       	call   8048908 <__gmon_start__@plt>
 8048976:	58                   	pop    %eax
 8048977:	5b                   	pop    %ebx
 8048978:	c9                   	leave  
 8048979:	c3                   	ret    
 804897a:	90                   	nop
 804897b:	90                   	nop
 804897c:	90                   	nop
 804897d:	90                   	nop
 804897e:	90                   	nop
 804897f:	90                   	nop

08048980 <__do_global_dtors_aux>:
 8048980:	55                   	push   %ebp
 8048981:	89 e5                	mov    %esp,%ebp
 8048983:	83 ec 08             	sub    $0x8,%esp
 8048986:	80 3d 88 a8 04 08 00 	cmpb   $0x0,0x804a888
 804898d:	74 0c                	je     804899b <__do_global_dtors_aux+0x1b>
 804898f:	eb 1c                	jmp    80489ad <__do_global_dtors_aux+0x2d>
 8048991:	83 c0 04             	add    $0x4,%eax
 8048994:	a3 88 a1 04 08       	mov    %eax,0x804a188
 8048999:	ff d2                	call   *%edx
 804899b:	a1 88 a1 04 08       	mov    0x804a188,%eax
 80489a0:	8b 10                	mov    (%eax),%edx
 80489a2:	85 d2                	test   %edx,%edx
 80489a4:	75 eb                	jne    8048991 <__do_global_dtors_aux+0x11>
 80489a6:	c6 05 88 a8 04 08 01 	movb   $0x1,0x804a888
 80489ad:	c9                   	leave  
 80489ae:	c3                   	ret    
 80489af:	90                   	nop

080489b0 <frame_dummy>:
 80489b0:	55                   	push   %ebp
 80489b1:	89 e5                	mov    %esp,%ebp
 80489b3:	83 ec 08             	sub    $0x8,%esp
 80489b6:	a1 10 a0 04 08       	mov    0x804a010,%eax
 80489bb:	85 c0                	test   %eax,%eax
 80489bd:	74 12                	je     80489d1 <frame_dummy+0x21>
 80489bf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489c4:	85 c0                	test   %eax,%eax
 80489c6:	74 09                	je     80489d1 <frame_dummy+0x21>
 80489c8:	c7 04 24 10 a0 04 08 	movl   $0x804a010,(%esp)
 80489cf:	ff d0                	call   *%eax
 80489d1:	c9                   	leave  
 80489d2:	c3                   	ret    
 80489d3:	90                   	nop

080489d4 <main>:
 80489d4:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 80489d8:	83 e4 f0             	and    $0xfffffff0,%esp
 80489db:	ff 71 fc             	push   -0x4(%ecx)
 80489de:	55                   	push   %ebp
 80489df:	89 e5                	mov    %esp,%ebp
 80489e1:	51                   	push   %ecx
 80489e2:	83 ec 24             	sub    $0x24,%esp
 80489e5:	89 4d e8             	mov    %ecx,-0x18(%ebp)
 80489e8:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80489eb:	83 38 01             	cmpl   $0x1,(%eax)
 80489ee:	75 0f                	jne    80489ff <main+0x2b>
 80489f0:	a1 84 a8 04 08       	mov    0x804a884,%eax
 80489f5:	a3 90 a8 04 08       	mov    %eax,0x804a890
 80489fa:	e9 88 00 00 00       	jmp    8048a87 <main+0xb3>
 80489ff:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a02:	83 3a 02             	cmpl   $0x2,(%edx)
 8048a05:	75 5c                	jne    8048a63 <main+0x8f>
 8048a07:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 8048a0a:	8b 41 04             	mov    0x4(%ecx),%eax
 8048a0d:	83 c0 04             	add    $0x4,%eax
 8048a10:	8b 00                	mov    (%eax),%eax
 8048a12:	c7 44 24 04 18 98 04 	movl   $0x8049818,0x4(%esp)
 8048a19:	08 
 8048a1a:	89 04 24             	mov    %eax,(%esp)
 8048a1d:	e8 76 fe ff ff       	call   8048898 <fopen@plt>
 8048a22:	a3 90 a8 04 08       	mov    %eax,0x804a890
 8048a27:	a1 90 a8 04 08       	mov    0x804a890,%eax
 8048a2c:	85 c0                	test   %eax,%eax
 8048a2e:	75 57                	jne    8048a87 <main+0xb3>
 8048a30:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a33:	8b 42 04             	mov    0x4(%edx),%eax
 8048a36:	83 c0 04             	add    $0x4,%eax
 8048a39:	8b 10                	mov    (%eax),%edx
 8048a3b:	8b 4d e8             	mov    -0x18(%ebp),%ecx
 8048a3e:	8b 41 04             	mov    0x4(%ecx),%eax
 8048a41:	8b 00                	mov    (%eax),%eax
 8048a43:	89 54 24 08          	mov    %edx,0x8(%esp)
 8048a47:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a4b:	c7 04 24 1a 98 04 08 	movl   $0x804981a,(%esp)
 8048a52:	e8 c1 fd ff ff       	call   8048818 <printf@plt>
 8048a57:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a5e:	e8 e5 fd ff ff       	call   8048848 <exit@plt>
 8048a63:	8b 55 e8             	mov    -0x18(%ebp),%edx
 8048a66:	8b 42 04             	mov    0x4(%edx),%eax
 8048a69:	8b 00                	mov    (%eax),%eax
 8048a6b:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048a6f:	c7 04 24 37 98 04 08 	movl   $0x8049837,(%esp)
 8048a76:	e8 9d fd ff ff       	call   8048818 <printf@plt>
 8048a7b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a82:	e8 c1 fd ff ff       	call   8048848 <exit@plt>
 8048a87:	e8 8b 07 00 00       	call   8049217 <initialize_bomb>
 8048a8c:	c7 04 24 54 98 04 08 	movl   $0x8049854,(%esp)
 8048a93:	e8 30 fd ff ff       	call   80487c8 <puts@plt>
 8048a98:	c7 04 24 90 98 04 08 	movl   $0x8049890,(%esp)
 8048a9f:	e8 24 fd ff ff       	call   80487c8 <puts@plt>
 8048aa4:	e8 2d 08 00 00       	call   80492d6 <read_line>
 8048aa9:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048aac:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048aaf:	89 04 24             	mov    %eax,(%esp)
 8048ab2:	e8 c9 00 00 00       	call   8048b80 <phase_1>
 8048ab7:	e8 d0 0b 00 00       	call   804968c <phase_defused>
 8048abc:	c7 04 24 bc 98 04 08 	movl   $0x80498bc,(%esp)
 8048ac3:	e8 00 fd ff ff       	call   80487c8 <puts@plt>
 8048ac8:	e8 09 08 00 00       	call   80492d6 <read_line>
 8048acd:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048ad0:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048ad3:	89 04 24             	mov    %eax,(%esp)
 8048ad6:	e8 c9 00 00 00       	call   8048ba4 <phase_2>
 8048adb:	e8 ac 0b 00 00       	call   804968c <phase_defused>
 8048ae0:	c7 04 24 e5 98 04 08 	movl   $0x80498e5,(%esp)
 8048ae7:	e8 dc fc ff ff       	call   80487c8 <puts@plt>
 8048aec:	e8 e5 07 00 00       	call   80492d6 <read_line>
 8048af1:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048af4:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048af7:	89 04 24             	mov    %eax,(%esp)
 8048afa:	e8 fd 00 00 00       	call   8048bfc <phase_3>
 8048aff:	e8 88 0b 00 00       	call   804968c <phase_defused>
 8048b04:	c7 04 24 03 99 04 08 	movl   $0x8049903,(%esp)
 8048b0b:	e8 b8 fc ff ff       	call   80487c8 <puts@plt>
 8048b10:	e8 c1 07 00 00       	call   80492d6 <read_line>
 8048b15:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b18:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b1b:	89 04 24             	mov    %eax,(%esp)
 8048b1e:	e8 bf 01 00 00       	call   8048ce2 <phase_4>
 8048b23:	e8 64 0b 00 00       	call   804968c <phase_defused>
 8048b28:	c7 04 24 14 99 04 08 	movl   $0x8049914,(%esp)
 8048b2f:	e8 94 fc ff ff       	call   80487c8 <puts@plt>
 8048b34:	e8 9d 07 00 00       	call   80492d6 <read_line>
 8048b39:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b3c:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b3f:	89 04 24             	mov    %eax,(%esp)
 8048b42:	e8 ee 01 00 00       	call   8048d35 <phase_5>
 8048b47:	e8 40 0b 00 00       	call   804968c <phase_defused>
 8048b4c:	c7 04 24 38 99 04 08 	movl   $0x8049938,(%esp)
 8048b53:	e8 70 fc ff ff       	call   80487c8 <puts@plt>
 8048b58:	e8 79 07 00 00       	call   80492d6 <read_line>
 8048b5d:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048b60:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048b63:	89 04 24             	mov    %eax,(%esp)
 8048b66:	e8 e5 02 00 00       	call   8048e50 <phase_6>
 8048b6b:	e8 1c 0b 00 00       	call   804968c <phase_defused>
 8048b70:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b75:	83 c4 24             	add    $0x24,%esp
 8048b78:	59                   	pop    %ecx
 8048b79:	5d                   	pop    %ebp
 8048b7a:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8048b7d:	c3                   	ret    
 8048b7e:	90                   	nop
 8048b7f:	90                   	nop

08048b80 <phase_1>:
 8048b80:	55                   	push   %ebp
 8048b81:	89 e5                	mov    %esp,%ebp
 8048b83:	83 ec 08             	sub    $0x8,%esp
 8048b86:	c7 44 24 04 58 99 04 	movl   $0x8049958,0x4(%esp)
 8048b8d:	08 
 8048b8e:	8b 45 08             	mov    0x8(%ebp),%eax
 8048b91:	89 04 24             	mov    %eax,(%esp)
 8048b94:	e8 02 05 00 00       	call   804909b <strings_not_equal>
 8048b99:	85 c0                	test   %eax,%eax
 8048b9b:	74 05                	je     8048ba2 <phase_1+0x22>
 8048b9d:	e8 c0 0a 00 00       	call   8049662 <explode_bomb>
 8048ba2:	c9                   	leave  
 8048ba3:	c3                   	ret    

08048ba4 <phase_2>:
 8048ba4:	55                   	push   %ebp
 8048ba5:	89 e5                	mov    %esp,%ebp
 8048ba7:	83 ec 28             	sub    $0x28,%esp
 8048baa:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 8048bad:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048bb1:	8b 45 08             	mov    0x8(%ebp),%eax
 8048bb4:	89 04 24             	mov    %eax,(%esp)
 8048bb7:	e8 4c 04 00 00       	call   8049008 <read_six_numbers>
 8048bbc:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 8048bbf:	83 f8 01             	cmp    $0x1,%eax
 8048bc2:	74 05                	je     8048bc9 <phase_2+0x25>
 8048bc4:	e8 99 0a 00 00       	call   8049662 <explode_bomb>
 8048bc9:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 8048bd0:	eb 22                	jmp    8048bf4 <phase_2+0x50>
 8048bd2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bd5:	8b 4c 85 e4          	mov    -0x1c(%ebp,%eax,4),%ecx
 8048bd9:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048bdc:	48                   	dec    %eax
 8048bdd:	8b 54 85 e4          	mov    -0x1c(%ebp,%eax,4),%edx
 8048be1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048be4:	40                   	inc    %eax
 8048be5:	0f af c2             	imul   %edx,%eax
 8048be8:	39 c1                	cmp    %eax,%ecx
 8048bea:	74 05                	je     8048bf1 <phase_2+0x4d>
 8048bec:	e8 71 0a 00 00       	call   8049662 <explode_bomb>
 8048bf1:	ff 45 fc             	incl   -0x4(%ebp)
 8048bf4:	83 7d fc 05          	cmpl   $0x5,-0x4(%ebp)
 8048bf8:	7e d8                	jle    8048bd2 <phase_2+0x2e>
 8048bfa:	c9                   	leave  
 8048bfb:	c3                   	ret    

08048bfc <phase_3>:
 8048bfc:	55                   	push   %ebp
 8048bfd:	89 e5                	mov    %esp,%ebp
 8048bff:	83 ec 28             	sub    $0x28,%esp
 8048c02:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8048c09:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048c10:	8d 45 f0             	lea    -0x10(%ebp),%eax
 8048c13:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048c17:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048c1a:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048c1e:	c7 44 24 04 8b 99 04 	movl   $0x804998b,0x4(%esp)
 8048c25:	08 
 8048c26:	8b 45 08             	mov    0x8(%ebp),%eax
 8048c29:	89 04 24             	mov    %eax,(%esp)
 8048c2c:	e8 37 fc ff ff       	call   8048868 <sscanf@plt>
 8048c31:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048c34:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
 8048c38:	7f 05                	jg     8048c3f <phase_3+0x43>
 8048c3a:	e8 23 0a 00 00       	call   8049662 <explode_bomb>
 8048c3f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048c42:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048c45:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
 8048c49:	77 54                	ja     8048c9f <phase_3+0xa3>
 8048c4b:	8b 55 ec             	mov    -0x14(%ebp),%edx
 8048c4e:	8b 04 95 94 99 04 08 	mov    0x8049994(,%edx,4),%eax
 8048c55:	ff e0                	jmp    *%eax
 8048c57:	c7 45 f8 4b 03 00 00 	movl   $0x34b,-0x8(%ebp)
 8048c5e:	eb 44                	jmp    8048ca4 <phase_3+0xa8>
 8048c60:	c7 45 f8 75 02 00 00 	movl   $0x275,-0x8(%ebp)
 8048c67:	eb 3b                	jmp    8048ca4 <phase_3+0xa8>
 8048c69:	c7 45 f8 ac 01 00 00 	movl   $0x1ac,-0x8(%ebp)
 8048c70:	eb 32                	jmp    8048ca4 <phase_3+0xa8>
 8048c72:	c7 45 f8 68 00 00 00 	movl   $0x68,-0x8(%ebp)
 8048c79:	eb 29                	jmp    8048ca4 <phase_3+0xa8>
 8048c7b:	c7 45 f8 2b 01 00 00 	movl   $0x12b,-0x8(%ebp)
 8048c82:	eb 20                	jmp    8048ca4 <phase_3+0xa8>
 8048c84:	c7 45 f8 5d 03 00 00 	movl   $0x35d,-0x8(%ebp)
 8048c8b:	eb 17                	jmp    8048ca4 <phase_3+0xa8>
 8048c8d:	c7 45 f8 3c 03 00 00 	movl   $0x33c,-0x8(%ebp)
 8048c94:	eb 0e                	jmp    8048ca4 <phase_3+0xa8>
 8048c96:	c7 45 f8 86 03 00 00 	movl   $0x386,-0x8(%ebp)
 8048c9d:	eb 05                	jmp    8048ca4 <phase_3+0xa8>
 8048c9f:	e8 be 09 00 00       	call   8049662 <explode_bomb>
 8048ca4:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048ca7:	39 45 f8             	cmp    %eax,-0x8(%ebp)
 8048caa:	74 05                	je     8048cb1 <phase_3+0xb5>
 8048cac:	e8 b1 09 00 00       	call   8049662 <explode_bomb>
 8048cb1:	c9                   	leave  
 8048cb2:	c3                   	ret    

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

08048ce2 <phase_4>:
 8048ce2:	55                   	push   %ebp
 8048ce3:	89 e5                	mov    %esp,%ebp
 8048ce5:	83 ec 28             	sub    $0x28,%esp
 8048ce8:	8d 45 f4             	lea    -0xc(%ebp),%eax
 8048ceb:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cef:	c7 44 24 04 b4 99 04 	movl   $0x80499b4,0x4(%esp)
 8048cf6:	08 
 8048cf7:	8b 45 08             	mov    0x8(%ebp),%eax
 8048cfa:	89 04 24             	mov    %eax,(%esp)
 8048cfd:	e8 66 fb ff ff       	call   8048868 <sscanf@plt>
 8048d02:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048d05:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
 8048d09:	75 07                	jne    8048d12 <phase_4+0x30>
 8048d0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d0e:	85 c0                	test   %eax,%eax
 8048d10:	7f 05                	jg     8048d17 <phase_4+0x35>
 8048d12:	e8 4b 09 00 00       	call   8049662 <explode_bomb>
 8048d17:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048d1a:	89 04 24             	mov    %eax,(%esp)
 8048d1d:	e8 91 ff ff ff       	call   8048cb3 <func4>
 8048d22:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048d25:	81 7d f8 d0 02 00 00 	cmpl   $0x2d0,-0x8(%ebp)
 8048d2c:	74 05                	je     8048d33 <phase_4+0x51>
 8048d2e:	e8 2f 09 00 00       	call   8049662 <explode_bomb>
 8048d33:	c9                   	leave  
 8048d34:	c3                   	ret    

08048d35 <phase_5>:
 8048d35:	55                   	push   %ebp
 8048d36:	89 e5                	mov    %esp,%ebp
 8048d38:	83 ec 38             	sub    $0x38,%esp
 8048d3b:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8048d3e:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048d42:	8d 45 ec             	lea    -0x14(%ebp),%eax
 8048d45:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048d49:	c7 44 24 04 8b 99 04 	movl   $0x804998b,0x4(%esp)
 8048d50:	08 
 8048d51:	8b 45 08             	mov    0x8(%ebp),%eax
 8048d54:	89 04 24             	mov    %eax,(%esp)
 8048d57:	e8 0c fb ff ff       	call   8048868 <sscanf@plt>
 8048d5c:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048d5f:	83 7d fc 01          	cmpl   $0x1,-0x4(%ebp)
 8048d63:	7f 05                	jg     8048d6a <phase_5+0x35>
 8048d65:	e8 f8 08 00 00       	call   8049662 <explode_bomb>
 8048d6a:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d6d:	83 e0 0f             	and    $0xf,%eax
 8048d70:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8048d73:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048d76:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048d79:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8048d80:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 
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
 8048db5:	e8 a8 08 00 00       	call   8049662 <explode_bomb>
 8048dba:	c9                   	leave  
 8048dbb:	c3                   	ret    

08048dbc <fun6>:
 8048dbc:	55                   	push   %ebp
 8048dbd:	89 e5                	mov    %esp,%ebp
 8048dbf:	83 ec 10             	sub    $0x10,%esp
 8048dc2:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dc5:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dc8:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dcb:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048dce:	8b 45 08             	mov    0x8(%ebp),%eax
 8048dd1:	8b 40 08             	mov    0x8(%eax),%eax
 8048dd4:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048dd7:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048dda:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048de1:	eb 62                	jmp    8048e45 <fun6+0x89>
 8048de3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048de6:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048de9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048dec:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048def:	eb 0f                	jmp    8048e00 <fun6+0x44>
 8048df1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048df4:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048df7:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048dfa:	8b 40 08             	mov    0x8(%eax),%eax
 8048dfd:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e00:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8048e04:	74 0e                	je     8048e14 <fun6+0x58>
 8048e06:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e09:	8b 10                	mov    (%eax),%edx
 8048e0b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e0e:	8b 00                	mov    (%eax),%eax
 8048e10:	39 c2                	cmp    %eax,%edx
 8048e12:	7f dd                	jg     8048df1 <fun6+0x35>
 8048e14:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e17:	3b 45 fc             	cmp    -0x4(%ebp),%eax
 8048e1a:	74 0b                	je     8048e27 <fun6+0x6b>
 8048e1c:	8b 55 f8             	mov    -0x8(%ebp),%edx
 8048e1f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e22:	89 42 08             	mov    %eax,0x8(%edx)
 8048e25:	eb 06                	jmp    8048e2d <fun6+0x71>
 8048e27:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e2a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048e2d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048e30:	8b 40 08             	mov    0x8(%eax),%eax
 8048e33:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e36:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8048e39:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e3c:	89 42 08             	mov    %eax,0x8(%edx)
 8048e3f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e42:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048e45:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8048e49:	75 98                	jne    8048de3 <fun6+0x27>
 8048e4b:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048e4e:	c9                   	leave  
 8048e4f:	c3                   	ret    

08048e50 <phase_6>:
 8048e50:	55                   	push   %ebp
 8048e51:	89 e5                	mov    %esp,%ebp
 8048e53:	83 ec 18             	sub    $0x18,%esp
 8048e56:	c7 45 f8 6c a6 04 08 	movl   $0x804a66c,-0x8(%ebp)
 8048e5d:	8b 45 08             	mov    0x8(%ebp),%eax
 8048e60:	89 04 24             	mov    %eax,(%esp)
 8048e63:	e8 f0 f9 ff ff       	call   8048858 <atoi@plt>
 8048e68:	89 c2                	mov    %eax,%edx
 8048e6a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e6d:	89 10                	mov    %edx,(%eax)
 8048e6f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e72:	89 04 24             	mov    %eax,(%esp)
 8048e75:	e8 42 ff ff ff       	call   8048dbc <fun6>
 8048e7a:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048e7d:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048e80:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e83:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8048e8a:	eb 0c                	jmp    8048e98 <phase_6+0x48>
 8048e8c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048e8f:	8b 40 08             	mov    0x8(%eax),%eax
 8048e92:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048e95:	ff 45 f4             	incl   -0xc(%ebp)
 8048e98:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8048e9c:	7e ee                	jle    8048e8c <phase_6+0x3c>
 8048e9e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048ea1:	8b 10                	mov    (%eax),%edx
 8048ea3:	a1 6c a6 04 08       	mov    0x804a66c,%eax
 8048ea8:	39 c2                	cmp    %eax,%edx
 8048eaa:	74 05                	je     8048eb1 <phase_6+0x61>
 8048eac:	e8 b1 07 00 00       	call   8049662 <explode_bomb>
 8048eb1:	c9                   	leave  
 8048eb2:	c3                   	ret    

08048eb3 <fun7>:
 8048eb3:	55                   	push   %ebp
 8048eb4:	89 e5                	mov    %esp,%ebp
 8048eb6:	83 ec 0c             	sub    $0xc,%esp
 8048eb9:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8048ebd:	75 09                	jne    8048ec8 <fun7+0x15>
 8048ebf:	c7 45 fc ff ff ff ff 	movl   $0xffffffff,-0x4(%ebp)
 8048ec6:	eb 54                	jmp    8048f1c <fun7+0x69>
 8048ec8:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ecb:	8b 00                	mov    (%eax),%eax
 8048ecd:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048ed0:	7e 1c                	jle    8048eee <fun7+0x3b>
 8048ed2:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ed5:	8b 50 04             	mov    0x4(%eax),%edx
 8048ed8:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048edb:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048edf:	89 14 24             	mov    %edx,(%esp)
 8048ee2:	e8 cc ff ff ff       	call   8048eb3 <fun7>
 8048ee7:	01 c0                	add    %eax,%eax
 8048ee9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048eec:	eb 2e                	jmp    8048f1c <fun7+0x69>
 8048eee:	8b 45 08             	mov    0x8(%ebp),%eax
 8048ef1:	8b 00                	mov    (%eax),%eax
 8048ef3:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048ef6:	75 09                	jne    8048f01 <fun7+0x4e>
 8048ef8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8048eff:	eb 1b                	jmp    8048f1c <fun7+0x69>
 8048f01:	8b 45 08             	mov    0x8(%ebp),%eax
 8048f04:	8b 50 08             	mov    0x8(%eax),%edx
 8048f07:	8b 45 0c             	mov    0xc(%ebp),%eax
 8048f0a:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f0e:	89 14 24             	mov    %edx,(%esp)
 8048f11:	e8 9d ff ff ff       	call   8048eb3 <fun7>
 8048f16:	01 c0                	add    %eax,%eax
 8048f18:	40                   	inc    %eax
 8048f19:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f1c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8048f1f:	c9                   	leave  
 8048f20:	c3                   	ret    

08048f21 <secret_phase>:
 8048f21:	55                   	push   %ebp
 8048f22:	89 e5                	mov    %esp,%ebp
 8048f24:	83 ec 18             	sub    $0x18,%esp
 8048f27:	e8 aa 03 00 00       	call   80492d6 <read_line>
 8048f2c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8048f2f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048f32:	89 04 24             	mov    %eax,(%esp)
 8048f35:	e8 1e f9 ff ff       	call   8048858 <atoi@plt>
 8048f3a:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8048f3d:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8048f41:	7e 09                	jle    8048f4c <secret_phase+0x2b>
 8048f43:	81 7d f8 e9 03 00 00 	cmpl   $0x3e9,-0x8(%ebp)
 8048f4a:	7e 05                	jle    8048f51 <secret_phase+0x30>
 8048f4c:	e8 11 07 00 00       	call   8049662 <explode_bomb>
 8048f51:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8048f54:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048f58:	c7 04 24 20 a7 04 08 	movl   $0x804a720,(%esp)
 8048f5f:	e8 4f ff ff ff       	call   8048eb3 <fun7>
 8048f64:	89 45 fc             	mov    %eax,-0x4(%ebp)
 8048f67:	83 7d fc 07          	cmpl   $0x7,-0x4(%ebp)
 8048f6b:	74 05                	je     8048f72 <secret_phase+0x51>
 8048f6d:	e8 f0 06 00 00       	call   8049662 <explode_bomb>
 8048f72:	c7 04 24 b8 99 04 08 	movl   $0x80499b8,(%esp)
 8048f79:	e8 4a f8 ff ff       	call   80487c8 <puts@plt>
 8048f7e:	e8 09 07 00 00       	call   804968c <phase_defused>
 8048f83:	c9                   	leave  
 8048f84:	c3                   	ret    
 8048f85:	90                   	nop
 8048f86:	90                   	nop
 8048f87:	90                   	nop

08048f88 <sig_handler>:
 8048f88:	55                   	push   %ebp
 8048f89:	89 e5                	mov    %esp,%ebp
 8048f8b:	83 ec 08             	sub    $0x8,%esp
 8048f8e:	c7 04 24 30 9c 04 08 	movl   $0x8049c30,(%esp)
 8048f95:	e8 2e f8 ff ff       	call   80487c8 <puts@plt>
 8048f9a:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048fa1:	e8 42 f8 ff ff       	call   80487e8 <sleep@plt>
 8048fa6:	c7 04 24 68 9c 04 08 	movl   $0x8049c68,(%esp)
 8048fad:	e8 66 f8 ff ff       	call   8048818 <printf@plt>
 8048fb2:	a1 80 a8 04 08       	mov    0x804a880,%eax
 8048fb7:	89 04 24             	mov    %eax,(%esp)
 8048fba:	e8 c9 f7 ff ff       	call   8048788 <fflush@plt>
 8048fbf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fc6:	e8 1d f8 ff ff       	call   80487e8 <sleep@plt>
 8048fcb:	c7 04 24 70 9c 04 08 	movl   $0x8049c70,(%esp)
 8048fd2:	e8 f1 f7 ff ff       	call   80487c8 <puts@plt>
 8048fd7:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048fde:	e8 65 f8 ff ff       	call   8048848 <exit@plt>

08048fe3 <invalid_phase>:
 8048fe3:	55                   	push   %ebp
 8048fe4:	89 e5                	mov    %esp,%ebp
 8048fe6:	83 ec 08             	sub    $0x8,%esp
 8048fe9:	8b 45 08             	mov    0x8(%ebp),%eax
 8048fec:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048ff0:	c7 04 24 78 9c 04 08 	movl   $0x8049c78,(%esp)
 8048ff7:	e8 1c f8 ff ff       	call   8048818 <printf@plt>
 8048ffc:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049003:	e8 40 f8 ff ff       	call   8048848 <exit@plt>

08049008 <read_six_numbers>:
 8049008:	55                   	push   %ebp
 8049009:	89 e5                	mov    %esp,%ebp
 804900b:	56                   	push   %esi
 804900c:	53                   	push   %ebx
 804900d:	83 ec 30             	sub    $0x30,%esp
 8049010:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049013:	83 c0 14             	add    $0x14,%eax
 8049016:	8b 55 0c             	mov    0xc(%ebp),%edx
 8049019:	83 c2 10             	add    $0x10,%edx
 804901c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 804901f:	83 c1 0c             	add    $0xc,%ecx
 8049022:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 8049025:	83 c3 08             	add    $0x8,%ebx
 8049028:	8b 75 0c             	mov    0xc(%ebp),%esi
 804902b:	83 c6 04             	add    $0x4,%esi
 804902e:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049032:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049036:	89 4c 24 14          	mov    %ecx,0x14(%esp)
 804903a:	89 5c 24 10          	mov    %ebx,0x10(%esp)
 804903e:	89 74 24 0c          	mov    %esi,0xc(%esp)
 8049042:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049045:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049049:	c7 44 24 04 89 9c 04 	movl   $0x8049c89,0x4(%esp)
 8049050:	08 
 8049051:	8b 45 08             	mov    0x8(%ebp),%eax
 8049054:	89 04 24             	mov    %eax,(%esp)
 8049057:	e8 0c f8 ff ff       	call   8048868 <sscanf@plt>
 804905c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804905f:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049063:	7f 05                	jg     804906a <read_six_numbers+0x62>
 8049065:	e8 f8 05 00 00       	call   8049662 <explode_bomb>
 804906a:	83 c4 30             	add    $0x30,%esp
 804906d:	5b                   	pop    %ebx
 804906e:	5e                   	pop    %esi
 804906f:	5d                   	pop    %ebp
 8049070:	c3                   	ret    

08049071 <string_length>:
 8049071:	55                   	push   %ebp
 8049072:	89 e5                	mov    %esp,%ebp
 8049074:	83 ec 10             	sub    $0x10,%esp
 8049077:	8b 45 08             	mov    0x8(%ebp),%eax
 804907a:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804907d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%ebp)
 8049084:	eb 06                	jmp    804908c <string_length+0x1b>
 8049086:	ff 45 fc             	incl   -0x4(%ebp)
 8049089:	ff 45 f8             	incl   -0x8(%ebp)
 804908c:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804908f:	0f b6 00             	movzbl (%eax),%eax
 8049092:	84 c0                	test   %al,%al
 8049094:	75 f0                	jne    8049086 <string_length+0x15>
 8049096:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049099:	c9                   	leave  
 804909a:	c3                   	ret    

0804909b <strings_not_equal>:
 804909b:	55                   	push   %ebp
 804909c:	89 e5                	mov    %esp,%ebp
 804909e:	53                   	push   %ebx
 804909f:	83 ec 18             	sub    $0x18,%esp
 80490a2:	8b 45 08             	mov    0x8(%ebp),%eax
 80490a5:	89 04 24             	mov    %eax,(%esp)
 80490a8:	e8 c4 ff ff ff       	call   8049071 <string_length>
 80490ad:	89 c3                	mov    %eax,%ebx
 80490af:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490b2:	89 04 24             	mov    %eax,(%esp)
 80490b5:	e8 b7 ff ff ff       	call   8049071 <string_length>
 80490ba:	39 c3                	cmp    %eax,%ebx
 80490bc:	74 09                	je     80490c7 <strings_not_equal+0x2c>
 80490be:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80490c5:	eb 3e                	jmp    8049105 <strings_not_equal+0x6a>
 80490c7:	8b 45 08             	mov    0x8(%ebp),%eax
 80490ca:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80490cd:	8b 45 0c             	mov    0xc(%ebp),%eax
 80490d0:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80490d3:	eb 1f                	jmp    80490f4 <strings_not_equal+0x59>
 80490d5:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490d8:	0f b6 10             	movzbl (%eax),%edx
 80490db:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80490de:	0f b6 00             	movzbl (%eax),%eax
 80490e1:	38 c2                	cmp    %al,%dl
 80490e3:	74 09                	je     80490ee <strings_not_equal+0x53>
 80490e5:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%ebp)
 80490ec:	eb 17                	jmp    8049105 <strings_not_equal+0x6a>
 80490ee:	ff 45 f4             	incl   -0xc(%ebp)
 80490f1:	ff 45 f8             	incl   -0x8(%ebp)
 80490f4:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80490f7:	0f b6 00             	movzbl (%eax),%eax
 80490fa:	84 c0                	test   %al,%al
 80490fc:	75 d7                	jne    80490d5 <strings_not_equal+0x3a>
 80490fe:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%ebp)
 8049105:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049108:	83 c4 18             	add    $0x18,%esp
 804910b:	5b                   	pop    %ebx
 804910c:	5d                   	pop    %ebp
 804910d:	c3                   	ret    

0804910e <open_clientfd>:
 804910e:	55                   	push   %ebp
 804910f:	89 e5                	mov    %esp,%ebp
 8049111:	83 ec 38             	sub    $0x38,%esp
 8049114:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 804911b:	00 
 804911c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049123:	00 
 8049124:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804912b:	e8 a8 f7 ff ff       	call   80488d8 <socket@plt>
 8049130:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049133:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 8049137:	79 18                	jns    8049151 <open_clientfd+0x43>
 8049139:	c7 04 24 9b 9c 04 08 	movl   $0x8049c9b,(%esp)
 8049140:	e8 83 f6 ff ff       	call   80487c8 <puts@plt>
 8049145:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804914c:	e8 f7 f6 ff ff       	call   8048848 <exit@plt>
 8049151:	8b 45 08             	mov    0x8(%ebp),%eax
 8049154:	89 04 24             	mov    %eax,(%esp)
 8049157:	e8 dc f6 ff ff       	call   8048838 <gethostbyname@plt>
 804915c:	89 45 fc             	mov    %eax,-0x4(%ebp)
 804915f:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 8049163:	75 18                	jne    804917d <open_clientfd+0x6f>
 8049165:	c7 04 24 a9 9c 04 08 	movl   $0x8049ca9,(%esp)
 804916c:	e8 57 f6 ff ff       	call   80487c8 <puts@plt>
 8049171:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049178:	e8 cb f6 ff ff       	call   8048848 <exit@plt>
 804917d:	8d 45 e8             	lea    -0x18(%ebp),%eax
 8049180:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
 8049186:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
 804918d:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049194:	c7 40 0c 00 00 00 00 	movl   $0x0,0xc(%eax)
 804919b:	66 c7 45 e8 02 00    	movw   $0x2,-0x18(%ebp)
 80491a1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80491a4:	8b 40 0c             	mov    0xc(%eax),%eax
 80491a7:	89 c1                	mov    %eax,%ecx
 80491a9:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80491ac:	8d 50 04             	lea    0x4(%eax),%edx
 80491af:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80491b2:	8b 40 10             	mov    0x10(%eax),%eax
 80491b5:	8b 00                	mov    (%eax),%eax
 80491b7:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80491bb:	89 54 24 04          	mov    %edx,0x4(%esp)
 80491bf:	89 04 24             	mov    %eax,(%esp)
 80491c2:	e8 d1 f5 ff ff       	call   8048798 <bcopy@plt>
 80491c7:	8b 45 0c             	mov    0xc(%ebp),%eax
 80491ca:	0f b7 c0             	movzwl %ax,%eax
 80491cd:	89 04 24             	mov    %eax,(%esp)
 80491d0:	e8 a3 f6 ff ff       	call   8048878 <htons@plt>
 80491d5:	0f b7 c0             	movzwl %ax,%eax
 80491d8:	66 89 45 ea          	mov    %ax,-0x16(%ebp)
 80491dc:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80491df:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 80491e6:	00 
 80491e7:	89 44 24 04          	mov    %eax,0x4(%esp)
 80491eb:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80491ee:	89 04 24             	mov    %eax,(%esp)
 80491f1:	e8 92 f6 ff ff       	call   8048888 <connect@plt>
 80491f6:	85 c0                	test   %eax,%eax
 80491f8:	79 18                	jns    8049212 <open_clientfd+0x104>
 80491fa:	c7 04 24 b7 9c 04 08 	movl   $0x8049cb7,(%esp)
 8049201:	e8 c2 f5 ff ff       	call   80487c8 <puts@plt>
 8049206:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804920d:	e8 36 f6 ff ff       	call   8048848 <exit@plt>
 8049212:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049215:	c9                   	leave  
 8049216:	c3                   	ret    

08049217 <initialize_bomb>:
 8049217:	55                   	push   %ebp
 8049218:	89 e5                	mov    %esp,%ebp
 804921a:	83 ec 08             	sub    $0x8,%esp
 804921d:	c7 44 24 04 88 8f 04 	movl   $0x8048f88,0x4(%esp)
 8049224:	08 
 8049225:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804922c:	e8 47 f5 ff ff       	call   8048778 <signal@plt>
 8049231:	c9                   	leave  
 8049232:	c3                   	ret    

08049233 <blank_line>:
 8049233:	55                   	push   %ebp
 8049234:	89 e5                	mov    %esp,%ebp
 8049236:	83 ec 08             	sub    $0x8,%esp
 8049239:	eb 32                	jmp    804926d <blank_line+0x3a>
 804923b:	e8 a8 f6 ff ff       	call   80488e8 <__ctype_b_loc@plt>
 8049240:	8b 10                	mov    (%eax),%edx
 8049242:	8b 45 08             	mov    0x8(%ebp),%eax
 8049245:	0f b6 00             	movzbl (%eax),%eax
 8049248:	0f be c0             	movsbl %al,%eax
 804924b:	01 c0                	add    %eax,%eax
 804924d:	8d 04 02             	lea    (%edx,%eax,1),%eax
 8049250:	0f b7 00             	movzwl (%eax),%eax
 8049253:	25 00 20 00 00       	and    $0x2000,%eax
 8049258:	85 c0                	test   %eax,%eax
 804925a:	0f 94 c0             	sete   %al
 804925d:	ff 45 08             	incl   0x8(%ebp)
 8049260:	84 c0                	test   %al,%al
 8049262:	74 09                	je     804926d <blank_line+0x3a>
 8049264:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 804926b:	eb 11                	jmp    804927e <blank_line+0x4b>
 804926d:	8b 45 08             	mov    0x8(%ebp),%eax
 8049270:	0f b6 00             	movzbl (%eax),%eax
 8049273:	84 c0                	test   %al,%al
 8049275:	75 c4                	jne    804923b <blank_line+0x8>
 8049277:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%ebp)
 804927e:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049281:	c9                   	leave  
 8049282:	c3                   	ret    

08049283 <skip>:
 8049283:	55                   	push   %ebp
 8049284:	89 e5                	mov    %esp,%ebp
 8049286:	83 ec 28             	sub    $0x28,%esp
 8049289:	8b 0d 90 a8 04 08    	mov    0x804a890,%ecx
 804928f:	a1 8c a8 04 08       	mov    0x804a88c,%eax
 8049294:	89 c2                	mov    %eax,%edx
 8049296:	89 d0                	mov    %edx,%eax
 8049298:	c1 e0 02             	shl    $0x2,%eax
 804929b:	01 d0                	add    %edx,%eax
 804929d:	c1 e0 04             	shl    $0x4,%eax
 80492a0:	05 a0 a8 04 08       	add    $0x804a8a0,%eax
 80492a5:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 80492a9:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80492b0:	00 
 80492b1:	89 04 24             	mov    %eax,(%esp)
 80492b4:	e8 1f f5 ff ff       	call   80487d8 <fgets@plt>
 80492b9:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80492bc:	83 7d fc 00          	cmpl   $0x0,-0x4(%ebp)
 80492c0:	74 0f                	je     80492d1 <skip+0x4e>
 80492c2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492c5:	89 04 24             	mov    %eax,(%esp)
 80492c8:	e8 66 ff ff ff       	call   8049233 <blank_line>
 80492cd:	85 c0                	test   %eax,%eax
 80492cf:	75 b8                	jne    8049289 <skip+0x6>
 80492d1:	8b 45 fc             	mov    -0x4(%ebp),%eax
 80492d4:	c9                   	leave  
 80492d5:	c3                   	ret    

080492d6 <read_line>:
 80492d6:	55                   	push   %ebp
 80492d7:	89 e5                	mov    %esp,%ebp
 80492d9:	57                   	push   %edi
 80492da:	83 ec 24             	sub    $0x24,%esp
 80492dd:	e8 a1 ff ff ff       	call   8049283 <skip>
 80492e2:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80492e5:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 80492e9:	75 67                	jne    8049352 <read_line+0x7c>
 80492eb:	8b 15 90 a8 04 08    	mov    0x804a890,%edx
 80492f1:	a1 84 a8 04 08       	mov    0x804a884,%eax
 80492f6:	39 c2                	cmp    %eax,%edx
 80492f8:	75 13                	jne    804930d <read_line+0x37>
 80492fa:	c7 04 24 c5 9c 04 08 	movl   $0x8049cc5,(%esp)
 8049301:	e8 c2 f4 ff ff       	call   80487c8 <puts@plt>
 8049306:	e8 57 03 00 00       	call   8049662 <explode_bomb>
 804930b:	eb 45                	jmp    8049352 <read_line+0x7c>
 804930d:	c7 04 24 e3 9c 04 08 	movl   $0x8049ce3,(%esp)
 8049314:	e8 4f f4 ff ff       	call   8048768 <getenv@plt>
 8049319:	85 c0                	test   %eax,%eax
 804931b:	74 0c                	je     8049329 <read_line+0x53>
 804931d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 8049324:	e8 1f f5 ff ff       	call   8048848 <exit@plt>
 8049329:	a1 84 a8 04 08       	mov    0x804a884,%eax
 804932e:	a3 90 a8 04 08       	mov    %eax,0x804a890
 8049333:	e8 4b ff ff ff       	call   8049283 <skip>
 8049338:	89 45 f8             	mov    %eax,-0x8(%ebp)
 804933b:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 804933f:	75 11                	jne    8049352 <read_line+0x7c>
 8049341:	c7 04 24 c5 9c 04 08 	movl   $0x8049cc5,(%esp)
 8049348:	e8 7b f4 ff ff       	call   80487c8 <puts@plt>
 804934d:	e8 10 03 00 00       	call   8049662 <explode_bomb>
 8049352:	a1 8c a8 04 08       	mov    0x804a88c,%eax
 8049357:	89 c2                	mov    %eax,%edx
 8049359:	89 d0                	mov    %edx,%eax
 804935b:	c1 e0 02             	shl    $0x2,%eax
 804935e:	01 d0                	add    %edx,%eax
 8049360:	c1 e0 04             	shl    $0x4,%eax
 8049363:	05 a0 a8 04 08       	add    $0x804a8a0,%eax
 8049368:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 804936d:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049370:	b0 00                	mov    $0x0,%al
 8049372:	fc                   	cld    
 8049373:	8b 7d e8             	mov    -0x18(%ebp),%edi
 8049376:	f2 ae                	repnz scas %es:(%edi),%al
 8049378:	89 c8                	mov    %ecx,%eax
 804937a:	f7 d0                	not    %eax
 804937c:	48                   	dec    %eax
 804937d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049380:	83 7d f4 4f          	cmpl   $0x4f,-0xc(%ebp)
 8049384:	75 11                	jne    8049397 <read_line+0xc1>
 8049386:	c7 04 24 ee 9c 04 08 	movl   $0x8049cee,(%esp)
 804938d:	e8 36 f4 ff ff       	call   80487c8 <puts@plt>
 8049392:	e8 cb 02 00 00       	call   8049662 <explode_bomb>
 8049397:	8b 15 8c a8 04 08    	mov    0x804a88c,%edx
 804939d:	8b 4d f4             	mov    -0xc(%ebp),%ecx
 80493a0:	49                   	dec    %ecx
 80493a1:	89 d0                	mov    %edx,%eax
 80493a3:	c1 e0 02             	shl    $0x2,%eax
 80493a6:	01 d0                	add    %edx,%eax
 80493a8:	c1 e0 04             	shl    $0x4,%eax
 80493ab:	01 c8                	add    %ecx,%eax
 80493ad:	05 a0 a8 04 08       	add    $0x804a8a0,%eax
 80493b2:	c6 00 00             	movb   $0x0,(%eax)
 80493b5:	8b 0d 8c a8 04 08    	mov    0x804a88c,%ecx
 80493bb:	89 ca                	mov    %ecx,%edx
 80493bd:	89 d0                	mov    %edx,%eax
 80493bf:	c1 e0 02             	shl    $0x2,%eax
 80493c2:	01 d0                	add    %edx,%eax
 80493c4:	c1 e0 04             	shl    $0x4,%eax
 80493c7:	05 a0 a8 04 08       	add    $0x804a8a0,%eax
 80493cc:	89 c2                	mov    %eax,%edx
 80493ce:	8d 41 01             	lea    0x1(%ecx),%eax
 80493d1:	a3 8c a8 04 08       	mov    %eax,0x804a88c
 80493d6:	89 d0                	mov    %edx,%eax
 80493d8:	83 c4 24             	add    $0x24,%esp
 80493db:	5f                   	pop    %edi
 80493dc:	5d                   	pop    %ebp
 80493dd:	c3                   	ret    

080493de <send_msg>:
 80493de:	55                   	push   %ebp
 80493df:	89 e5                	mov    %esp,%ebp
 80493e1:	81 ec 88 00 00 00    	sub    $0x88,%esp
 80493e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80493ee:	e8 b5 f4 ff ff       	call   80488a8 <dup@plt>
 80493f3:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80493f6:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%ebp)
 80493fa:	75 18                	jne    8049414 <send_msg+0x36>
 80493fc:	c7 04 24 09 9d 04 08 	movl   $0x8049d09,(%esp)
 8049403:	e8 c0 f3 ff ff       	call   80487c8 <puts@plt>
 8049408:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804940f:	e8 34 f4 ff ff       	call   8048848 <exit@plt>
 8049414:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 804941b:	e8 18 f3 ff ff       	call   8048738 <close@plt>
 8049420:	83 f8 ff             	cmp    $0xffffffff,%eax
 8049423:	75 18                	jne    804943d <send_msg+0x5f>
 8049425:	c7 04 24 1d 9d 04 08 	movl   $0x8049d1d,(%esp)
 804942c:	e8 97 f3 ff ff       	call   80487c8 <puts@plt>
 8049431:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049438:	e8 0b f4 ff ff       	call   8048848 <exit@plt>
 804943d:	e8 16 f3 ff ff       	call   8048758 <tmpfile@plt>
 8049442:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049445:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049449:	75 18                	jne    8049463 <send_msg+0x85>
 804944b:	c7 04 24 30 9d 04 08 	movl   $0x8049d30,(%esp)
 8049452:	e8 71 f3 ff ff       	call   80487c8 <puts@plt>
 8049457:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804945e:	e8 e5 f3 ff ff       	call   8048848 <exit@plt>
 8049463:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049466:	89 44 24 0c          	mov    %eax,0xc(%esp)
 804946a:	c7 44 24 08 1b 00 00 	movl   $0x1b,0x8(%esp)
 8049471:	00 
 8049472:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049479:	00 
 804947a:	c7 04 24 45 9d 04 08 	movl   $0x8049d45,(%esp)
 8049481:	e8 42 f4 ff ff       	call   80488c8 <fwrite@plt>
 8049486:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049489:	89 44 24 04          	mov    %eax,0x4(%esp)
 804948d:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 8049494:	e8 5f f3 ff ff       	call   80487f8 <fputc@plt>
 8049499:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80494a0:	e8 53 f4 ff ff       	call   80488f8 <cuserid@plt>
 80494a5:	89 45 f8             	mov    %eax,-0x8(%ebp)
 80494a8:	83 7d f8 00          	cmpl   $0x0,-0x8(%ebp)
 80494ac:	75 15                	jne    80494c3 <send_msg+0xe5>
 80494ae:	8d 45 a0             	lea    -0x60(%ebp),%eax
 80494b1:	c7 00 6e 6f 62 6f    	movl   $0x6f626f6e,(%eax)
 80494b7:	66 c7 40 04 64 79    	movw   $0x7964,0x4(%eax)
 80494bd:	c6 40 06 00          	movb   $0x0,0x6(%eax)
 80494c1:	eb 12                	jmp    80494d5 <send_msg+0xf7>
 80494c3:	8b 45 f8             	mov    -0x8(%ebp),%eax
 80494c6:	89 44 24 04          	mov    %eax,0x4(%esp)
 80494ca:	8d 45 a0             	lea    -0x60(%ebp),%eax
 80494cd:	89 04 24             	mov    %eax,(%esp)
 80494d0:	e8 43 f4 ff ff       	call   8048918 <strcpy@plt>
 80494d5:	a1 8c a8 04 08       	mov    0x804a88c,%eax
 80494da:	89 45 98             	mov    %eax,-0x68(%ebp)
 80494dd:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80494e1:	74 09                	je     80494ec <send_msg+0x10e>
 80494e3:	c7 45 9c 61 9d 04 08 	movl   $0x8049d61,-0x64(%ebp)
 80494ea:	eb 07                	jmp    80494f3 <send_msg+0x115>
 80494ec:	c7 45 9c 69 9d 04 08 	movl   $0x8049d69,-0x64(%ebp)
 80494f3:	a1 a0 a1 04 08       	mov    0x804a1a0,%eax
 80494f8:	8b 55 98             	mov    -0x68(%ebp),%edx
 80494fb:	89 54 24 18          	mov    %edx,0x18(%esp)
 80494ff:	8b 55 9c             	mov    -0x64(%ebp),%edx
 8049502:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049506:	8d 55 a0             	lea    -0x60(%ebp),%edx
 8049509:	89 54 24 10          	mov    %edx,0x10(%esp)
 804950d:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049511:	c7 44 24 08 c0 a1 04 	movl   $0x804a1c0,0x8(%esp)
 8049518:	08 
 8049519:	c7 44 24 04 72 9d 04 	movl   $0x8049d72,0x4(%esp)
 8049520:	08 
 8049521:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049524:	89 04 24             	mov    %eax,(%esp)
 8049527:	e8 1c f2 ff ff       	call   8048748 <fprintf@plt>
 804952c:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049533:	eb 4d                	jmp    8049582 <send_msg+0x1a4>
 8049535:	8b 55 f4             	mov    -0xc(%ebp),%edx
 8049538:	89 d0                	mov    %edx,%eax
 804953a:	c1 e0 02             	shl    $0x2,%eax
 804953d:	01 d0                	add    %edx,%eax
 804953f:	c1 e0 04             	shl    $0x4,%eax
 8049542:	05 a0 a8 04 08       	add    $0x804a8a0,%eax
 8049547:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804954a:	42                   	inc    %edx
 804954b:	8b 0d a0 a1 04 08    	mov    0x804a1a0,%ecx
 8049551:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049555:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049559:	8d 45 a0             	lea    -0x60(%ebp),%eax
 804955c:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049560:	89 4c 24 0c          	mov    %ecx,0xc(%esp)
 8049564:	c7 44 24 08 c0 a1 04 	movl   $0x804a1c0,0x8(%esp)
 804956b:	08 
 804956c:	c7 44 24 04 8e 9d 04 	movl   $0x8049d8e,0x4(%esp)
 8049573:	08 
 8049574:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049577:	89 04 24             	mov    %eax,(%esp)
 804957a:	e8 c9 f1 ff ff       	call   8048748 <fprintf@plt>
 804957f:	ff 45 f4             	incl   -0xc(%ebp)
 8049582:	a1 8c a8 04 08       	mov    0x804a88c,%eax
 8049587:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 804958a:	7c a9                	jl     8049535 <send_msg+0x157>
 804958c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804958f:	89 04 24             	mov    %eax,(%esp)
 8049592:	e8 11 f2 ff ff       	call   80487a8 <rewind@plt>
 8049597:	c7 44 24 10 f5 99 04 	movl   $0x80499f5,0x10(%esp)
 804959e:	08 
 804959f:	c7 44 24 0c aa 9d 04 	movl   $0x8049daa,0xc(%esp)
 80495a6:	08 
 80495a7:	c7 44 24 08 af 9d 04 	movl   $0x8049daf,0x8(%esp)
 80495ae:	08 
 80495af:	c7 44 24 04 c6 9d 04 	movl   $0x8049dc6,0x4(%esp)
 80495b6:	08 
 80495b7:	c7 04 24 e0 ae 04 08 	movl   $0x804aee0,(%esp)
 80495be:	e8 f5 f2 ff ff       	call   80488b8 <sprintf@plt>
 80495c3:	c7 04 24 e0 ae 04 08 	movl   $0x804aee0,(%esp)
 80495ca:	e8 e9 f1 ff ff       	call   80487b8 <system@plt>
 80495cf:	85 c0                	test   %eax,%eax
 80495d1:	74 18                	je     80495eb <send_msg+0x20d>
 80495d3:	c7 04 24 cf 9d 04 08 	movl   $0x8049dcf,(%esp)
 80495da:	e8 e9 f1 ff ff       	call   80487c8 <puts@plt>
 80495df:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 80495e6:	e8 5d f2 ff ff       	call   8048848 <exit@plt>
 80495eb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80495ee:	89 04 24             	mov    %eax,(%esp)
 80495f1:	e8 32 f2 ff ff       	call   8048828 <fclose@plt>
 80495f6:	85 c0                	test   %eax,%eax
 80495f8:	74 18                	je     8049612 <send_msg+0x234>
 80495fa:	c7 04 24 e9 9d 04 08 	movl   $0x8049de9,(%esp)
 8049601:	e8 c2 f1 ff ff       	call   80487c8 <puts@plt>
 8049606:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804960d:	e8 36 f2 ff ff       	call   8048848 <exit@plt>
 8049612:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049615:	89 04 24             	mov    %eax,(%esp)
 8049618:	e8 8b f2 ff ff       	call   80488a8 <dup@plt>
 804961d:	85 c0                	test   %eax,%eax
 804961f:	74 18                	je     8049639 <send_msg+0x25b>
 8049621:	c7 04 24 02 9e 04 08 	movl   $0x8049e02,(%esp)
 8049628:	e8 9b f1 ff ff       	call   80487c8 <puts@plt>
 804962d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049634:	e8 0f f2 ff ff       	call   8048848 <exit@plt>
 8049639:	8b 45 fc             	mov    -0x4(%ebp),%eax
 804963c:	89 04 24             	mov    %eax,(%esp)
 804963f:	e8 f4 f0 ff ff       	call   8048738 <close@plt>
 8049644:	85 c0                	test   %eax,%eax
 8049646:	74 18                	je     8049660 <send_msg+0x282>
 8049648:	c7 04 24 1d 9e 04 08 	movl   $0x8049e1d,(%esp)
 804964f:	e8 74 f1 ff ff       	call   80487c8 <puts@plt>
 8049654:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 804965b:	e8 e8 f1 ff ff       	call   8048848 <exit@plt>
 8049660:	c9                   	leave  
 8049661:	c3                   	ret    

08049662 <explode_bomb>:
 8049662:	55                   	push   %ebp
 8049663:	89 e5                	mov    %esp,%ebp
 8049665:	83 ec 08             	sub    $0x8,%esp
 8049668:	c7 04 24 34 9e 04 08 	movl   $0x8049e34,(%esp)
 804966f:	e8 54 f1 ff ff       	call   80487c8 <puts@plt>
 8049674:	c7 04 24 3d 9e 04 08 	movl   $0x8049e3d,(%esp)
 804967b:	e8 48 f1 ff ff       	call   80487c8 <puts@plt>
 8049680:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049687:	e8 bc f1 ff ff       	call   8048848 <exit@plt>

0804968c <phase_defused>:
 804968c:	55                   	push   %ebp
 804968d:	89 e5                	mov    %esp,%ebp
 804968f:	83 ec 78             	sub    $0x78,%esp
 8049692:	a1 8c a8 04 08       	mov    0x804a88c,%eax
 8049697:	83 f8 06             	cmp    $0x6,%eax
 804969a:	75 6e                	jne    804970a <phase_defused+0x7e>
 804969c:	b8 90 a9 04 08       	mov    $0x804a990,%eax
 80496a1:	89 c2                	mov    %eax,%edx
 80496a3:	8d 45 ac             	lea    -0x54(%ebp),%eax
 80496a6:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80496aa:	8d 45 a8             	lea    -0x58(%ebp),%eax
 80496ad:	89 44 24 08          	mov    %eax,0x8(%esp)
 80496b1:	c7 44 24 04 54 9e 04 	movl   $0x8049e54,0x4(%esp)
 80496b8:	08 
 80496b9:	89 14 24             	mov    %edx,(%esp)
 80496bc:	e8 a7 f1 ff ff       	call   8048868 <sscanf@plt>
 80496c1:	89 45 fc             	mov    %eax,-0x4(%ebp)
 80496c4:	83 7d fc 02          	cmpl   $0x2,-0x4(%ebp)
 80496c8:	75 34                	jne    80496fe <phase_defused+0x72>
 80496ca:	c7 44 24 04 5a 9e 04 	movl   $0x8049e5a,0x4(%esp)
 80496d1:	08 
 80496d2:	8d 45 ac             	lea    -0x54(%ebp),%eax
 80496d5:	89 04 24             	mov    %eax,(%esp)
 80496d8:	e8 be f9 ff ff       	call   804909b <strings_not_equal>
 80496dd:	85 c0                	test   %eax,%eax
 80496df:	75 1d                	jne    80496fe <phase_defused+0x72>
 80496e1:	c7 04 24 68 9e 04 08 	movl   $0x8049e68,(%esp)
 80496e8:	e8 db f0 ff ff       	call   80487c8 <puts@plt>
 80496ed:	c7 04 24 90 9e 04 08 	movl   $0x8049e90,(%esp)
 80496f4:	e8 cf f0 ff ff       	call   80487c8 <puts@plt>
 80496f9:	e8 23 f8 ff ff       	call   8048f21 <secret_phase>
 80496fe:	c7 04 24 c8 9e 04 08 	movl   $0x8049ec8,(%esp)
 8049705:	e8 be f0 ff ff       	call   80487c8 <puts@plt>
 804970a:	c9                   	leave  
 804970b:	c3                   	ret    
 804970c:	90                   	nop
 804970d:	90                   	nop
 804970e:	90                   	nop
 804970f:	90                   	nop

08049710 <__libc_csu_fini>:
 8049710:	55                   	push   %ebp
 8049711:	89 e5                	mov    %esp,%ebp
 8049713:	57                   	push   %edi
 8049714:	56                   	push   %esi
 8049715:	53                   	push   %ebx
 8049716:	e8 98 00 00 00       	call   80497b3 <__i686.get_pc_thunk.bx>
 804971b:	81 c3 c5 09 00 00    	add    $0x9c5,%ebx
 8049721:	83 ec 0c             	sub    $0xc,%esp
 8049724:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804972a:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 8049730:	29 f8                	sub    %edi,%eax
 8049732:	c1 f8 02             	sar    $0x2,%eax
 8049735:	8d 70 ff             	lea    -0x1(%eax),%esi
 8049738:	83 fe ff             	cmp    $0xffffffff,%esi
 804973b:	74 0c                	je     8049749 <__libc_csu_fini+0x39>
 804973d:	8d 76 00             	lea    0x0(%esi),%esi
 8049740:	ff 14 b7             	call   *(%edi,%esi,4)
 8049743:	4e                   	dec    %esi
 8049744:	83 fe ff             	cmp    $0xffffffff,%esi
 8049747:	75 f7                	jne    8049740 <__libc_csu_fini+0x30>
 8049749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049750:	e8 9f 00 00 00       	call   80497f4 <_fini>
 8049755:	83 c4 0c             	add    $0xc,%esp
 8049758:	5b                   	pop    %ebx
 8049759:	5e                   	pop    %esi
 804975a:	5f                   	pop    %edi
 804975b:	5d                   	pop    %ebp
 804975c:	c3                   	ret    
 804975d:	8d 76 00             	lea    0x0(%esi),%esi

08049760 <__libc_csu_init>:
 8049760:	55                   	push   %ebp
 8049761:	89 e5                	mov    %esp,%ebp
 8049763:	57                   	push   %edi
 8049764:	56                   	push   %esi
 8049765:	53                   	push   %ebx
 8049766:	e8 48 00 00 00       	call   80497b3 <__i686.get_pc_thunk.bx>
 804976b:	81 c3 75 09 00 00    	add    $0x975,%ebx
 8049771:	83 ec 0c             	sub    $0xc,%esp
 8049774:	e8 97 ef ff ff       	call   8048710 <_init>
 8049779:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 804977f:	8d 93 20 ff ff ff    	lea    -0xe0(%ebx),%edx
 8049785:	29 d0                	sub    %edx,%eax
 8049787:	c1 f8 02             	sar    $0x2,%eax
 804978a:	89 45 f0             	mov    %eax,-0x10(%ebp)
 804978d:	74 1c                	je     80497ab <__libc_csu_init+0x4b>
 804978f:	31 ff                	xor    %edi,%edi
 8049791:	89 d6                	mov    %edx,%esi
 8049793:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8049799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80497a0:	47                   	inc    %edi
 80497a1:	ff 16                	call   *(%esi)
 80497a3:	83 c6 04             	add    $0x4,%esi
 80497a6:	39 7d f0             	cmp    %edi,-0x10(%ebp)
 80497a9:	75 f5                	jne    80497a0 <__libc_csu_init+0x40>
 80497ab:	83 c4 0c             	add    $0xc,%esp
 80497ae:	5b                   	pop    %ebx
 80497af:	5e                   	pop    %esi
 80497b0:	5f                   	pop    %edi
 80497b1:	5d                   	pop    %ebp
 80497b2:	c3                   	ret    

080497b3 <__i686.get_pc_thunk.bx>:
 80497b3:	8b 1c 24             	mov    (%esp),%ebx
 80497b6:	c3                   	ret    
 80497b7:	90                   	nop
 80497b8:	90                   	nop
 80497b9:	90                   	nop
 80497ba:	90                   	nop
 80497bb:	90                   	nop
 80497bc:	90                   	nop
 80497bd:	90                   	nop
 80497be:	90                   	nop
 80497bf:	90                   	nop

080497c0 <__do_global_ctors_aux>:
 80497c0:	55                   	push   %ebp
 80497c1:	89 e5                	mov    %esp,%ebp
 80497c3:	53                   	push   %ebx
 80497c4:	bb 00 a0 04 08       	mov    $0x804a000,%ebx
 80497c9:	83 ec 04             	sub    $0x4,%esp
 80497cc:	a1 00 a0 04 08       	mov    0x804a000,%eax
 80497d1:	83 f8 ff             	cmp    $0xffffffff,%eax
 80497d4:	74 16                	je     80497ec <__do_global_ctors_aux+0x2c>
 80497d6:	8d 76 00             	lea    0x0(%esi),%esi
 80497d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 80497e0:	83 eb 04             	sub    $0x4,%ebx
 80497e3:	ff d0                	call   *%eax
 80497e5:	8b 03                	mov    (%ebx),%eax
 80497e7:	83 f8 ff             	cmp    $0xffffffff,%eax
 80497ea:	75 f4                	jne    80497e0 <__do_global_ctors_aux+0x20>
 80497ec:	58                   	pop    %eax
 80497ed:	5b                   	pop    %ebx
 80497ee:	5d                   	pop    %ebp
 80497ef:	90                   	nop
 80497f0:	c3                   	ret    
 80497f1:	90                   	nop
 80497f2:	90                   	nop
 80497f3:	90                   	nop

Disassembly of section .fini:

080497f4 <_fini>:
 80497f4:	55                   	push   %ebp
 80497f5:	89 e5                	mov    %esp,%ebp
 80497f7:	53                   	push   %ebx
 80497f8:	83 ec 04             	sub    $0x4,%esp
 80497fb:	e8 00 00 00 00       	call   8049800 <_fini+0xc>
 8049800:	5b                   	pop    %ebx
 8049801:	81 c3 e0 08 00 00    	add    $0x8e0,%ebx
 8049807:	e8 74 f1 ff ff       	call   8048980 <__do_global_dtors_aux>
 804980c:	59                   	pop    %ecx
 804980d:	5b                   	pop    %ebx
 804980e:	c9                   	leave  
 804980f:	c3                   	ret    
