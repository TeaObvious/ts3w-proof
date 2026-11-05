# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c3bad0 (RoofCandidates_CollectMaximumHeightTies)
Paired actual Ghidra pseudocode: 00C3BAD0_RoofCandidates_CollectMaximumHeightTies.c
Envelope [0x00c3bad0,0x00c3bc26); 342 bytes; exact owned ranges: [0x00c3bad0,0x00c3bc26)
Owned: 342 original bytes / 121 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c3bad0 <original>:
  c3bad0:	83 ec 10                                        	sub    esp,0x10
  c3bad3:	53                                              	push   ebx
  c3bad4:	55                                              	push   ebp
  c3bad5:	8b 6c 24 24                                     	mov    ebp,DWORD PTR [esp+0x24]
  c3bad9:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  c3badc:	8b 4d 00                                        	mov    ecx,DWORD PTR [ebp+0x0]
  c3badf:	57                                              	push   edi
  c3bae0:	50                                              	push   eax
  c3bae1:	51                                              	push   ecx
  c3bae2:	8b cd                                           	mov    ecx,ebp
  c3bae4:	e8 67 c2 fa ff                                  	call   0xbe7d50
  c3bae9:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  c3baec:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  c3baf0:	89 55 04                                        	mov    DWORD PTR [ebp+0x4],edx
  c3baf3:	8b 5f 04                                        	mov    ebx,DWORD PTR [edi+0x4]
  c3baf6:	2b 1f                                           	sub    ebx,DWORD PTR [edi]
  c3baf8:	c1 fb 02                                        	sar    ebx,0x2
  c3bafb:	0f 84 1e 01 00 00                               	je     0xc3bc1f
  c3bb01:	56                                              	push   esi
  c3bb02:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  c3bb06:	50                                              	push   eax
  c3bb07:	53                                              	push   ebx
  c3bb08:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  c3bb0c:	c7 44 24 34 18 83 07 01                         	mov    DWORD PTR [esp+0x34],0x1078318
  c3bb14:	e8 17 08 11 00                                  	call   0xd4c330
  c3bb19:	85 db                                           	test   ebx,ebx
  c3bb1b:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  c3bb1f:	76 0c                                           	jbe    0xc3bb2d
  c3bb21:	8b cb                                           	mov    ecx,ebx
  c3bb23:	33 c0                                           	xor    eax,eax
  c3bb25:	8b fe                                           	mov    edi,esi
  c3bb27:	f3 ab                                           	rep stos DWORD PTR es:[edi],eax
  c3bb29:	8b 7c 24 24                                     	mov    edi,DWORD PTR [esp+0x24]
  c3bb2d:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  c3bb2f:	d9 ee                                           	fldz
  c3bb31:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  c3bb35:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  c3bb37:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  c3bb39:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  c3bb3c:	83 ec 0c                                        	sub    esp,0xc
  c3bb3f:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  c3bb43:	d9 47 04                                        	fld    DWORD PTR [edi+0x4]
  c3bb46:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  c3bb4a:	d9 07                                           	fld    DWORD PTR [edi]
  c3bb4c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  c3bb4f:	ff d0                                           	call   eax
  c3bb51:	d9 1e                                           	fstp   DWORD PTR [esi]
  c3bb53:	f3 0f 10 06                                     	movss  xmm0,DWORD PTR [esi]
  c3bb57:	be 01 00 00 00                                  	mov    esi,0x1
  c3bb5c:	3b de                                           	cmp    ebx,esi
  c3bb5e:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  c3bb64:	76 45                                           	jbe    0xc3bbab
  c3bb66:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c3bb6a:	d9 ee                                           	fldz
  c3bb6c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  c3bb6e:	8b 0c b2                                        	mov    ecx,DWORD PTR [edx+esi*4]
  c3bb71:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c3bb73:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  c3bb76:	83 ec 0c                                        	sub    esp,0xc
  c3bb79:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  c3bb7d:	d9 47 04                                        	fld    DWORD PTR [edi+0x4]
  c3bb80:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  c3bb84:	d9 07                                           	fld    DWORD PTR [edi]
  c3bb86:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  c3bb89:	ff d2                                           	call   edx
  c3bb8b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c3bb8f:	d9 1c b0                                        	fstp   DWORD PTR [eax+esi*4]
  c3bb92:	f3 0f 10 04 b0                                  	movss  xmm0,DWORD PTR [eax+esi*4]
  c3bb97:	0f 2f 44 24 2c                                  	comiss xmm0,DWORD PTR [esp+0x2c]
  c3bb9c:	76 06                                           	jbe    0xc3bba4
  c3bb9e:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
  c3bba4:	83 c6 01                                        	add    esi,0x1
  c3bba7:	3b f3                                           	cmp    esi,ebx
  c3bba9:	72 bb                                           	jb     0xc3bb66
  c3bbab:	33 f6                                           	xor    esi,esi
  c3bbad:	85 db                                           	test   ebx,ebx
  c3bbaf:	76 60                                           	jbe    0xc3bc11
  c3bbb1:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  c3bbb5:	8d 14 b5 00 00 00 00                            	lea    edx,[esi*4+0x0]
  c3bbbc:	d9 04 02                                        	fld    DWORD PTR [edx+eax*1]
  c3bbbf:	d8 64 24 2c                                     	fsub   DWORD PTR [esp+0x2c]
  c3bbc3:	d9 e1                                           	fabs
  c3bbc5:	d9 05 f4 81 07 01                               	fld    DWORD PTR ds:0x10781f4
  c3bbcb:	df f1                                           	fcomip st,st(1)
  c3bbcd:	dd d8                                           	fstp   st(0)
  c3bbcf:	76 39                                           	jbe    0xc3bc0a
  c3bbd1:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  c3bbd5:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  c3bbd7:	8b 45 04                                        	mov    eax,DWORD PTR [ebp+0x4]
  c3bbda:	03 ca                                           	add    ecx,edx
  c3bbdc:	3b 45 08                                        	cmp    eax,DWORD PTR [ebp+0x8]
  c3bbdf:	73 20                                           	jae    0xc3bc01
  c3bbe1:	85 c0                                           	test   eax,eax
  c3bbe3:	8d 50 04                                        	lea    edx,[eax+0x4]
  c3bbe6:	89 55 04                                        	mov    DWORD PTR [ebp+0x4],edx
  c3bbe9:	74 1f                                           	je     0xc3bc0a
  c3bbeb:	8b 09                                           	mov    ecx,DWORD PTR [ecx]
  c3bbed:	85 c9                                           	test   ecx,ecx
  c3bbef:	89 08                                           	mov    DWORD PTR [eax],ecx
  c3bbf1:	74 17                                           	je     0xc3bc0a
  c3bbf3:	83 c1 04                                        	add    ecx,0x4
  c3bbf6:	b8 01 00 00 00                                  	mov    eax,0x1
  c3bbfb:	f0 0f c1 01                                     	lock xadd DWORD PTR [ecx],eax
  c3bbff:	eb 09                                           	jmp    0xc3bc0a
  c3bc01:	51                                              	push   ecx
  c3bc02:	50                                              	push   eax
  c3bc03:	8b cd                                           	mov    ecx,ebp
  c3bc05:	e8 a6 f6 fa ff                                  	call   0xbeb2b0
  c3bc0a:	83 c6 01                                        	add    esi,0x1
  c3bc0d:	3b f3                                           	cmp    esi,ebx
  c3bc0f:	72 a0                                           	jb     0xc3bbb1
  c3bc11:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  c3bc15:	51                                              	push   ecx
  c3bc16:	e8 c5 88 8a ff                                  	call   0x4e44e0
  c3bc1b:	83 c4 04                                        	add    esp,0x4
  c3bc1e:	5e                                              	pop    esi
  c3bc1f:	5f                                              	pop    edi
  c3bc20:	5d                                              	pop    ebp
  c3bc21:	5b                                              	pop    ebx
  c3bc22:	83 c4 10                                        	add    esp,0x10
  c3bc25:	c3                                              	ret
