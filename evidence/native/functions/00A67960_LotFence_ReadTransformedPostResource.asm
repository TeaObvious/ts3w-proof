# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a67960 (LotFence_ReadTransformedPostResource)
Paired actual Ghidra pseudocode: 00A67960_LotFence_ReadTransformedPostResource.c
Envelope [0x00a67960,0x00a67bca); 618 bytes; exact owned ranges: [0x00a67960,0x00a67a27),[0x00a67a30,0x00a67bca)
Owned: 609 original bytes / 199 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00a67960 <original>:
  a67960:	83 ec 78                                        	sub    $0x78,%esp
  a67963:	53                                              	push   %ebx
  a67964:	55                                              	push   %ebp
  a67965:	56                                              	push   %esi
  a67966:	8b b4 24 88 00 00 00                            	mov    0x88(%esp),%esi
  a6796d:	57                                              	push   %edi
  a6796e:	8b bc 24 90 00 00 00                            	mov    0x90(%esp),%edi
  a67975:	8b 47 04                                        	mov    0x4(%edi),%eax
  a67978:	8b e9                                           	mov    %ecx,%ebp
  a6797a:	8b 0f                                           	mov    (%edi),%ecx
  a6797c:	50                                              	push   %eax
  a6797d:	51                                              	push   %ecx
  a6797e:	8b 4d 18                                        	mov    0x18(%ebp),%ecx
  a67981:	68 61 3c 91 00                                  	push   $0x913c61
  a67986:	8d 5f 74                                        	lea    0x74(%edi),%ebx
  a67989:	53                                              	push   %ebx
  a6798a:	56                                              	push   %esi
  a6798b:	89 6c 24 28                                     	mov    %ebp,0x28(%esp)
  a6798f:	e8 8c d0 0a 00                                  	call   0xb14a20
  a67994:	8b 17                                           	mov    (%edi),%edx
  a67996:	8b 47 04                                        	mov    0x4(%edi),%eax
  a67999:	6a 00                                           	push   $0x0
  a6799b:	8d 4c 24 34                                     	lea    0x34(%esp),%ecx
  a6799f:	51                                              	push   %ecx
  a679a0:	8b ce                                           	mov    %esi,%ecx
  a679a2:	89 54 24 38                                     	mov    %edx,0x38(%esp)
  a679a6:	89 44 24 3c                                     	mov    %eax,0x3c(%esp)
  a679aa:	c7 44 24 40 f2 81 33 91                         	movl   $0x913381f2,0x40(%esp)
  a679b2:	c7 44 24 44 00 00 00 00                         	movl   $0x0,0x44(%esp)
  a679ba:	e8 01 0b d7 ff                                  	call   0x7d84c0
  a679bf:	84 c0                                           	test   %al,%al
  a679c1:	0f 84 f7 01 00 00                               	je     0xa67bbe
  a679c7:	8b 56 10                                        	mov    0x10(%esi),%edx
  a679ca:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a679cd:	52                                              	push   %edx
  a679ce:	8d 44 24 24                                     	lea    0x24(%esp),%eax
  a679d2:	50                                              	push   %eax
  a679d3:	51                                              	push   %ecx
  a679d4:	e8 a7 5f a7 ff                                  	call   0x4dd980
  a679d9:	83 c4 0c                                        	add    $0xc,%esp
  a679dc:	8b ce                                           	mov    %esi,%ecx
  a679de:	50                                              	push   %eax
  a679df:	e8 0c 00 d7 ff                                  	call   0x7d79f0
  a679e4:	8b 55 04                                        	mov    0x4(%ebp),%edx
  a679e7:	83 c5 04                                        	add    $0x4,%ebp
  a679ea:	89 55 04                                        	mov    %edx,0x4(%ebp)
  a679ed:	8b 46 10                                        	mov    0x10(%esi),%eax
  a679f0:	8b 56 08                                        	mov    0x8(%esi),%edx
  a679f3:	50                                              	push   %eax
  a679f4:	8d 4c 24 14                                     	lea    0x14(%esp),%ecx
  a679f8:	51                                              	push   %ecx
  a679f9:	52                                              	push   %edx
  a679fa:	e8 81 5f a7 ff                                  	call   0x4dd980
  a679ff:	83 c4 0c                                        	add    $0xc,%esp
  a67a02:	8b ce                                           	mov    %esi,%ecx
  a67a04:	50                                              	push   %eax
  a67a05:	e8 e6 ff d6 ff                                  	call   0x7d79f0
  a67a0a:	8b 44 24 10                                     	mov    0x10(%esp),%eax
  a67a0e:	50                                              	push   %eax
  a67a0f:	8b cd                                           	mov    %ebp,%ecx
  a67a11:	e8 3a f1 ff ff                                  	call   0xa66b50
  a67a16:	33 ed                                           	xor    %ebp,%ebp
  a67a18:	83 c7 64                                        	add    $0x64,%edi
  a67a1b:	39 6c 24 10                                     	cmp    %ebp,0x10(%esp)
  a67a1f:	0f 86 85 01 00 00                               	jbe    0xa67baa
  a67a25:	eb 09                                           	jmp    0xa67a30
  a67a27:	8d a4 24 00 00 00 00 8b ff	.byte 0x8d,0xa4,0x24,0x00,0x00,0x00,0x00,0x8b,0xff  # NONOWNED GAP/ALIGNMENT
  a67a30:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  a67a33:	d9 05 18 b2 fa 00                               	flds   0xfab218
  a67a39:	8b 46 08                                        	mov    0x8(%esi),%eax
  a67a3c:	d9 54 24 24                                     	fsts   0x24(%esp)
  a67a40:	51                                              	push   %ecx
  a67a41:	d9 5c 24 2c                                     	fstps  0x2c(%esp)
  a67a45:	8d 54 24 30                                     	lea    0x30(%esp),%edx
  a67a49:	52                                              	push   %edx
  a67a4a:	50                                              	push   %eax
  a67a4b:	c7 44 24 38 00 00 00 00                         	movl   $0x0,0x38(%esp)
  a67a53:	e8 28 5f a7 ff                                  	call   0x4dd980
  a67a58:	83 c4 0c                                        	add    $0xc,%esp
  a67a5b:	8b ce                                           	mov    %esi,%ecx
  a67a5d:	50                                              	push   %eax
  a67a5e:	e8 8d ff d6 ff                                  	call   0x7d79f0
  a67a63:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  a67a66:	8b 46 08                                        	mov    0x8(%esi),%eax
  a67a69:	51                                              	push   %ecx
  a67a6a:	8d 54 24 28                                     	lea    0x28(%esp),%edx
  a67a6e:	52                                              	push   %edx
  a67a6f:	50                                              	push   %eax
  a67a70:	e8 0b 5f a7 ff                                  	call   0x4dd980
  a67a75:	83 c4 0c                                        	add    $0xc,%esp
  a67a78:	8b ce                                           	mov    %esi,%ecx
  a67a7a:	50                                              	push   %eax
  a67a7b:	e8 70 ff d6 ff                                  	call   0x7d79f0
  a67a80:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  a67a83:	8b 46 08                                        	mov    0x8(%esi),%eax
  a67a86:	51                                              	push   %ecx
  a67a87:	8d 54 24 2c                                     	lea    0x2c(%esp),%edx
  a67a8b:	52                                              	push   %edx
  a67a8c:	50                                              	push   %eax
  a67a8d:	e8 ee 5e a7 ff                                  	call   0x4dd980
  a67a92:	83 c4 0c                                        	add    $0xc,%esp
  a67a95:	8b ce                                           	mov    %esi,%ecx
  a67a97:	50                                              	push   %eax
  a67a98:	e8 53 ff d6 ff                                  	call   0x7d79f0
  a67a9d:	d9 44 24 28                                     	flds   0x28(%esp)
  a67aa1:	8d 4c 24 1c                                     	lea    0x1c(%esp),%ecx
  a67aa5:	51                                              	push   %ecx
  a67aa6:	8d 54 24 1c                                     	lea    0x1c(%esp),%edx
  a67aaa:	52                                              	push   %edx
  a67aab:	83 ec 08                                        	sub    $0x8,%esp
  a67aae:	d9 5c 24 04                                     	fstps  0x4(%esp)
  a67ab2:	8b cf                                           	mov    %edi,%ecx
  a67ab4:	d9 44 24 34                                     	flds   0x34(%esp)
  a67ab8:	d9 1c 24                                        	fstps  (%esp)
  a67abb:	e8 a0 b6 24 00                                  	call   0xcb3160
  a67ac0:	8b 0d d4 c8 1e 01                               	mov    0x11ec8d4,%ecx
  a67ac6:	a1 d0 c8 1e 01                                  	mov    0x11ec8d0,%eax
  a67acb:	f3 0f 10 44 24 18                               	movss  0x18(%esp),%xmm0
  a67ad1:	8b 15 d8 c8 1e 01                               	mov    0x11ec8d8,%edx
  a67ad7:	89 4c 24 44                                     	mov    %ecx,0x44(%esp)
  a67adb:	8d 4c 24 40                                     	lea    0x40(%esp),%ecx
  a67adf:	51                                              	push   %ecx
  a67ae0:	89 44 24 44                                     	mov    %eax,0x44(%esp)
  a67ae4:	a1 dc c8 1e 01                                  	mov    0x11ec8dc,%eax
  a67ae9:	f3 0f 11 44 24 28                               	movss  %xmm0,0x28(%esp)
  a67aef:	f3 0f 10 44 24 20                               	movss  0x20(%esp),%xmm0
  a67af5:	56                                              	push   %esi
  a67af6:	8b cb                                           	mov    %ebx,%ecx
  a67af8:	f3 0f 11 44 24 30                               	movss  %xmm0,0x30(%esp)
  a67afe:	89 54 24 50                                     	mov    %edx,0x50(%esp)
  a67b02:	89 44 24 54                                     	mov    %eax,0x54(%esp)
  a67b06:	66 c7 44 24 58 00 00                            	movw   $0x0,0x58(%esp)
  a67b0d:	e8 5e f9 d6 ff                                  	call   0x7d7470
  a67b12:	8b 44 24 20                                     	mov    0x20(%esp),%eax
  a67b16:	83 f8 03                                        	cmp    $0x3,%eax
  a67b19:	75 48                                           	jne    0xa67b63
  a67b1b:	8d 4c 24 58                                     	lea    0x58(%esp),%ecx
  a67b1f:	e8 7c 40 09 00                                  	call   0xafbba0
  a67b24:	8d 54 24 58                                     	lea    0x58(%esp),%edx
  a67b28:	52                                              	push   %edx
  a67b29:	56                                              	push   %esi
  a67b2a:	8b cb                                           	mov    %ebx,%ecx
  a67b2c:	e8 3f f9 d6 ff                                  	call   0x7d7470
  a67b31:	8d 44 24 68                                     	lea    0x68(%esp),%eax
  a67b35:	50                                              	push   %eax
  a67b36:	56                                              	push   %esi
  a67b37:	8b cb                                           	mov    %ebx,%ecx
  a67b39:	e8 32 f9 d6 ff                                  	call   0x7d7470
  a67b3e:	8d 4c 24 78                                     	lea    0x78(%esp),%ecx
  a67b42:	51                                              	push   %ecx
  a67b43:	56                                              	push   %esi
  a67b44:	8b cb                                           	mov    %ebx,%ecx
  a67b46:	e8 25 f9 d6 ff                                  	call   0x7d7470
  a67b4b:	8b 44 24 14                                     	mov    0x14(%esp),%eax
  a67b4f:	8b 48 18                                        	mov    0x18(%eax),%ecx
  a67b52:	8d 54 24 58                                     	lea    0x58(%esp),%edx
  a67b56:	52                                              	push   %edx
  a67b57:	e8 c4 f8 ff ff                                  	call   0xa67420
  a67b5c:	66 89 44 24 50                                  	mov    %ax,0x50(%esp)
  a67b61:	eb 22                                           	jmp    0xa67b85
  a67b63:	83 f8 04                                        	cmp    $0x4,%eax
  a67b66:	72 1d                                           	jb     0xa67b85
  a67b68:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  a67b6b:	8b 46 08                                        	mov    0x8(%esi),%eax
  a67b6e:	51                                              	push   %ecx
  a67b6f:	8d 54 24 54                                     	lea    0x54(%esp),%edx
  a67b73:	52                                              	push   %edx
  a67b74:	50                                              	push   %eax
  a67b75:	e8 66 5d a7 ff                                  	call   0x4dd8e0
  a67b7a:	83 c4 0c                                        	add    $0xc,%esp
  a67b7d:	8b ce                                           	mov    %esi,%ecx
  a67b7f:	50                                              	push   %eax
  a67b80:	e8 6b fe d6 ff                                  	call   0x7d79f0
  a67b85:	8b 4c 24 50                                     	mov    0x50(%esp),%ecx
  a67b89:	51                                              	push   %ecx
  a67b8a:	8b 4c 24 18                                     	mov    0x18(%esp),%ecx
  a67b8e:	8d 54 24 44                                     	lea    0x44(%esp),%edx
  a67b92:	52                                              	push   %edx
  a67b93:	8d 44 24 2c                                     	lea    0x2c(%esp),%eax
  a67b97:	50                                              	push   %eax
  a67b98:	e8 f3 fa ff ff                                  	call   0xa67690
  a67b9d:	83 c5 01                                        	add    $0x1,%ebp
  a67ba0:	3b 6c 24 10                                     	cmp    0x10(%esp),%ebp
  a67ba4:	0f 82 86 fe ff ff                               	jb     0xa67a30
  a67baa:	8b ce                                           	mov    %esi,%ecx
  a67bac:	e8 bf fe d6 ff                                  	call   0x7d7a70
  a67bb1:	8a 46 14                                        	mov    0x14(%esi),%al
  a67bb4:	5f                                              	pop    %edi
  a67bb5:	5e                                              	pop    %esi
  a67bb6:	5d                                              	pop    %ebp
  a67bb7:	5b                                              	pop    %ebx
  a67bb8:	83 c4 78                                        	add    $0x78,%esp
  a67bbb:	c2 08 00                                        	ret    $0x8
  a67bbe:	5f                                              	pop    %edi
  a67bbf:	5e                                              	pop    %esi
  a67bc0:	5d                                              	pop    %ebp
  a67bc1:	32 c0                                           	xor    %al,%al
  a67bc3:	5b                                              	pop    %ebx
  a67bc4:	83 c4 78                                        	add    $0x78,%esp
  a67bc7:	c2 08 00                                        	ret    $0x8
