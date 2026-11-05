# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00a67720 (LotFence_ReadPostResource)
Paired actual Ghidra pseudocode: 00A67720_LotFence_ReadPostResource.c
Envelope [0x00a67720,0x00a67957); 567 bytes; exact owned ranges: [0x00a67720,0x00a67957)
Owned: 567 original bytes / 187 instructions.
Original owned instructions retain the independently reviewed objdump AT&T syntax.
Nonowned gap/alignment bytes are explicit .byte records, not additional owned instructions.
Stored prototypes are inferred projections; AL-only results and stack-flow caveats remain as annotated.

OWNED DISASSEMBLY AND EXPLICIT UNOWNED BYTES
00a67720 <original>:
  a67720:	83 ec 64                                        	sub    $0x64,%esp
  a67723:	8b 44 24 70                                     	mov    0x70(%esp),%eax
  a67727:	53                                              	push   %ebx
  a67728:	8b 5c 24 70                                     	mov    0x70(%esp),%ebx
  a6772c:	55                                              	push   %ebp
  a6772d:	56                                              	push   %esi
  a6772e:	8b 74 24 74                                     	mov    0x74(%esp),%esi
  a67732:	57                                              	push   %edi
  a67733:	8b bc 24 84 00 00 00                            	mov    0x84(%esp),%edi
  a6773a:	57                                              	push   %edi
  a6773b:	50                                              	push   %eax
  a6773c:	68 61 3c 91 00                                  	push   $0x913c61
  a67741:	8b e9                                           	mov    %ecx,%ebp
  a67743:	8b 4d 18                                        	mov    0x18(%ebp),%ecx
  a67746:	53                                              	push   %ebx
  a67747:	56                                              	push   %esi
  a67748:	e8 d3 d2 0a 00                                  	call   0xb14a20
  a6774d:	8b 8c 24 80 00 00 00                            	mov    0x80(%esp),%ecx
  a67754:	6a 00                                           	push   $0x0
  a67756:	8d 54 24 20                                     	lea    0x20(%esp),%edx
  a6775a:	89 4c 24 20                                     	mov    %ecx,0x20(%esp)
  a6775e:	52                                              	push   %edx
  a6775f:	8b ce                                           	mov    %esi,%ecx
  a67761:	89 7c 24 28                                     	mov    %edi,0x28(%esp)
  a67765:	c7 44 24 2c f2 81 33 91                         	movl   $0x913381f2,0x2c(%esp)
  a6776d:	c7 44 24 30 00 00 00 00                         	movl   $0x0,0x30(%esp)
  a67775:	e8 46 0d d7 ff                                  	call   0x7d84c0
  a6777a:	84 c0                                           	test   %al,%al
  a6777c:	0f 84 c9 01 00 00                               	je     0xa6794b
  a67782:	8b 46 10                                        	mov    0x10(%esi),%eax
  a67785:	8b 56 08                                        	mov    0x8(%esi),%edx
  a67788:	50                                              	push   %eax
  a67789:	8d 4c 24 7c                                     	lea    0x7c(%esp),%ecx
  a6778d:	51                                              	push   %ecx
  a6778e:	52                                              	push   %edx
  a6778f:	e8 ec 61 a7 ff                                  	call   0x4dd980
  a67794:	83 c4 0c                                        	add    $0xc,%esp
  a67797:	8b ce                                           	mov    %esi,%ecx
  a67799:	50                                              	push   %eax
  a6779a:	e8 51 02 d7 ff                                  	call   0x7d79f0
  a6779f:	8b 45 04                                        	mov    0x4(%ebp),%eax
  a677a2:	8d 7d 04                                        	lea    0x4(%ebp),%edi
  a677a5:	89 47 04                                        	mov    %eax,0x4(%edi)
  a677a8:	8b 4e 10                                        	mov    0x10(%esi),%ecx
  a677ab:	8b 46 08                                        	mov    0x8(%esi),%eax
  a677ae:	51                                              	push   %ecx
  a677af:	8d 94 24 80 00 00 00                            	lea    0x80(%esp),%edx
  a677b6:	52                                              	push   %edx
  a677b7:	50                                              	push   %eax
  a677b8:	e8 c3 61 a7 ff                                  	call   0x4dd980
  a677bd:	83 c4 0c                                        	add    $0xc,%esp
  a677c0:	8b ce                                           	mov    %esi,%ecx
  a677c2:	50                                              	push   %eax
  a677c3:	e8 28 02 d7 ff                                  	call   0x7d79f0
  a677c8:	8b 4c 24 7c                                     	mov    0x7c(%esp),%ecx
  a677cc:	51                                              	push   %ecx
  a677cd:	8b cf                                           	mov    %edi,%ecx
  a677cf:	e8 7c f3 ff ff                                  	call   0xa66b50
  a677d4:	33 ff                                           	xor    %edi,%edi
  a677d6:	39 7c 24 7c                                     	cmp    %edi,0x7c(%esp)
  a677da:	0f 86 57 01 00 00                               	jbe    0xa67937
  a677e0:	8b 56 10                                        	mov    0x10(%esi),%edx
  a677e3:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a677e6:	f3 0f 10 05 18 b2 fa 00                         	movss  0xfab218,%xmm0
  a677ee:	52                                              	push   %edx
  a677ef:	8d 44 24 1c                                     	lea    0x1c(%esp),%eax
  a677f3:	50                                              	push   %eax
  a677f4:	51                                              	push   %ecx
  a677f5:	f3 0f 11 44 24 1c                               	movss  %xmm0,0x1c(%esp)
  a677fb:	f3 0f 11 44 24 20                               	movss  %xmm0,0x20(%esp)
  a67801:	c7 44 24 24 00 00 00 00                         	movl   $0x0,0x24(%esp)
  a67809:	e8 72 61 a7 ff                                  	call   0x4dd980
  a6780e:	83 c4 0c                                        	add    $0xc,%esp
  a67811:	8b ce                                           	mov    %esi,%ecx
  a67813:	50                                              	push   %eax
  a67814:	e8 d7 01 d7 ff                                  	call   0x7d79f0
  a67819:	8b 56 10                                        	mov    0x10(%esi),%edx
  a6781c:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a6781f:	52                                              	push   %edx
  a67820:	8d 44 24 14                                     	lea    0x14(%esp),%eax
  a67824:	50                                              	push   %eax
  a67825:	51                                              	push   %ecx
  a67826:	e8 55 61 a7 ff                                  	call   0x4dd980
  a6782b:	83 c4 0c                                        	add    $0xc,%esp
  a6782e:	8b ce                                           	mov    %esi,%ecx
  a67830:	50                                              	push   %eax
  a67831:	e8 ba 01 d7 ff                                  	call   0x7d79f0
  a67836:	8b 56 10                                        	mov    0x10(%esi),%edx
  a67839:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a6783c:	52                                              	push   %edx
  a6783d:	8d 44 24 18                                     	lea    0x18(%esp),%eax
  a67841:	50                                              	push   %eax
  a67842:	51                                              	push   %ecx
  a67843:	e8 38 61 a7 ff                                  	call   0x4dd980
  a67848:	83 c4 0c                                        	add    $0xc,%esp
  a6784b:	8b ce                                           	mov    %esi,%ecx
  a6784d:	50                                              	push   %eax
  a6784e:	e8 9d 01 d7 ff                                  	call   0x7d79f0
  a67853:	83 7c 24 78 02                                  	cmpl   $0x2,0x78(%esp)
  a67858:	8b 15 d0 c8 1e 01                               	mov    0x11ec8d0,%edx
  a6785e:	a1 d4 c8 1e 01                                  	mov    0x11ec8d4,%eax
  a67863:	8b 0d d8 c8 1e 01                               	mov    0x11ec8d8,%ecx
  a67869:	89 54 24 2c                                     	mov    %edx,0x2c(%esp)
  a6786d:	8b 15 dc c8 1e 01                               	mov    0x11ec8dc,%edx
  a67873:	89 44 24 30                                     	mov    %eax,0x30(%esp)
  a67877:	89 4c 24 34                                     	mov    %ecx,0x34(%esp)
  a6787b:	89 54 24 38                                     	mov    %edx,0x38(%esp)
  a6787f:	66 c7 44 24 3c 00 00                            	movw   $0x0,0x3c(%esp)
  a67886:	8d 44 24 2c                                     	lea    0x2c(%esp),%eax
  a6788a:	72 6f                                           	jb     0xa678fb
  a6788c:	50                                              	push   %eax
  a6788d:	56                                              	push   %esi
  a6788e:	8b cb                                           	mov    %ebx,%ecx
  a67890:	e8 db fb d6 ff                                  	call   0x7d7470
  a67895:	8b 44 24 78                                     	mov    0x78(%esp),%eax
  a67899:	83 f8 03                                        	cmp    $0x3,%eax
  a6789c:	75 44                                           	jne    0xa678e2
  a6789e:	8d 4c 24 44                                     	lea    0x44(%esp),%ecx
  a678a2:	e8 f9 42 09 00                                  	call   0xafbba0
  a678a7:	8d 4c 24 44                                     	lea    0x44(%esp),%ecx
  a678ab:	51                                              	push   %ecx
  a678ac:	56                                              	push   %esi
  a678ad:	8b cb                                           	mov    %ebx,%ecx
  a678af:	e8 bc fb d6 ff                                  	call   0x7d7470
  a678b4:	8d 54 24 54                                     	lea    0x54(%esp),%edx
  a678b8:	52                                              	push   %edx
  a678b9:	56                                              	push   %esi
  a678ba:	8b cb                                           	mov    %ebx,%ecx
  a678bc:	e8 af fb d6 ff                                  	call   0x7d7470
  a678c1:	8d 44 24 64                                     	lea    0x64(%esp),%eax
  a678c5:	50                                              	push   %eax
  a678c6:	56                                              	push   %esi
  a678c7:	8b cb                                           	mov    %ebx,%ecx
  a678c9:	e8 a2 fb d6 ff                                  	call   0x7d7470
  a678ce:	8d 4c 24 44                                     	lea    0x44(%esp),%ecx
  a678d2:	51                                              	push   %ecx
  a678d3:	8b 4d 18                                        	mov    0x18(%ebp),%ecx
  a678d6:	e8 45 fb ff ff                                  	call   0xa67420
  a678db:	66 89 44 24 3c                                  	mov    %ax,0x3c(%esp)
  a678e0:	eb 32                                           	jmp    0xa67914
  a678e2:	83 f8 04                                        	cmp    $0x4,%eax
  a678e5:	72 2d                                           	jb     0xa67914
  a678e7:	8b 56 10                                        	mov    0x10(%esi),%edx
  a678ea:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a678ed:	52                                              	push   %edx
  a678ee:	8d 44 24 40                                     	lea    0x40(%esp),%eax
  a678f2:	50                                              	push   %eax
  a678f3:	51                                              	push   %ecx
  a678f4:	e8 e7 5f a7 ff                                  	call   0x4dd8e0
  a678f9:	eb 0e                                           	jmp    0xa67909
  a678fb:	8b 56 10                                        	mov    0x10(%esi),%edx
  a678fe:	8b 4e 08                                        	mov    0x8(%esi),%ecx
  a67901:	52                                              	push   %edx
  a67902:	50                                              	push   %eax
  a67903:	51                                              	push   %ecx
  a67904:	e8 57 fe d6 ff                                  	call   0x7d7760
  a67909:	83 c4 0c                                        	add    $0xc,%esp
  a6790c:	50                                              	push   %eax
  a6790d:	8b ce                                           	mov    %esi,%ecx
  a6790f:	e8 dc 00 d7 ff                                  	call   0x7d79f0
  a67914:	8b 54 24 3c                                     	mov    0x3c(%esp),%edx
  a67918:	52                                              	push   %edx
  a67919:	8d 44 24 30                                     	lea    0x30(%esp),%eax
  a6791d:	50                                              	push   %eax
  a6791e:	8d 4c 24 18                                     	lea    0x18(%esp),%ecx
  a67922:	51                                              	push   %ecx
  a67923:	8b cd                                           	mov    %ebp,%ecx
  a67925:	e8 66 fd ff ff                                  	call   0xa67690
  a6792a:	83 c7 01                                        	add    $0x1,%edi
  a6792d:	3b 7c 24 7c                                     	cmp    0x7c(%esp),%edi
  a67931:	0f 82 a9 fe ff ff                               	jb     0xa677e0
  a67937:	8b ce                                           	mov    %esi,%ecx
  a67939:	e8 32 01 d7 ff                                  	call   0x7d7a70
  a6793e:	8a 46 14                                        	mov    0x14(%esi),%al
  a67941:	5f                                              	pop    %edi
  a67942:	5e                                              	pop    %esi
  a67943:	5d                                              	pop    %ebp
  a67944:	5b                                              	pop    %ebx
  a67945:	83 c4 64                                        	add    $0x64,%esp
  a67948:	c2 10 00                                        	ret    $0x10
  a6794b:	5f                                              	pop    %edi
  a6794c:	5e                                              	pop    %esi
  a6794d:	5d                                              	pop    %ebp
  a6794e:	32 c0                                           	xor    %al,%al
  a67950:	5b                                              	pop    %ebx
  a67951:	83 c4 64                                        	add    $0x64,%esp
  a67954:	c2 10 00                                        	ret    $0x10
