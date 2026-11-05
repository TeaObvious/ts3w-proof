# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete reviewed Ghidra function-body envelope.
Annotated entry: 0x00c3cf50 (RoofOwner_SelectForEdge)
Paired actual Ghidra pseudocode: 00C3CF50_RoofOwner_SelectForEdge.c
Envelope [0x00c3cf50,0x00c3d297); 839 bytes; exact owned ranges: [0x00c3cf50,0x00c3d297)
Owned: 839 original bytes / 245 instructions.
Linear gap/alignment bytes remain visible; the actual Ghidra function owns only the listed instruction ranges.
Stored prototypes remain inferred projections; entry annotations state physical register/stack/AL facts and unresolved child boundaries.

LINEAR DISASSEMBLY
00c3cf50 <original>:
  c3cf50:	8b 81 1c 02 00 00                               	mov    eax,DWORD PTR [ecx+0x21c]
  c3cf56:	8b 88 40 02 00 00                               	mov    ecx,DWORD PTR [eax+0x240]
  c3cf5c:	81 ec 50 02 00 00                               	sub    esp,0x250
  c3cf62:	85 c9                                           	test   ecx,ecx
  c3cf64:	75 0b                                           	jne    0xc3cf71
  c3cf66:	33 c0                                           	xor    eax,eax
  c3cf68:	81 c4 50 02 00 00                               	add    esp,0x250
  c3cf6e:	c2 04 00                                        	ret    0x4
  c3cf71:	8b 84 24 54 02 00 00                            	mov    eax,DWORD PTR [esp+0x254]
  c3cf78:	0f be 10                                        	movsx  edx,BYTE PTR [eax]
  c3cf7b:	f3 0f 2a d2                                     	cvtsi2ss xmm2,edx
  c3cf7f:	0f be 50 01                                     	movsx  edx,BYTE PTR [eax+0x1]
  c3cf83:	53                                              	push   ebx
  c3cf84:	56                                              	push   esi
  c3cf85:	0f be 70 03                                     	movsx  esi,BYTE PTR [eax+0x3]
  c3cf89:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
  c3cf8d:	0f be 50 02                                     	movsx  edx,BYTE PTR [eax+0x2]
  c3cf91:	f3 0f 2a ce                                     	cvtsi2ss xmm1,esi
  c3cf95:	0f be 70 04                                     	movsx  esi,BYTE PTR [eax+0x4]
  c3cf99:	0f be 40 05                                     	movsx  eax,BYTE PTR [eax+0x5]
  c3cf9d:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  c3cfa1:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  c3cfa5:	8d 54 24 44                                     	lea    edx,[esp+0x44]
  c3cfa9:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  c3cfad:	8b c2                                           	mov    eax,edx
  c3cfaf:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  c3cfb3:	57                                              	push   edi
  c3cfb4:	89 54 24 44                                     	mov    DWORD PTR [esp+0x44],edx
  c3cfb8:	89 54 24 34                                     	mov    DWORD PTR [esp+0x34],edx
  c3cfbc:	8d 84 24 48 01 00 00                            	lea    eax,[esp+0x148]
  c3cfc3:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  c3cfc9:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  c3cfcd:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  c3cfd3:	f3 0f 2a de                                     	cvtsi2ss xmm3,esi
  c3cfd7:	f3 0f 58 ca                                     	addss  xmm1,xmm2
  c3cfdb:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  c3cfdf:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
  c3cfe5:	f3 0f 10 15 b4 b5 f9 00                         	movss  xmm2,DWORD PTR ds:0xf9b5b4
  c3cfed:	52                                              	push   edx
  c3cfee:	8d 44 24 38                                     	lea    eax,[esp+0x38]
  c3cff2:	f3 0f 58 c3                                     	addss  xmm0,xmm3
  c3cff6:	f3 0f 59 ca                                     	mulss  xmm1,xmm2
  c3cffa:	f3 0f 59 c2                                     	mulss  xmm0,xmm2
  c3cffe:	50                                              	push   eax
  c3cfff:	f3 0f 11 5c 24 24                               	movss  DWORD PTR [esp+0x24],xmm3
  c3d005:	f3 0f 11 4c 24 30                               	movss  DWORD PTR [esp+0x30],xmm1
  c3d00b:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  c3d011:	c7 44 24 48 f8 83 07 01                         	mov    DWORD PTR [esp+0x48],0x10783f8
  c3d019:	e8 02 10 fb ff                                  	call   0xbee020
  c3d01e:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  c3d022:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  c3d026:	8b f9                                           	mov    edi,ecx
  c3d028:	2b f8                                           	sub    edi,eax
  c3d02a:	c1 ff 02                                        	sar    edi,0x2
  c3d02d:	bb 00 00 00 00                                  	mov    ebx,0x0
  c3d032:	0f 84 c3 00 00 00                               	je     0xc3d0fb
  c3d038:	55                                              	push   ebp
  c3d039:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  c3d040:	8b 34 98                                        	mov    esi,DWORD PTR [eax+ebx*4]
  c3d043:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  c3d047:	51                                              	push   ecx
  c3d048:	56                                              	push   esi
  c3d049:	e8 22 5f fc ff                                  	call   0xc02f70
  c3d04e:	83 c4 08                                        	add    esp,0x8
  c3d051:	84 c0                                           	test   al,al
  c3d053:	74 17                                           	je     0xc3d06c
  c3d055:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  c3d059:	52                                              	push   edx
  c3d05a:	56                                              	push   esi
  c3d05b:	e8 10 5f fc ff                                  	call   0xc02f70
  c3d060:	83 c4 08                                        	add    esp,0x8
  c3d063:	84 c0                                           	test   al,al
  c3d065:	74 05                                           	je     0xc3d06c
  c3d067:	83 c3 01                                        	add    ebx,0x1
  c3d06a:	eb 7e                                           	jmp    0xc3d0ea
  c3d06c:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  c3d070:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  c3d074:	8d 14 98                                        	lea    edx,[eax+ebx*4]
  c3d077:	8b 41 fc                                        	mov    eax,DWORD PTR [ecx-0x4]
  c3d07a:	8b 0a                                           	mov    ecx,DWORD PTR [edx]
  c3d07c:	3b c1                                           	cmp    eax,ecx
  c3d07e:	74 34                                           	je     0xc3d0b4
  c3d080:	85 c0                                           	test   eax,eax
  c3d082:	74 0c                                           	je     0xc3d090
  c3d084:	8d 70 04                                        	lea    esi,[eax+0x4]
  c3d087:	bd 01 00 00 00                                  	mov    ebp,0x1
  c3d08c:	f0 0f c1 2e                                     	lock xadd DWORD PTR [esi],ebp
  c3d090:	85 c9                                           	test   ecx,ecx
  c3d092:	89 02                                           	mov    DWORD PTR [edx],eax
  c3d094:	74 1e                                           	je     0xc3d0b4
  c3d096:	8d 41 04                                        	lea    eax,[ecx+0x4]
  c3d099:	8b d0                                           	mov    edx,eax
  c3d09b:	83 ce ff                                        	or     esi,0xffffffff
  c3d09e:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  c3d0a2:	4e                                              	dec    esi
  c3d0a3:	75 0f                                           	jne    0xc3d0b4
  c3d0a5:	ba 01 00 00 00                                  	mov    edx,0x1
  c3d0aa:	87 10                                           	xchg   DWORD PTR [eax],edx
  c3d0ac:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c3d0ae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c3d0b0:	6a 01                                           	push   0x1
  c3d0b2:	ff d2                                           	call   edx
  c3d0b4:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  c3d0b8:	83 e8 04                                        	sub    eax,0x4
  c3d0bb:	89 44 24 3c                                     	mov    DWORD PTR [esp+0x3c],eax
  c3d0bf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  c3d0c1:	85 c9                                           	test   ecx,ecx
  c3d0c3:	74 22                                           	je     0xc3d0e7
  c3d0c5:	8d 41 04                                        	lea    eax,[ecx+0x4]
  c3d0c8:	8b d0                                           	mov    edx,eax
  c3d0ca:	83 ce ff                                        	or     esi,0xffffffff
  c3d0cd:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  c3d0d1:	4e                                              	dec    esi
  c3d0d2:	75 13                                           	jne    0xc3d0e7
  c3d0d4:	ba 01 00 00 00                                  	mov    edx,0x1
  c3d0d9:	87 10                                           	xchg   DWORD PTR [eax],edx
  c3d0db:	85 c9                                           	test   ecx,ecx
  c3d0dd:	74 08                                           	je     0xc3d0e7
  c3d0df:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  c3d0e1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  c3d0e3:	6a 01                                           	push   0x1
  c3d0e5:	ff d2                                           	call   edx
  c3d0e7:	83 ef 01                                        	sub    edi,0x1
  c3d0ea:	3b df                                           	cmp    ebx,edi
  c3d0ec:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  c3d0f0:	0f 82 4a ff ff ff                               	jb     0xc3d040
  c3d0f6:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  c3d0fa:	5d                                              	pop    ebp
  c3d0fb:	85 ff                                           	test   edi,edi
  c3d0fd:	75 30                                           	jne    0xc3d12f
  c3d0ff:	51                                              	push   ecx
  c3d100:	50                                              	push   eax
  c3d101:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  c3d105:	e8 46 ac fa ff                                  	call   0xbe7d50
  c3d10a:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  c3d10e:	85 c0                                           	test   eax,eax
  c3d110:	74 0f                                           	je     0xc3d121
  c3d112:	3b 44 24 44                                     	cmp    eax,DWORD PTR [esp+0x44]
  c3d116:	74 09                                           	je     0xc3d121
  c3d118:	50                                              	push   eax
  c3d119:	e8 c2 73 8a ff                                  	call   0x4e44e0
  c3d11e:	83 c4 04                                        	add    esp,0x4
  c3d121:	5f                                              	pop    edi
  c3d122:	5e                                              	pop    esi
  c3d123:	33 c0                                           	xor    eax,eax
  c3d125:	5b                                              	pop    ebx
  c3d126:	81 c4 50 02 00 00                               	add    esp,0x250
  c3d12c:	c2 04 00                                        	ret    0x4
  c3d12f:	83 ff 01                                        	cmp    edi,0x1
  c3d132:	75 3a                                           	jne    0xc3d16e
  c3d134:	8b 30                                           	mov    esi,DWORD PTR [eax]
  c3d136:	51                                              	push   ecx
  c3d137:	50                                              	push   eax
  c3d138:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  c3d13c:	e8 0f ac fa ff                                  	call   0xbe7d50
  c3d141:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  c3d145:	85 c0                                           	test   eax,eax
  c3d147:	0f 84 3c 01 00 00                               	je     0xc3d289
  c3d14d:	3b 44 24 44                                     	cmp    eax,DWORD PTR [esp+0x44]
  c3d151:	0f 84 32 01 00 00                               	je     0xc3d289
  c3d157:	50                                              	push   eax
  c3d158:	e8 83 73 8a ff                                  	call   0x4e44e0
  c3d15d:	83 c4 04                                        	add    esp,0x4
  c3d160:	5f                                              	pop    edi
  c3d161:	8b c6                                           	mov    eax,esi
  c3d163:	5e                                              	pop    esi
  c3d164:	5b                                              	pop    ebx
  c3d165:	81 c4 50 02 00 00                               	add    esp,0x250
  c3d16b:	c2 04 00                                        	ret    0x4
  c3d16e:	8d 84 24 5c 01 00 00                            	lea    eax,[esp+0x15c]
  c3d175:	8b c8                                           	mov    ecx,eax
  c3d177:	8b d0                                           	mov    edx,eax
  c3d179:	89 84 24 58 01 00 00                            	mov    DWORD PTR [esp+0x158],eax
  c3d180:	89 8c 24 4c 01 00 00                            	mov    DWORD PTR [esp+0x14c],ecx
  c3d187:	8d 8c 24 48 01 00 00                            	lea    ecx,[esp+0x148]
  c3d18e:	89 94 24 48 01 00 00                            	mov    DWORD PTR [esp+0x148],edx
  c3d195:	8d 84 24 5c 02 00 00                            	lea    eax,[esp+0x25c]
  c3d19c:	51                                              	push   ecx
  c3d19d:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  c3d1a1:	89 84 24 54 01 00 00                            	mov    DWORD PTR [esp+0x154],eax
  c3d1a8:	52                                              	push   edx
  c3d1a9:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
  c3d1ad:	50                                              	push   eax
  c3d1ae:	c7 84 24 60 01 00 00 c8 aa f9 00                	mov    DWORD PTR [esp+0x160],0xf9aac8
  c3d1b9:	e8 12 e9 ff ff                                  	call   0xc3bad0
  c3d1be:	8b 8c 24 58 01 00 00                            	mov    ecx,DWORD PTR [esp+0x158]
  c3d1c5:	8b 84 24 54 01 00 00                            	mov    eax,DWORD PTR [esp+0x154]
  c3d1cc:	2b c8                                           	sub    ecx,eax
  c3d1ce:	83 e1 fc                                        	and    ecx,0xfffffffc
  c3d1d1:	83 c4 0c                                        	add    esp,0xc
  c3d1d4:	83 f9 04                                        	cmp    ecx,0x4
  c3d1d7:	0f 84 95 00 00 00                               	je     0xc3d272
  c3d1dd:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  c3d1e1:	52                                              	push   edx
  c3d1e2:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  c3d1e6:	e8 45 91 e2 ff                                  	call   0xa66330
  c3d1eb:	8a d8                                           	mov    bl,al
  c3d1ed:	8d 84 24 48 01 00 00                            	lea    eax,[esp+0x148]
  c3d1f4:	50                                              	push   eax
  c3d1f5:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  c3d1f9:	e8 82 f7 ff ff                                  	call   0xc3c980
  c3d1fe:	84 db                                           	test   bl,bl
  c3d200:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  c3d204:	75 04                                           	jne    0xc3d20a
  c3d206:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  c3d20a:	8d 8c 24 48 01 00 00                            	lea    ecx,[esp+0x148]
  c3d211:	51                                              	push   ecx
  c3d212:	50                                              	push   eax
  c3d213:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  c3d217:	52                                              	push   edx
  c3d218:	e8 b3 e8 ff ff                                  	call   0xc3bad0
  c3d21d:	8b 8c 24 58 01 00 00                            	mov    ecx,DWORD PTR [esp+0x158]
  c3d224:	8b 84 24 54 01 00 00                            	mov    eax,DWORD PTR [esp+0x154]
  c3d22b:	2b c8                                           	sub    ecx,eax
  c3d22d:	83 e1 fc                                        	and    ecx,0xfffffffc
  c3d230:	83 c4 0c                                        	add    esp,0xc
  c3d233:	83 f9 04                                        	cmp    ecx,0x4
  c3d236:	74 3a                                           	je     0xc3d272
  c3d238:	8d 94 24 48 01 00 00                            	lea    edx,[esp+0x148]
  c3d23f:	52                                              	push   edx
  c3d240:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  c3d244:	e8 37 f7 ff ff                                  	call   0xc3c980
  c3d249:	84 db                                           	test   bl,bl
  c3d24b:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  c3d24f:	75 04                                           	jne    0xc3d255
  c3d251:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  c3d255:	8d 8c 24 48 01 00 00                            	lea    ecx,[esp+0x148]
  c3d25c:	51                                              	push   ecx
  c3d25d:	50                                              	push   eax
  c3d25e:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
  c3d262:	52                                              	push   edx
  c3d263:	e8 68 e8 ff ff                                  	call   0xc3bad0
  c3d268:	8b 84 24 54 01 00 00                            	mov    eax,DWORD PTR [esp+0x154]
  c3d26f:	83 c4 0c                                        	add    esp,0xc
  c3d272:	8b 30                                           	mov    esi,DWORD PTR [eax]
  c3d274:	8d 8c 24 48 01 00 00                            	lea    ecx,[esp+0x148]
  c3d27b:	e8 f0 c7 ff ff                                  	call   0xc39a70
  c3d280:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  c3d284:	e8 e7 c7 ff ff                                  	call   0xc39a70
  c3d289:	5f                                              	pop    edi
  c3d28a:	8b c6                                           	mov    eax,esi
  c3d28c:	5e                                              	pop    esi
  c3d28d:	5b                                              	pop    ebx
  c3d28e:	81 c4 50 02 00 00                               	add    esp,0x250
  c3d294:	c2 04 00                                        	ret    0x4
