# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10543070 (Route_GetPointAtDistanceOnRoute)
Paired Ghidra pseudocode: 10543070_Route_GetPointAtDistanceOnRoute.c
Window: [0x10543070, 0x10543320) (688 bytes; stop exclusive)
Next defined Ghidra entry: 0x10543320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10543070: 55 8b ec 83 e4 f0 8b 0d 44 89 c7 10 83 ec 34 85
10543080: c9 53 56 57 0f 84 88 02 00 00 8b 45 08 50 e8 5d
10543090: 90 ff ff 8b d8 85 db 0f 84 75 02 00 00 8b 13 8b
105430a0: 42 10 8b cb ff d0 8b cb e8 83 e1 ff ff d9 45 0c
105430b0: f3 0f 10 45 0c d8 e1 f3 0f 11 44 24 1c 8b 54 24
105430c0: 1c d9 5c 24 18 8b 44 24 18 c1 f8 1f d9 5c 24 18
105430d0: 8b c8 f7 d1 23 4c 24 18 23 d0 0b ca 80 bb f4 00
105430e0: 00 00 00 89 4d 0c 0f 85 39 01 00 00 8b bb e0 00
105430f0: 00 00 8d 83 e0 00 00 00 3b f8 0f 84 09 02 00 00
10543100: 8b 77 08 85 f6 74 0c 8d 46 04 b9 01 00 00 00 f0
10543110: 0f c1 08 8b 16 8b 82 2c 01 00 00 8b ce ff d0 d9
10543120: 54 24 1c d9 45 0c d9 c9 df f1 0f 87 87 00 00 00
10543130: f3 0f 10 45 0c f3 0f 5c 44 24 1c 0f 28 d0 f3 0f
10543140: 10 05 84 e1 aa 10 0f c6 c0 00 f3 0f 10 ca 0f c6
10543150: c9 00 0f 59 c1 0f 5f c1 f3 0f 10 0d f4 b6 b1 10
10543160: 0f c6 c9 00 0f c2 c1 02 0f 50 c8 83 f9 0f 74 47
10543170: 8d 46 04 dd d8 f3 0f 11 55 0c 8b d0 83 c9 ff f0
10543180: 0f c1 0a 49 75 11 ba 01 00 00 00 87 10 8b 06 8b
10543190: 10 6a 01 8b ce ff d2 8b 3f 8d 83 e0 00 00 00 3b
105431a0: f8 0f 85 59 ff ff ff 8b 03 8b 50 14 8b cb ff d2
105431b0: 5f 5e 5b 8b e5 5d c3 8b 06 8d 4c 24 1c 51 8d 54
105431c0: 24 24 52 8b 90 1c 01 00 00 51 8d 4c 24 3c d9 1c
105431d0: 24 51 8b ce ff d2 8b 4d 10 50 e8 f1 a9 01 00 8b
105431e0: 4d 14 8d 44 24 20 50 e8 e4 a9 01 00 8b 4d 18 8b
105431f0: 54 24 1c 89 11 8d 46 04 8b c8 83 ca ff f0 0f c1
10543200: 11 4a 75 11 b9 01 00 00 00 87 08 8b 16 8b 02 6a
10543210: 01 8b ce ff d0 8b 13 8b 42 14 8b cb ff d0 5f 5e
10543220: 5b 8b e5 5d c3 8b b3 ec 00 00 00 85 f6 bf a0 86
10543230: 01 00 0f 84 d1 00 00 00 eb 06 8d 9b 00 00 00 00
10543240: 83 ef 01 0f 88 c0 00 00 00 8b 16 8b 82 2c 01 00
10543250: 00 8b ce ff d0 d9 54 24 1c d9 45 0c d9 c9 df f1
10543260: 77 69 f3 0f 10 45 0c f3 0f 5c 44 24 1c 0f 28 d0
10543270: f3 0f 10 05 84 e1 aa 10 0f c6 c0 00 f3 0f 10 ca
10543280: 0f c6 c9 00 0f 59 c1 0f 5f c1 f3 0f 10 0d f4 b6
10543290: b1 10 0f c6 c9 00 0f c2 c1 02 0f 50 c8 83 f9 0f
105432a0: 74 29 8b 16 dd d8 8b 82 8c 00 00 00 8b ce f3 0f
105432b0: 11 55 0c ff d0 8b f0 85 f6 75 85 8b 03 8b 50 14
105432c0: 8b cb ff d2 5f 5e 5b 8b e5 5d c3 8b 16 8b 92 1c
105432d0: 01 00 00 8d 44 24 1c 50 8d 4c 24 24 51 51 8d 44
105432e0: 24 3c d9 1c 24 50 8b ce ff d2 8b 4d 10 50 e8 dd
105432f0: a8 01 00 8b 4d 14 8d 44 24 20 50 e8 d0 a8 01 00
10543300: 8b 4d 18 8b 54 24 1c 89 11 8b 03 8b 50 14 8b cb
10543310: ff d2 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10543070 <.text+0x542070>:
10543070:	55                                              	push   ebp
10543071:	8b ec                                           	mov    ebp,esp
10543073:	83 e4 f0                                        	and    esp,0xfffffff0
10543076:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1054307c:	83 ec 34                                        	sub    esp,0x34
1054307f:	85 c9                                           	test   ecx,ecx
10543081:	53                                              	push   ebx
10543082:	56                                              	push   esi
10543083:	57                                              	push   edi
10543084:	0f 84 88 02 00 00                               	je     0x10543312
1054308a:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1054308d:	50                                              	push   eax
1054308e:	e8 5d 90 ff ff                                  	call   0x1053c0f0
10543093:	8b d8                                           	mov    ebx,eax
10543095:	85 db                                           	test   ebx,ebx
10543097:	0f 84 75 02 00 00                               	je     0x10543312
1054309d:	8b 13                                           	mov    edx,DWORD PTR [ebx]
1054309f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105430a2:	8b cb                                           	mov    ecx,ebx
105430a4:	ff d0                                           	call   eax
105430a6:	8b cb                                           	mov    ecx,ebx
105430a8:	e8 83 e1 ff ff                                  	call   0x10541230
105430ad:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
105430b0:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
105430b5:	d8 e1                                           	fsub   st,st(1)
105430b7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
105430bd:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105430c1:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
105430c5:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105430c9:	c1 f8 1f                                        	sar    eax,0x1f
105430cc:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
105430d0:	8b c8                                           	mov    ecx,eax
105430d2:	f7 d1                                           	not    ecx
105430d4:	23 4c 24 18                                     	and    ecx,DWORD PTR [esp+0x18]
105430d8:	23 d0                                           	and    edx,eax
105430da:	0b ca                                           	or     ecx,edx
105430dc:	80 bb f4 00 00 00 00                            	cmp    BYTE PTR [ebx+0xf4],0x0
105430e3:	89 4d 0c                                        	mov    DWORD PTR [ebp+0xc],ecx
105430e6:	0f 85 39 01 00 00                               	jne    0x10543225
105430ec:	8b bb e0 00 00 00                               	mov    edi,DWORD PTR [ebx+0xe0]
105430f2:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
105430f8:	3b f8                                           	cmp    edi,eax
105430fa:	0f 84 09 02 00 00                               	je     0x10543309
10543100:	8b 77 08                                        	mov    esi,DWORD PTR [edi+0x8]
10543103:	85 f6                                           	test   esi,esi
10543105:	74 0c                                           	je     0x10543113
10543107:	8d 46 04                                        	lea    eax,[esi+0x4]
1054310a:	b9 01 00 00 00                                  	mov    ecx,0x1
1054310f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10543113:	8b 16                                           	mov    edx,DWORD PTR [esi]
10543115:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
1054311b:	8b ce                                           	mov    ecx,esi
1054311d:	ff d0                                           	call   eax
1054311f:	d9 54 24 1c                                     	fst    DWORD PTR [esp+0x1c]
10543123:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
10543126:	d9 c9                                           	fxch   st(1)
10543128:	df f1                                           	fcomip st,st(1)
1054312a:	0f 87 87 00 00 00                               	ja     0x105431b7
10543130:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10543135:	f3 0f 5c 44 24 1c                               	subss  xmm0,DWORD PTR [esp+0x1c]
1054313b:	0f 28 d0                                        	movaps xmm2,xmm0
1054313e:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10543146:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1054314a:	f3 0f 10 ca                                     	movss  xmm1,xmm2
1054314e:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10543152:	0f 59 c1                                        	mulps  xmm0,xmm1
10543155:	0f 5f c1                                        	maxps  xmm0,xmm1
10543158:	f3 0f 10 0d f4 b6 b1 10                         	movss  xmm1,DWORD PTR ds:0x10b1b6f4
10543160:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10543164:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
10543168:	0f 50 c8                                        	movmskps ecx,xmm0
1054316b:	83 f9 0f                                        	cmp    ecx,0xf
1054316e:	74 47                                           	je     0x105431b7
10543170:	8d 46 04                                        	lea    eax,[esi+0x4]
10543173:	dd d8                                           	fstp   st(0)
10543175:	f3 0f 11 55 0c                                  	movss  DWORD PTR [ebp+0xc],xmm2
1054317a:	8b d0                                           	mov    edx,eax
1054317c:	83 c9 ff                                        	or     ecx,0xffffffff
1054317f:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
10543183:	49                                              	dec    ecx
10543184:	75 11                                           	jne    0x10543197
10543186:	ba 01 00 00 00                                  	mov    edx,0x1
1054318b:	87 10                                           	xchg   DWORD PTR [eax],edx
1054318d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1054318f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10543191:	6a 01                                           	push   0x1
10543193:	8b ce                                           	mov    ecx,esi
10543195:	ff d2                                           	call   edx
10543197:	8b 3f                                           	mov    edi,DWORD PTR [edi]
10543199:	8d 83 e0 00 00 00                               	lea    eax,[ebx+0xe0]
1054319f:	3b f8                                           	cmp    edi,eax
105431a1:	0f 85 59 ff ff ff                               	jne    0x10543100
105431a7:	8b 03                                           	mov    eax,DWORD PTR [ebx]
105431a9:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
105431ac:	8b cb                                           	mov    ecx,ebx
105431ae:	ff d2                                           	call   edx
105431b0:	5f                                              	pop    edi
105431b1:	5e                                              	pop    esi
105431b2:	5b                                              	pop    ebx
105431b3:	8b e5                                           	mov    esp,ebp
105431b5:	5d                                              	pop    ebp
105431b6:	c3                                              	ret
105431b7:	8b 06                                           	mov    eax,DWORD PTR [esi]
105431b9:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
105431bd:	51                                              	push   ecx
105431be:	8d 54 24 24                                     	lea    edx,[esp+0x24]
105431c2:	52                                              	push   edx
105431c3:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
105431c9:	51                                              	push   ecx
105431ca:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
105431ce:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105431d1:	51                                              	push   ecx
105431d2:	8b ce                                           	mov    ecx,esi
105431d4:	ff d2                                           	call   edx
105431d6:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
105431d9:	50                                              	push   eax
105431da:	e8 f1 a9 01 00                                  	call   0x1055dbd0
105431df:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
105431e2:	8d 44 24 20                                     	lea    eax,[esp+0x20]
105431e6:	50                                              	push   eax
105431e7:	e8 e4 a9 01 00                                  	call   0x1055dbd0
105431ec:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
105431ef:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
105431f3:	89 11                                           	mov    DWORD PTR [ecx],edx
105431f5:	8d 46 04                                        	lea    eax,[esi+0x4]
105431f8:	8b c8                                           	mov    ecx,eax
105431fa:	83 ca ff                                        	or     edx,0xffffffff
105431fd:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
10543201:	4a                                              	dec    edx
10543202:	75 11                                           	jne    0x10543215
10543204:	b9 01 00 00 00                                  	mov    ecx,0x1
10543209:	87 08                                           	xchg   DWORD PTR [eax],ecx
1054320b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054320d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1054320f:	6a 01                                           	push   0x1
10543211:	8b ce                                           	mov    ecx,esi
10543213:	ff d0                                           	call   eax
10543215:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10543217:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054321a:	8b cb                                           	mov    ecx,ebx
1054321c:	ff d0                                           	call   eax
1054321e:	5f                                              	pop    edi
1054321f:	5e                                              	pop    esi
10543220:	5b                                              	pop    ebx
10543221:	8b e5                                           	mov    esp,ebp
10543223:	5d                                              	pop    ebp
10543224:	c3                                              	ret
10543225:	8b b3 ec 00 00 00                               	mov    esi,DWORD PTR [ebx+0xec]
1054322b:	85 f6                                           	test   esi,esi
1054322d:	bf a0 86 01 00                                  	mov    edi,0x186a0
10543232:	0f 84 d1 00 00 00                               	je     0x10543309
10543238:	eb 06                                           	jmp    0x10543240
1054323a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
10543240:	83 ef 01                                        	sub    edi,0x1
10543243:	0f 88 c0 00 00 00                               	js     0x10543309
10543249:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054324b:	8b 82 2c 01 00 00                               	mov    eax,DWORD PTR [edx+0x12c]
10543251:	8b ce                                           	mov    ecx,esi
10543253:	ff d0                                           	call   eax
10543255:	d9 54 24 1c                                     	fst    DWORD PTR [esp+0x1c]
10543259:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
1054325c:	d9 c9                                           	fxch   st(1)
1054325e:	df f1                                           	fcomip st,st(1)
10543260:	77 69                                           	ja     0x105432cb
10543262:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10543267:	f3 0f 5c 44 24 1c                               	subss  xmm0,DWORD PTR [esp+0x1c]
1054326d:	0f 28 d0                                        	movaps xmm2,xmm0
10543270:	f3 0f 10 05 84 e1 aa 10                         	movss  xmm0,DWORD PTR ds:0x10aae184
10543278:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1054327c:	f3 0f 10 ca                                     	movss  xmm1,xmm2
10543280:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10543284:	0f 59 c1                                        	mulps  xmm0,xmm1
10543287:	0f 5f c1                                        	maxps  xmm0,xmm1
1054328a:	f3 0f 10 0d f4 b6 b1 10                         	movss  xmm1,DWORD PTR ds:0x10b1b6f4
10543292:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10543296:	0f c2 c1 02                                     	cmpleps xmm0,xmm1
1054329a:	0f 50 c8                                        	movmskps ecx,xmm0
1054329d:	83 f9 0f                                        	cmp    ecx,0xf
105432a0:	74 29                                           	je     0x105432cb
105432a2:	8b 16                                           	mov    edx,DWORD PTR [esi]
105432a4:	dd d8                                           	fstp   st(0)
105432a6:	8b 82 8c 00 00 00                               	mov    eax,DWORD PTR [edx+0x8c]
105432ac:	8b ce                                           	mov    ecx,esi
105432ae:	f3 0f 11 55 0c                                  	movss  DWORD PTR [ebp+0xc],xmm2
105432b3:	ff d0                                           	call   eax
105432b5:	8b f0                                           	mov    esi,eax
105432b7:	85 f6                                           	test   esi,esi
105432b9:	75 85                                           	jne    0x10543240
105432bb:	8b 03                                           	mov    eax,DWORD PTR [ebx]
105432bd:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
105432c0:	8b cb                                           	mov    ecx,ebx
105432c2:	ff d2                                           	call   edx
105432c4:	5f                                              	pop    edi
105432c5:	5e                                              	pop    esi
105432c6:	5b                                              	pop    ebx
105432c7:	8b e5                                           	mov    esp,ebp
105432c9:	5d                                              	pop    ebp
105432ca:	c3                                              	ret
105432cb:	8b 16                                           	mov    edx,DWORD PTR [esi]
105432cd:	8b 92 1c 01 00 00                               	mov    edx,DWORD PTR [edx+0x11c]
105432d3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
105432d7:	50                                              	push   eax
105432d8:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
105432dc:	51                                              	push   ecx
105432dd:	51                                              	push   ecx
105432de:	8d 44 24 3c                                     	lea    eax,[esp+0x3c]
105432e2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
105432e5:	50                                              	push   eax
105432e6:	8b ce                                           	mov    ecx,esi
105432e8:	ff d2                                           	call   edx
105432ea:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
105432ed:	50                                              	push   eax
105432ee:	e8 dd a8 01 00                                  	call   0x1055dbd0
105432f3:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
105432f6:	8d 44 24 20                                     	lea    eax,[esp+0x20]
105432fa:	50                                              	push   eax
105432fb:	e8 d0 a8 01 00                                  	call   0x1055dbd0
10543300:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
10543303:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10543307:	89 11                                           	mov    DWORD PTR [ecx],edx
10543309:	8b 03                                           	mov    eax,DWORD PTR [ebx]
1054330b:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
1054330e:	8b cb                                           	mov    ecx,ebx
10543310:	ff d2                                           	call   edx
10543312:	5f                                              	pop    edi
10543313:	5e                                              	pop    esi
10543314:	5b                                              	pop    ebx
10543315:	8b e5                                           	mov    esp,ebp
10543317:	5d                                              	pop    ebp
10543318:	c3                                              	ret
10543319:	cc                                              	int3
1054331a:	cc                                              	int3
1054331b:	cc                                              	int3
1054331c:	cc                                              	int3
1054331d:	cc                                              	int3
1054331e:	cc                                              	int3
1054331f:	cc                                              	int3
