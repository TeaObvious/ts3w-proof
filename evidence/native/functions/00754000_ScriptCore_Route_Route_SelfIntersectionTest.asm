# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754000 (ScriptCore.Route::Route_SelfIntersectionTest)
Paired Ghidra pseudocode: 00754000_ScriptCore_Route_Route_SelfIntersectionTest.c
Window: [0x00754000, 0x00754230) (560 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754000: 55 8b ec 83 e4 f0 8b 0d c4 50 1d 01 81 ec b4 00
00754010: 00 00 85 c9 53 56 57 74 39 8b 45 08 50 e8 8e 74
00754020: ff ff 8b f0 85 f6 89 74 24 18 74 26 8b 16 8b 42
00754030: 10 8b ce ff d0 8b 86 e0 00 00 00 8d 8e e0 00 00
00754040: 00 3b c1 89 44 24 1c 75 1b 8b 06 8b 50 14 8b ce
00754050: ff d2 32 c0 5f 5e 5b 8b e5 5d c3 eb 03 8d 49 00
00754060: 8b 44 24 1c 8b 70 08 85 f6 89 74 24 14 74 0c 8d
00754070: 4e 04 ba 01 00 00 00 f0 0f c1 11 8b 06 8b 90 dc
00754080: 00 00 00 8b ce ff d2 8b 78 04 8b 18 83 ef 30 3b
00754090: df 0f 83 0b 01 00 00 eb 07 8d a4 24 00 00 00 00
007540a0: 0f 28 03 0f 28 4b 30 8d 73 60 3b f7 0f 83 e1 00
007540b0: 00 00 0f 29 4c 24 70 0f 29 4c 24 50 0f 29 84 24
007540c0: b0 00 00 00 0f 29 84 24 90 00 00 00 0f 28 06 d9
007540d0: 05 ec e6 06 01 0f 28 4e 30 0f 29 84 24 a0 00 00
007540e0: 00 51 0f 29 84 24 84 00 00 00 d9 1c 24 f3 0f 10
007540f0: 84 24 a4 00 00 00 f3 0f 11 44 24 34 f3 0f 10 84
00754100: 24 8c 00 00 00 f3 0f 11 44 24 38 f3 0f 10 44 24
00754110: 54 6a 00 8d 44 24 28 50 f3 0f 11 44 24 34 f3 0f
00754120: 10 84 24 84 00 00 00 8d 4c 24 3c 0f 29 4c 24 4c
00754130: 51 0f 29 4c 24 70 f3 0f 10 4c 24 50 f3 0f 11 44
00754140: 24 3c f3 0f 10 84 24 a0 00 00 00 8d 54 24 38 52
00754150: 8d 44 24 4c f3 0f 11 4c 24 34 f3 0f 10 4c 24 7c
00754160: f3 0f 11 44 24 4c f3 0f 10 84 24 cc 00 00 00 50
00754170: f3 0f 11 4c 24 3c f3 0f 11 44 24 54 e8 1f 9b 07
00754180: 00 83 c4 18 84 c0 75 6c 83 c6 30 3b f7 0f 82 39
00754190: ff ff ff 83 c3 30 3b df 0f 82 02 ff ff ff 8b 74
007541a0: 24 14 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75
007541b0: 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce
007541c0: ff d0 8b 4c 24 1c 8b 01 8b 4c 24 18 81 c1 e0 00
007541d0: 00 00 3b c1 89 44 24 1c 0f 85 82 fe ff ff 8b 74
007541e0: 24 18 8b 06 8b 50 14 8b ce ff d2 32 c0 5f 5e 5b
007541f0: 8b e5 5d c3 8b 4c 24 14 85 c9 74 1e 8d 41 04 8b
00754200: d0 83 ce ff f0 0f c1 32 4e 75 0f ba 01 00 00 00
00754210: 87 10 8b 01 8b 10 6a 01 ff d2 8b 4c 24 18 8b 01
00754220: 8b 50 14 ff d2 5f 5e b0 01 5b 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
00754000 <.text+0x353000>:
  754000:	55                                              	push   ebp
  754001:	8b ec                                           	mov    ebp,esp
  754003:	83 e4 f0                                        	and    esp,0xfffffff0
  754006:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  75400c:	81 ec b4 00 00 00                               	sub    esp,0xb4
  754012:	85 c9                                           	test   ecx,ecx
  754014:	53                                              	push   ebx
  754015:	56                                              	push   esi
  754016:	57                                              	push   edi
  754017:	74 39                                           	je     0x754052
  754019:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  75401c:	50                                              	push   eax
  75401d:	e8 8e 74 ff ff                                  	call   0x74b4b0
  754022:	8b f0                                           	mov    esi,eax
  754024:	85 f6                                           	test   esi,esi
  754026:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  75402a:	74 26                                           	je     0x754052
  75402c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75402e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  754031:	8b ce                                           	mov    ecx,esi
  754033:	ff d0                                           	call   eax
  754035:	8b 86 e0 00 00 00                               	mov    eax,DWORD PTR [esi+0xe0]
  75403b:	8d 8e e0 00 00 00                               	lea    ecx,[esi+0xe0]
  754041:	3b c1                                           	cmp    eax,ecx
  754043:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  754047:	75 1b                                           	jne    0x754064
  754049:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75404b:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  75404e:	8b ce                                           	mov    ecx,esi
  754050:	ff d2                                           	call   edx
  754052:	32 c0                                           	xor    al,al
  754054:	5f                                              	pop    edi
  754055:	5e                                              	pop    esi
  754056:	5b                                              	pop    ebx
  754057:	8b e5                                           	mov    esp,ebp
  754059:	5d                                              	pop    ebp
  75405a:	c3                                              	ret
  75405b:	eb 03                                           	jmp    0x754060
  75405d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  754060:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  754064:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  754067:	85 f6                                           	test   esi,esi
  754069:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  75406d:	74 0c                                           	je     0x75407b
  75406f:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  754072:	ba 01 00 00 00                                  	mov    edx,0x1
  754077:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75407b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  75407d:	8b 90 dc 00 00 00                               	mov    edx,DWORD PTR [eax+0xdc]
  754083:	8b ce                                           	mov    ecx,esi
  754085:	ff d2                                           	call   edx
  754087:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  75408a:	8b 18                                           	mov    ebx,DWORD PTR [eax]
  75408c:	83 ef 30                                        	sub    edi,0x30
  75408f:	3b df                                           	cmp    ebx,edi
  754091:	0f 83 0b 01 00 00                               	jae    0x7541a2
  754097:	eb 07                                           	jmp    0x7540a0
  754099:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  7540a0:	0f 28 03                                        	movaps xmm0,XMMWORD PTR [ebx]
  7540a3:	0f 28 4b 30                                     	movaps xmm1,XMMWORD PTR [ebx+0x30]
  7540a7:	8d 73 60                                        	lea    esi,[ebx+0x60]
  7540aa:	3b f7                                           	cmp    esi,edi
  7540ac:	0f 83 e1 00 00 00                               	jae    0x754193
  7540b2:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
  7540b7:	0f 29 4c 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm1
  7540bc:	0f 29 84 24 b0 00 00 00                         	movaps XMMWORD PTR [esp+0xb0],xmm0
  7540c4:	0f 29 84 24 90 00 00 00                         	movaps XMMWORD PTR [esp+0x90],xmm0
  7540cc:	0f 28 06                                        	movaps xmm0,XMMWORD PTR [esi]
  7540cf:	d9 05 ec e6 06 01                               	fld    DWORD PTR ds:0x106e6ec
  7540d5:	0f 28 4e 30                                     	movaps xmm1,XMMWORD PTR [esi+0x30]
  7540d9:	0f 29 84 24 a0 00 00 00                         	movaps XMMWORD PTR [esp+0xa0],xmm0
  7540e1:	51                                              	push   ecx
  7540e2:	0f 29 84 24 84 00 00 00                         	movaps XMMWORD PTR [esp+0x84],xmm0
  7540ea:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7540ed:	f3 0f 10 84 24 a4 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa4]
  7540f6:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7540fc:	f3 0f 10 84 24 8c 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x8c]
  754105:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
  75410b:	f3 0f 10 44 24 54                               	movss  xmm0,DWORD PTR [esp+0x54]
  754111:	6a 00                                           	push   0x0
  754113:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  754117:	50                                              	push   eax
  754118:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  75411e:	f3 0f 10 84 24 84 00 00 00                      	movss  xmm0,DWORD PTR [esp+0x84]
  754127:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  75412b:	0f 29 4c 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm1
  754130:	51                                              	push   ecx
  754131:	0f 29 4c 24 70                                  	movaps XMMWORD PTR [esp+0x70],xmm1
  754136:	f3 0f 10 4c 24 50                               	movss  xmm1,DWORD PTR [esp+0x50]
  75413c:	f3 0f 11 44 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm0
  754142:	f3 0f 10 84 24 a0 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xa0]
  75414b:	8d 54 24 38                                     	lea    edx,[esp+0x38]
  75414f:	52                                              	push   edx
  754150:	8d 44 24 4c                                     	lea    eax,[esp+0x4c]
  754154:	f3 0f 11 4c 24 34                               	movss  DWORD PTR [esp+0x34],xmm1
  75415a:	f3 0f 10 4c 24 7c                               	movss  xmm1,DWORD PTR [esp+0x7c]
  754160:	f3 0f 11 44 24 4c                               	movss  DWORD PTR [esp+0x4c],xmm0
  754166:	f3 0f 10 84 24 cc 00 00 00                      	movss  xmm0,DWORD PTR [esp+0xcc]
  75416f:	50                                              	push   eax
  754170:	f3 0f 11 4c 24 3c                               	movss  DWORD PTR [esp+0x3c],xmm1
  754176:	f3 0f 11 44 24 54                               	movss  DWORD PTR [esp+0x54],xmm0
  75417c:	e8 1f 9b 07 00                                  	call   0x7cdca0
  754181:	83 c4 18                                        	add    esp,0x18
  754184:	84 c0                                           	test   al,al
  754186:	75 6c                                           	jne    0x7541f4
  754188:	83 c6 30                                        	add    esi,0x30
  75418b:	3b f7                                           	cmp    esi,edi
  75418d:	0f 82 39 ff ff ff                               	jb     0x7540cc
  754193:	83 c3 30                                        	add    ebx,0x30
  754196:	3b df                                           	cmp    ebx,edi
  754198:	0f 82 02 ff ff ff                               	jb     0x7540a0
  75419e:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  7541a2:	8d 46 04                                        	lea    eax,[esi+0x4]
  7541a5:	8b c8                                           	mov    ecx,eax
  7541a7:	83 ca ff                                        	or     edx,0xffffffff
  7541aa:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  7541ae:	4a                                              	dec    edx
  7541af:	75 11                                           	jne    0x7541c2
  7541b1:	b9 01 00 00 00                                  	mov    ecx,0x1
  7541b6:	87 08                                           	xchg   DWORD PTR [eax],ecx
  7541b8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7541ba:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7541bc:	6a 01                                           	push   0x1
  7541be:	8b ce                                           	mov    ecx,esi
  7541c0:	ff d0                                           	call   eax
  7541c2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7541c6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7541c8:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7541cc:	81 c1 e0 00 00 00                               	add    ecx,0xe0
  7541d2:	3b c1                                           	cmp    eax,ecx
  7541d4:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  7541d8:	0f 85 82 fe ff ff                               	jne    0x754060
  7541de:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  7541e2:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7541e4:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  7541e7:	8b ce                                           	mov    ecx,esi
  7541e9:	ff d2                                           	call   edx
  7541eb:	32 c0                                           	xor    al,al
  7541ed:	5f                                              	pop    edi
  7541ee:	5e                                              	pop    esi
  7541ef:	5b                                              	pop    ebx
  7541f0:	8b e5                                           	mov    esp,ebp
  7541f2:	5d                                              	pop    ebp
  7541f3:	c3                                              	ret
  7541f4:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7541f8:	85 c9                                           	test   ecx,ecx
  7541fa:	74 1e                                           	je     0x75421a
  7541fc:	8d 41 04                                        	lea    eax,[ecx+0x4]
  7541ff:	8b d0                                           	mov    edx,eax
  754201:	83 ce ff                                        	or     esi,0xffffffff
  754204:	f0 0f c1 32                                     	lock xadd DWORD PTR [edx],esi
  754208:	4e                                              	dec    esi
  754209:	75 0f                                           	jne    0x75421a
  75420b:	ba 01 00 00 00                                  	mov    edx,0x1
  754210:	87 10                                           	xchg   DWORD PTR [eax],edx
  754212:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  754214:	8b 10                                           	mov    edx,DWORD PTR [eax]
  754216:	6a 01                                           	push   0x1
  754218:	ff d2                                           	call   edx
  75421a:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  75421e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  754220:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  754223:	ff d2                                           	call   edx
  754225:	5f                                              	pop    edi
  754226:	5e                                              	pop    esi
  754227:	b0 01                                           	mov    al,0x1
  754229:	5b                                              	pop    ebx
  75422a:	8b e5                                           	mov    esp,ebp
  75422c:	5d                                              	pop    ebp
  75422d:	c3                                              	ret
  75422e:	cc                                              	int3
  75422f:	cc                                              	int3
