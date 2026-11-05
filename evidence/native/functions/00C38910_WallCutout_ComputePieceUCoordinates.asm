# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c38910 (WallCutout_ComputePieceUCoordinates)
Paired actual Ghidra pseudocode: 00C38910_WallCutout_ComputePieceUCoordinates.c
Envelope [0x00c38910,0x00c38bb5); 677 bytes; exact owned ranges: [0x00c38910,0x00c38bb5)
Owned: 677 original bytes / 178 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c38910 <original>:
  c38910:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  c38914:	8a 48 03                                        	mov    cl,BYTE PTR [eax+0x3]
  c38917:	83 ec 08                                        	sub    esp,0x8
  c3891a:	3a 08                                           	cmp    cl,BYTE PTR [eax]
  c3891c:	74 0d                                           	je     0xc3892b
  c3891e:	8a 50 04                                        	mov    dl,BYTE PTR [eax+0x4]
  c38921:	3a 50 01                                        	cmp    dl,BYTE PTR [eax+0x1]
  c38924:	c6 44 24 0c 01                                  	mov    BYTE PTR [esp+0xc],0x1
  c38929:	75 05                                           	jne    0xc38930
  c3892b:	c6 44 24 0c 00                                  	mov    BYTE PTR [esp+0xc],0x0
  c38930:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  c38934:	53                                              	push   ebx
  c38935:	8a 5c 24 1c                                     	mov    bl,BYTE PTR [esp+0x1c]
  c38939:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  c3893d:	50                                              	push   eax
  c3893e:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  c38942:	51                                              	push   ecx
  c38943:	52                                              	push   edx
  c38944:	80 e3 01                                        	and    bl,0x1
  c38947:	e8 24 f2 ff ff                                  	call   0xc37b70
  c3894c:	83 c4 0c                                        	add    esp,0xc
  c3894f:	f6 05 b8 d9 1e 01 01                            	test   BYTE PTR ds:0x11ed9b8,0x1
  c38956:	75 21                                           	jne    0xc38979
  c38958:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  c38960:	f3 0f 5c 0d 28 52 18 01                         	subss  xmm1,DWORD PTR ds:0x1185228
  c38968:	83 0d b8 d9 1e 01 01                            	or     DWORD PTR ds:0x11ed9b8,0x1
  c3896f:	f3 0f 11 0d b4 d9 1e 01                         	movss  DWORD PTR ds:0x11ed9b4,xmm1
  c38977:	eb 08                                           	jmp    0xc38981
  c38979:	f3 0f 10 0d b4 d9 1e 01                         	movss  xmm1,DWORD PTR ds:0x11ed9b4
  c38981:	80 7c 24 10 00                                  	cmp    BYTE PTR [esp+0x10],0x0
  c38986:	0f 28 c1                                        	movaps xmm0,xmm1
  c38989:	f3 0f 59 4c 24 08                               	mulss  xmm1,DWORD PTR [esp+0x8]
  c3898f:	f3 0f 59 44 24 04                               	mulss  xmm0,DWORD PTR [esp+0x4]
  c38995:	0f 28 d1                                        	movaps xmm2,xmm1
  c38998:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  c3899e:	f3 0f 11 54 24 08                               	movss  DWORD PTR [esp+0x8],xmm2
  c389a4:	75 51                                           	jne    0xc389f7
  c389a6:	84 db                                           	test   bl,bl
  c389a8:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  c389ac:	f3 0f 10 0d b4 b5 f9 00                         	movss  xmm1,DWORD PTR ds:0xf9b5b4
  c389b4:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  c389b8:	74 1d                                           	je     0xc389d7
  c389ba:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c389be:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  c389c2:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  c389c6:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c389ca:	f3 0f 5c ca                                     	subss  xmm1,xmm2
  c389ce:	f3 0f 11 0a                                     	movss  DWORD PTR [edx],xmm1
  c389d2:	5b                                              	pop    ebx
  c389d3:	83 c4 08                                        	add    esp,0x8
  c389d6:	c3                                              	ret
  c389d7:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c389db:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c389df:	0f 28 d9                                        	movaps xmm3,xmm1
  c389e2:	f3 0f 5c d8                                     	subss  xmm3,xmm0
  c389e6:	f3 0f 11 18                                     	movss  DWORD PTR [eax],xmm3
  c389ea:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  c389ee:	f3 0f 11 11                                     	movss  DWORD PTR [ecx],xmm2
  c389f2:	5b                                              	pop    ebx
  c389f3:	83 c4 08                                        	add    esp,0x8
  c389f6:	c3                                              	ret
  c389f7:	0f b6 54 24 18                                  	movzx  edx,BYTE PTR [esp+0x18]
  c389fc:	52                                              	push   edx
  c389fd:	e8 8e 3d ec ff                                  	call   0xafc790
  c38a02:	83 c4 04                                        	add    esp,0x4
  c38a05:	84 c0                                           	test   al,al
  c38a07:	0f 84 8d 00 00 00                               	je     0xc38a9a
  c38a0d:	b8 02 00 00 00                                  	mov    eax,0x2
  c38a12:	84 05 b8 d9 1e 01                               	test   BYTE PTR ds:0x11ed9b8,al
  c38a18:	75 18                                           	jne    0xc38a32
  c38a1a:	f3 0f 10 05 c0 d0 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9d0c0
  c38a22:	09 05 b8 d9 1e 01                               	or     DWORD PTR ds:0x11ed9b8,eax
  c38a28:	f3 0f 11 05 b0 d9 1e 01                         	movss  DWORD PTR ds:0x11ed9b0,xmm0
  c38a30:	eb 08                                           	jmp    0xc38a3a
  c38a32:	f3 0f 10 05 b0 d9 1e 01                         	movss  xmm0,DWORD PTR ds:0x11ed9b0
  c38a3a:	84 db                                           	test   bl,bl
  c38a3c:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  c38a40:	f3 0f 10 0d b4 b5 f9 00                         	movss  xmm1,DWORD PTR ds:0xf9b5b4
  c38a48:	0f 28 d0                                        	movaps xmm2,xmm0
  c38a4b:	f3 0f 59 54 24 04                               	mulss  xmm2,DWORD PTR [esp+0x4]
  c38a51:	f3 0f 59 44 24 08                               	mulss  xmm0,DWORD PTR [esp+0x8]
  c38a57:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  c38a5b:	74 1d                                           	je     0xc38a7a
  c38a5d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c38a61:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  c38a65:	f3 0f 58 d1                                     	addss  xmm2,xmm1
  c38a69:	f3 0f 11 11                                     	movss  DWORD PTR [ecx],xmm2
  c38a6d:	f3 0f 5c c8                                     	subss  xmm1,xmm0
  c38a71:	f3 0f 11 0a                                     	movss  DWORD PTR [edx],xmm1
  c38a75:	5b                                              	pop    ebx
  c38a76:	83 c4 08                                        	add    esp,0x8
  c38a79:	c3                                              	ret
  c38a7a:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c38a7e:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c38a82:	0f 28 d9                                        	movaps xmm3,xmm1
  c38a85:	f3 0f 5c da                                     	subss  xmm3,xmm2
  c38a89:	f3 0f 11 18                                     	movss  DWORD PTR [eax],xmm3
  c38a8d:	f3 0f 58 c1                                     	addss  xmm0,xmm1
  c38a91:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38a95:	5b                                              	pop    ebx
  c38a96:	83 c4 08                                        	add    esp,0x8
  c38a99:	c3                                              	ret
  c38a9a:	80 7c 24 20 01                                  	cmp    BYTE PTR [esp+0x20],0x1
  c38a9f:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  c38aa3:	75 5d                                           	jne    0xc38b02
  c38aa5:	84 db                                           	test   bl,bl
  c38aa7:	f3 0f 10 05 b4 b5 f9 00                         	movss  xmm0,DWORD PTR ds:0xf9b5b4
  c38aaf:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  c38ab3:	74 25                                           	je     0xc38ada
  c38ab5:	f3 0f 10 4c 24 04                               	movss  xmm1,DWORD PTR [esp+0x4]
  c38abb:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c38abf:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c38ac3:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  c38ac7:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  c38acd:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  c38ad1:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38ad5:	5b                                              	pop    ebx
  c38ad6:	83 c4 08                                        	add    esp,0x8
  c38ad9:	c3                                              	ret
  c38ada:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  c38ade:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  c38ae2:	0f 28 c8                                        	movaps xmm1,xmm0
  c38ae5:	f3 0f 5c 4c 24 04                               	subss  xmm1,DWORD PTR [esp+0x4]
  c38aeb:	f3 0f 11 0a                                     	movss  DWORD PTR [edx],xmm1
  c38aef:	f3 0f 10 4c 24 08                               	movss  xmm1,DWORD PTR [esp+0x8]
  c38af5:	f3 0f 58 c8                                     	addss  xmm1,xmm0
  c38af9:	f3 0f 11 08                                     	movss  DWORD PTR [eax],xmm1
  c38afd:	5b                                              	pop    ebx
  c38afe:	83 c4 08                                        	add    esp,0x8
  c38b01:	c3                                              	ret
  c38b02:	f6 44 24 1c fe                                  	test   BYTE PTR [esp+0x1c],0xfe
  c38b07:	75 56                                           	jne    0xc38b5f
  c38b09:	84 db                                           	test   bl,bl
  c38b0b:	f3 0f 10 05 b4 d9 1e 01                         	movss  xmm0,DWORD PTR ds:0x11ed9b4
  c38b13:	74 25                                           	je     0xc38b3a
  c38b15:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c38b19:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  c38b1d:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38b21:	f3 0f 5c 44 24 04                               	subss  xmm0,DWORD PTR [esp+0x4]
  c38b27:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  c38b2b:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  c38b31:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  c38b35:	5b                                              	pop    ebx
  c38b36:	83 c4 08                                        	add    esp,0x8
  c38b39:	c3                                              	ret
  c38b3a:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c38b3e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c38b42:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38b46:	f3 0f 5c 44 24 08                               	subss  xmm0,DWORD PTR [esp+0x8]
  c38b4c:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  c38b50:	f3 0f 5c 44 24 04                               	subss  xmm0,DWORD PTR [esp+0x4]
  c38b56:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  c38b5a:	5b                                              	pop    ebx
  c38b5b:	83 c4 08                                        	add    esp,0x8
  c38b5e:	c3                                              	ret
  c38b5f:	84 db                                           	test   bl,bl
  c38b61:	f3 0f 10 05 28 52 18 01                         	movss  xmm0,DWORD PTR ds:0x1185228
  c38b69:	74 25                                           	je     0xc38b90
  c38b6b:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  c38b6f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  c38b73:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38b77:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  c38b7d:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  c38b81:	f3 0f 58 44 24 04                               	addss  xmm0,DWORD PTR [esp+0x4]
  c38b87:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  c38b8b:	5b                                              	pop    ebx
  c38b8c:	83 c4 08                                        	add    esp,0x8
  c38b8f:	c3                                              	ret
  c38b90:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c38b94:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  c38b98:	f3 0f 11 01                                     	movss  DWORD PTR [ecx],xmm0
  c38b9c:	f3 0f 58 44 24 04                               	addss  xmm0,DWORD PTR [esp+0x4]
  c38ba2:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
  c38ba6:	f3 0f 58 44 24 08                               	addss  xmm0,DWORD PTR [esp+0x8]
  c38bac:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
  c38bb0:	5b                                              	pop    ebx
  c38bb1:	83 c4 08                                        	add    esp,0x8
  c38bb4:	c3                                              	ret
