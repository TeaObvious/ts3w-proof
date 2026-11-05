# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751e90 (ScriptCore.Route::Route_GetPointAtDistanceOnRoute)
Paired Ghidra pseudocode: 00751E90_ScriptCore_Route_Route_GetPointAtDistanceOnRoute.c
Window: [0x00751e90, 0x00752140) (688 bytes; stop exclusive)
Next defined Ghidra entry: 0x00752140
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751e90: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 83 ec 34 85
00751ea0: c9 53 56 57 0f 84 88 02 00 00 8b 45 08 50 e8 fd
00751eb0: 95 ff ff 8b d8 85 db 0f 84 75 02 00 00 8b 13 8b
00751ec0: 42 10 8b cb ff d0 8b cb e8 13 e2 ff ff d9 45 0c
00751ed0: f3 0f 10 45 0c d8 e1 f3 0f 11 44 24 1c 8b 54 24
00751ee0: 1c d9 5c 24 18 8b 44 24 18 c1 f8 1f d9 5c 24 18
00751ef0: 8b c8 f7 d1 23 4c 24 18 23 d0 0b ca 80 bb f4 00
00751f00: 00 00 00 89 4d 0c 0f 85 39 01 00 00 8b bb e0 00
00751f10: 00 00 8d 83 e0 00 00 00 3b f8 0f 84 09 02 00 00
00751f20: 8b 77 08 85 f6 74 0c 8d 46 04 b9 01 00 00 00 f0
00751f30: 0f c1 08 8b 16 8b 82 2c 01 00 00 8b ce ff d0 d9
00751f40: 54 24 1c d9 45 0c d9 c9 df f1 0f 87 87 00 00 00
00751f50: f3 0f 10 45 0c f3 0f 5c 44 24 1c 0f 28 d0 f3 0f
00751f60: 10 05 18 b2 fa 00 0f c6 c0 00 f3 0f 10 ca 0f c6
00751f70: c9 00 0f 59 c1 0f 5f c1 f3 0f 10 0d 9c 51 00 01
00751f80: 0f c6 c9 00 0f c2 c1 02 0f 50 c8 83 f9 0f 74 47
00751f90: 8d 46 04 dd d8 f3 0f 11 55 0c 8b d0 83 c9 ff f0
00751fa0: 0f c1 0a 49 75 11 ba 01 00 00 00 87 10 8b 06 8b
00751fb0: 10 6a 01 8b ce ff d2 8b 3f 8d 83 e0 00 00 00 3b
00751fc0: f8 0f 85 59 ff ff ff 8b 03 8b 50 14 8b cb ff d2
00751fd0: 5f 5e 5b 8b e5 5d c3 8b 06 8d 4c 24 1c 51 8d 54
00751fe0: 24 24 52 8b 90 1c 01 00 00 51 8d 4c 24 3c d9 1c
00751ff0: 24 51 8b ce ff d2 8b 4d 10 50 e8 01 a1 01 00 8b
00752000: 4d 14 8d 44 24 20 50 e8 f4 a0 01 00 8b 4d 18 8b
00752010: 54 24 1c 89 11 8d 46 04 8b c8 83 ca ff f0 0f c1
00752020: 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a
00752030: 01 8b ce ff d0 8b 13 8b 42 14 8b cb ff d0 5f 5e
00752040: 5b 8b e5 5d c3 8b b3 ec 00 00 00 85 f6 bf a0 86
00752050: 01 00 0f 84 d1 00 00 00 eb 06 8d 9b 00 00 00 00
00752060: 83 ef 01 0f 88 c0 00 00 00 8b 16 8b 82 2c 01 00
00752070: 00 8b ce ff d0 d9 54 24 1c d9 45 0c d9 c9 df f1
00752080: 77 69 f3 0f 10 45 0c f3 0f 5c 44 24 1c 0f 28 d0
00752090: f3 0f 10 05 18 b2 fa 00 0f c6 c0 00 f3 0f 10 ca
007520a0: 0f c6 c9 00 0f 59 c1 0f 5f c1 f3 0f 10 0d 9c 51
007520b0: 00 01 0f c6 c9 00 0f c2 c1 02 0f 50 c8 83 f9 0f
007520c0: 74 29 8b 16 dd d8 8b 82 8c 00 00 00 8b ce f3 0f
007520d0: 11 55 0c ff d0 8b f0 85 f6 75 85 8b 03 8b 50 14
007520e0: 8b cb ff d2 5f 5e 5b 8b e5 5d c3 8b 16 8b 92 1c
007520f0: 01 00 00 8d 44 24 1c 50 8d 4c 24 24 51 51 8d 44
00752100: 24 3c d9 1c 24 50 8b ce ff d2 8b 4d 10 50 e8 ed
00752110: 9f 01 00 8b 4d 14 8d 44 24 20 50 e8 e0 9f 01 00
00752120: 8b 4d 18 8b 54 24 1c 89 11 8b 03 8b 50 14 8b cb
00752130: ff d2 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751e90 <.text+0x350e90>:
  751e90:	55                                              	push   ebp
  751e91:	8b ec                                           	mov    ebp,esp
  751e93:	83 e4 f0                                        	and    esp,0xfffffff0
  751e96:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751e9c:	83 ec 34                                        	sub    esp,0x34
  751e9f:	85 c9                                           	test   ecx,ecx
  751ea1:	53                                              	push   ebx
  751ea2:	56                                              	push   esi
  751ea3:	57                                              	push   edi
  751ea4:	0f 84 88 02 00 00                               	je     0x752132
  751eaa:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  751ead:	50                                              	push   eax
  751eae:	e8 fd 95 ff ff                                  	call   0x74b4b0
  751eb3:	8b d8                                           	mov    ebx,eax
  751eb5:	85 db                                           	test   ebx,ebx
  751eb7:	0f 84 75 02 00 00                               	je     0x752132
  751ebd:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  751ebf:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751ec2:	8b cb                                           	mov    ecx,ebx
  751ec4:	ff d0                                           	call   eax
  751ec6:	8b cb                                           	mov    ecx,ebx
  751ec8:	e8 13 e2 ff ff                                  	call   0x7500e0
  751ecd:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  751ed0:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  751ed5:	d8 e1                                           	fsub   st,st(1)
  751ed7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  751edd:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  751ee1:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  751ee5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  751ee9:	c1 f8 1f                                        	sar    eax,0x1f
  751eec:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
  751ef0:	8b c8                                           	mov    ecx,eax
  751ef2:	f7 d1                                           	not    ecx
  751ef4:	23 4c 24 18                                     	and    ecx,DWORD PTR [esp+0x18]
  751ef8:	23 d0                                           	and    edx,eax
  751efa:	0b ca                                           	or     ecx,edx
  751efc:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
  751f03:	89 4d 0c                                        	mov    DWORD PTR [ebp+0xc],ecx
  751f06:	0f 85 39 01 00 00                               	jne    0x752045
  751f0c:	8b bb e0 00 00 00                               	mov    edi,DWORD PTR [ebx+0xe0]
  751f12:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  751f18:	3b f8                                           	cmp    edi,eax
  751f1a:	0f 84 09 02 00 00                               	je     0x752129
  751f20:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
  751f23:	85 f6                                           	test   esi,esi
  751f25:	74 0c                                           	je     0x751f33
  751f27:	8d 46 04                                        	lea    eax,[esi+0x4]
  751f2a:	b9 01 00 00 00                                  	mov    ecx,0x1
  751f2f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  751f33:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751f35:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  751f3b:	8b ce                                           	mov    ecx,esi
  751f3d:	ff d0                                           	call   eax
  751f3f:	d9 54 24 1c                                     	fst    DWORD PTR [esp+0x1c]
  751f43:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  751f46:	d9 c9                                           	fxch   st(1)
  751f48:	df f1                                           	fcomip st,st(1)
  751f4a:	0f 87 87 00 00 00                               	ja     0x751fd7
  751f50:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  751f55:	f3 0f 5c 44 24 1c                               	subss  xmm0,DWORD PTR [esp+0x1c]
  751f5b:	0f 28 d0                                        	movaps xmm2,xmm0
  751f5e:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  751f66:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  751f6a:	f3 0f 10 ca                                     	movss  xmm1,xmm2
  751f6e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  751f72:	0f 59 c1                                        	mulps  xmm0,xmm1
  751f75:	0f 5f c1                                        	maxps  xmm0,xmm1
  751f78:	f3 0f 10 0d 9c 51 00 01                         	movss  xmm1,DWORD PTR ds:0x100519c
  751f80:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  751f84:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
  751f88:	0f 50 c8                                        	movmskps ecx,xmm0
  751f8b:	83 f9 0f                                        	cmp    ecx,0xf
  751f8e:	74 47                                           	je     0x751fd7
  751f90:	8d 46 04                                        	lea    eax,[esi+0x4]
  751f93:	dd d8                                           	fstp   st(0)
  751f95:	f3 0f 11 55 0c                                  	movss  DWORD PTR [ebp+0xc],xmm2
  751f9a:	8b d0                                           	mov    edx,eax
  751f9c:	83 c9 ff                                        	or     ecx,0xffffffff
  751f9f:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  751fa3:	49                                              	dec    ecx
  751fa4:	75 11                                           	jne    0x751fb7
  751fa6:	ba 01 00 00 00                                  	mov    edx,0x1
  751fab:	87 10                                           	xchg   DWORD PTR [eax],edx
  751fad:	8b 06                                           	mov    eax,DWORD PTR [esi]
  751faf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  751fb1:	6a 01                                           	push   0x1
  751fb3:	8b ce                                           	mov    ecx,esi
  751fb5:	ff d2                                           	call   edx
  751fb7:	8b 3f                                           	mov    edi,DWORD PTR [edi]
  751fb9:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
  751fbf:	3b f8                                           	cmp    edi,eax
  751fc1:	0f 85 59 ff ff ff                               	jne    0x751f20
  751fc7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  751fc9:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  751fcc:	8b cb                                           	mov    ecx,ebx
  751fce:	ff d2                                           	call   edx
  751fd0:	5f                                              	pop    edi
  751fd1:	5e                                              	pop    esi
  751fd2:	5b                                              	pop    ebx
  751fd3:	8b e5                                           	mov    esp,ebp
  751fd5:	5d                                              	pop    ebp
  751fd6:	c3                                              	ret
  751fd7:	8b 06                                           	mov    eax,DWORD PTR [esi]
  751fd9:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  751fdd:	51                                              	push   ecx
  751fde:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  751fe2:	52                                              	push   edx
  751fe3:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  751fe9:	51                                              	push   ecx
  751fea:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  751fee:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  751ff1:	51                                              	push   ecx
  751ff2:	8b ce                                           	mov    ecx,esi
  751ff4:	ff d2                                           	call   edx
  751ff6:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  751ff9:	50                                              	push   eax
  751ffa:	e8 01 a1 01 00                                  	call   0x76c100
  751fff:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  752002:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  752006:	50                                              	push   eax
  752007:	e8 f4 a0 01 00                                  	call   0x76c100
  75200c:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  75200f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  752013:	89 11                                           	mov    DWORD PTR [ecx],edx
  752015:	8d 46 04                                        	lea    eax,[esi+0x4]
  752018:	8b c8                                           	mov    ecx,eax
  75201a:	83 ca ff                                        	or     edx,0xffffffff
  75201d:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  752021:	4a                                              	dec    edx
  752022:	75 11                                           	jne    0x752035
  752024:	b9 01 00 00 00                                  	mov    ecx,0x1
  752029:	87 08                                           	xchg   DWORD PTR [eax],ecx
  75202b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75202d:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75202f:	6a 01                                           	push   0x1
  752031:	8b ce                                           	mov    ecx,esi
  752033:	ff d0                                           	call   eax
  752035:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  752037:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75203a:	8b cb                                           	mov    ecx,ebx
  75203c:	ff d0                                           	call   eax
  75203e:	5f                                              	pop    edi
  75203f:	5e                                              	pop    esi
  752040:	5b                                              	pop    ebx
  752041:	8b e5                                           	mov    esp,ebp
  752043:	5d                                              	pop    ebp
  752044:	c3                                              	ret
  752045:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
  75204b:	85 f6                                           	test   esi,esi
  75204d:	bf a0 86 01 00                                  	mov    edi,0x186a0
  752052:	0f 84 d1 00 00 00                               	je     0x752129
  752058:	eb 06                                           	jmp    0x752060
  75205a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  752060:	83 ef 01                                        	sub    edi,0x1
  752063:	0f 88 c0 00 00 00                               	js     0x752129
  752069:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75206b:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
  752071:	8b ce                                           	mov    ecx,esi
  752073:	ff d0                                           	call   eax
  752075:	d9 54 24 1c                                     	fst    DWORD PTR [esp+0x1c]
  752079:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
  75207c:	d9 c9                                           	fxch   st(1)
  75207e:	df f1                                           	fcomip st,st(1)
  752080:	77 69                                           	ja     0x7520eb
  752082:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  752087:	f3 0f 5c 44 24 1c                               	subss  xmm0,DWORD PTR [esp+0x1c]
  75208d:	0f 28 d0                                        	movaps xmm2,xmm0
  752090:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  752098:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  75209c:	f3 0f 10 ca                                     	movss  xmm1,xmm2
  7520a0:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  7520a4:	0f 59 c1                                        	mulps  xmm0,xmm1
  7520a7:	0f 5f c1                                        	maxps  xmm0,xmm1
  7520aa:	f3 0f 10 0d 9c 51 00 01                         	movss  xmm1,DWORD PTR ds:0x100519c
  7520b2:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
  7520b6:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
  7520ba:	0f 50 c8                                        	movmskps ecx,xmm0
  7520bd:	83 f9 0f                                        	cmp    ecx,0xf
  7520c0:	74 29                                           	je     0x7520eb
  7520c2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7520c4:	dd d8                                           	fstp   st(0)
  7520c6:	8b 82 8c 00 00 00                               	mov    eax,DWORD PTR [edx+0x8c]
  7520cc:	8b ce                                           	mov    ecx,esi
  7520ce:	f3 0f 11 55 0c                                  	movss  DWORD PTR [ebp+0xc],xmm2
  7520d3:	ff d0                                           	call   eax
  7520d5:	8b f0                                           	mov    esi,eax
  7520d7:	85 f6                                           	test   esi,esi
  7520d9:	75 85                                           	jne    0x752060
  7520db:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  7520dd:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7520e0:	8b cb                                           	mov    ecx,ebx
  7520e2:	ff d2                                           	call   edx
  7520e4:	5f                                              	pop    edi
  7520e5:	5e                                              	pop    esi
  7520e6:	5b                                              	pop    ebx
  7520e7:	8b e5                                           	mov    esp,ebp
  7520e9:	5d                                              	pop    ebp
  7520ea:	c3                                              	ret
  7520eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7520ed:	8b 92 1c 01 00 00                               	mov    edx,DWORD PTR [edx+0x11c]
  7520f3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  7520f7:	50                                              	push   eax
  7520f8:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7520fc:	51                                              	push   ecx
  7520fd:	51                                              	push   ecx
  7520fe:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  752102:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  752105:	50                                              	push   eax
  752106:	8b ce                                           	mov    ecx,esi
  752108:	ff d2                                           	call   edx
  75210a:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  75210d:	50                                              	push   eax
  75210e:	e8 ed 9f 01 00                                  	call   0x76c100
  752113:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  752116:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  75211a:	50                                              	push   eax
  75211b:	e8 e0 9f 01 00                                  	call   0x76c100
  752120:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  752123:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  752127:	89 11                                           	mov    DWORD PTR [ecx],edx
  752129:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  75212b:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  75212e:	8b cb                                           	mov    ecx,ebx
  752130:	ff d2                                           	call   edx
  752132:	5f                                              	pop    edi
  752133:	5e                                              	pop    esi
  752134:	5b                                              	pop    ebx
  752135:	8b e5                                           	mov    esp,ebp
  752137:	5d                                              	pop    ebp
  752138:	c3                                              	ret
  752139:	cc                                              	int3
  75213a:	cc                                              	int3
  75213b:	cc                                              	int3
  75213c:	cc                                              	int3
  75213d:	cc                                              	int3
  75213e:	cc                                              	int3
  75213f:	cc                                              	int3
