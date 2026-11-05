# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10533160 (DeviceConfig_GetResolutionList)
Paired Ghidra pseudocode: 10533160_DeviceConfig_GetResolutionList.c
Window: [0x10533160, 0x10533310) (432 bytes; stop exclusive)
Next defined Ghidra entry: 0x10533310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10533160: 55 8b ec 83 e4 f8 81 ec 2c 01 00 00 53 56 57 e8
10533170: ac 7f 02 00 8b f8 89 7c 24 18 c7 44 24 0c 00 00
10533180: 00 00 e8 09 92 e5 ff 85 c0 0f 84 73 01 00 00 8b
10533190: 70 7c 8b 80 80 00 00 00 3b f0 8d 4c 24 38 8b d1
105331a0: 89 54 24 20 8d 94 24 38 01 00 00 89 4c 24 30 89
105331b0: 4c 24 24 89 54 24 28 c7 44 24 2c 7c a1 b1 10 89
105331c0: 44 24 1c 74 55 8b 56 04 8b 1e c1 e2 10 0b 56 08
105331d0: 33 ff 33 c0 0b d0 0b fb 3b 4c 24 28 89 54 24 10
105331e0: 89 7c 24 14 73 14 8b c1 83 c1 08 85 c0 89 4c 24
105331f0: 24 74 1a 89 10 89 78 04 eb 0f 8d 54 24 10 52 51
10533200: 8d 4c 24 28 e8 97 76 00 00 8b 4c 24 24 83 c6 10
10533210: 3b 74 24 1c 75 af 8b 7c 24 18 3b 4c 24 28 ba 80
10533220: 02 00 00 c7 44 24 10 00 00 e0 01 89 54 24 14 73
10533230: 18 8b c1 83 c1 08 85 c0 89 4c 24 24 74 1e c7 00
10533240: 00 00 e0 01 89 50 04 eb 0f 8d 44 24 10 50 51 8d
10533250: 4c 24 28 e8 48 76 00 00 8b 4c 24 24 3b 4c 24 28
10533260: ba 20 03 00 00 c7 44 24 10 00 00 58 02 89 54 24
10533270: 14 73 18 8b c1 83 c1 08 85 c0 89 4c 24 24 74 1e
10533280: c7 00 00 00 58 02 89 50 04 eb 0f 8d 54 24 10 52
10533290: 51 8d 4c 24 28 e8 06 76 00 00 8b 4c 24 24 8b 44
105332a0: 24 20 51 50 e8 47 fe ff ff 8b 44 24 2c 2b 44 24
105332b0: 28 8b 17 8b 92 88 00 00 00 83 c4 08 c1 f8 03 50
105332c0: 8d 4c 24 10 51 8b cf ff d2 8b 44 24 20 8b 4c 24
105332d0: 24 8b 17 8b 92 a0 00 00 00 2b c8 c1 f9 03 51 6a
105332e0: 00 50 8d 44 24 18 50 8b cf ff d2 8b 44 24 20 85
105332f0: c0 74 0f 3b 44 24 30 74 09 50 e8 91 5b 3e 00 83
10533300: c4 04 8b 44 24 0c 5f 5e 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
10533160 <.text+0x532160>:
10533160:	55                                              	push   ebp
10533161:	8b ec                                           	mov    ebp,esp
10533163:	83 e4 f8                                        	and    esp,0xfffffff8
10533166:	81 ec 2c 01 00 00                               	sub    esp,0x12c
1053316c:	53                                              	push   ebx
1053316d:	56                                              	push   esi
1053316e:	57                                              	push   edi
1053316f:	e8 ac 7f 02 00                                  	call   0x1055b120
10533174:	8b f8                                           	mov    edi,eax
10533176:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
1053317a:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
10533182:	e8 09 92 e5 ff                                  	call   0x1038c390
10533187:	85 c0                                           	test   eax,eax
10533189:	0f 84 73 01 00 00                               	je     0x10533302
1053318f:	8b 70 7c                                        	mov    esi,DWORD PTR [eax+0x7c]
10533192:	8b 80 80 00 00 00                               	mov    eax,DWORD PTR [eax+0x80]
10533198:	3b f0                                           	cmp    esi,eax
1053319a:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
1053319e:	8b d1                                           	mov    edx,ecx
105331a0:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
105331a4:	8d 94 24 38 01 00 00                            	lea    edx,[esp+0x138]
105331ab:	89 4c 24 30                                     	mov    DWORD PTR [esp+0x30],ecx
105331af:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
105331b3:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
105331b7:	c7 44 24 2c 7c a1 b1 10                         	mov    DWORD PTR [esp+0x2c],0x10b1a17c
105331bf:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
105331c3:	74 55                                           	je     0x1053321a
105331c5:	8b 56 04                                        	mov    edx,DWORD PTR [esi+0x4]
105331c8:	8b 1e                                           	mov    ebx,DWORD PTR [esi]
105331ca:	c1 e2 10                                        	shl    edx,0x10
105331cd:	0b 56 08                                        	or     edx,DWORD PTR [esi+0x8]
105331d0:	33 ff                                           	xor    edi,edi
105331d2:	33 c0                                           	xor    eax,eax
105331d4:	0b d0                                           	or     edx,eax
105331d6:	0b fb                                           	or     edi,ebx
105331d8:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
105331dc:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
105331e0:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
105331e4:	73 14                                           	jae    0x105331fa
105331e6:	8b c1                                           	mov    eax,ecx
105331e8:	83 c1 08                                        	add    ecx,0x8
105331eb:	85 c0                                           	test   eax,eax
105331ed:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
105331f1:	74 1a                                           	je     0x1053320d
105331f3:	89 10                                           	mov    DWORD PTR [eax],edx
105331f5:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
105331f8:	eb 0f                                           	jmp    0x10533209
105331fa:	8d 54 24 10                                     	lea    edx,[esp+0x10]
105331fe:	52                                              	push   edx
105331ff:	51                                              	push   ecx
10533200:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10533204:	e8 97 76 00 00                                  	call   0x1053a8a0
10533209:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1053320d:	83 c6 10                                        	add    esi,0x10
10533210:	3b 74 24 1c                                     	cmp    esi,DWORD PTR [esp+0x1c]
10533214:	75 af                                           	jne    0x105331c5
10533216:	8b 7c 24 18                                     	mov    edi,DWORD PTR [esp+0x18]
1053321a:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
1053321e:	ba 80 02 00 00                                  	mov    edx,0x280
10533223:	c7 44 24 10 00 00 e0 01                         	mov    DWORD PTR [esp+0x10],0x1e00000
1053322b:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1053322f:	73 18                                           	jae    0x10533249
10533231:	8b c1                                           	mov    eax,ecx
10533233:	83 c1 08                                        	add    ecx,0x8
10533236:	85 c0                                           	test   eax,eax
10533238:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1053323c:	74 1e                                           	je     0x1053325c
1053323e:	c7 00 00 00 e0 01                               	mov    DWORD PTR [eax],0x1e00000
10533244:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10533247:	eb 0f                                           	jmp    0x10533258
10533249:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1053324d:	50                                              	push   eax
1053324e:	51                                              	push   ecx
1053324f:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10533253:	e8 48 76 00 00                                  	call   0x1053a8a0
10533258:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1053325c:	3b 4c 24 28                                     	cmp    ecx,DWORD PTR [esp+0x28]
10533260:	ba 20 03 00 00                                  	mov    edx,0x320
10533265:	c7 44 24 10 00 00 58 02                         	mov    DWORD PTR [esp+0x10],0x2580000
1053326d:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10533271:	73 18                                           	jae    0x1053328b
10533273:	8b c1                                           	mov    eax,ecx
10533275:	83 c1 08                                        	add    ecx,0x8
10533278:	85 c0                                           	test   eax,eax
1053327a:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
1053327e:	74 1e                                           	je     0x1053329e
10533280:	c7 00 00 00 58 02                               	mov    DWORD PTR [eax],0x2580000
10533286:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10533289:	eb 0f                                           	jmp    0x1053329a
1053328b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1053328f:	52                                              	push   edx
10533290:	51                                              	push   ecx
10533291:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
10533295:	e8 06 76 00 00                                  	call   0x1053a8a0
1053329a:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
1053329e:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105332a2:	51                                              	push   ecx
105332a3:	50                                              	push   eax
105332a4:	e8 47 fe ff ff                                  	call   0x105330f0
105332a9:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105332ad:	2b 44 24 28                                     	sub    eax,DWORD PTR [esp+0x28]
105332b1:	8b 17                                           	mov    edx,DWORD PTR [edi]
105332b3:	8b 92 88 00 00 00                               	mov    edx,DWORD PTR [edx+0x88]
105332b9:	83 c4 08                                        	add    esp,0x8
105332bc:	c1 f8 03                                        	sar    eax,0x3
105332bf:	50                                              	push   eax
105332c0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105332c4:	51                                              	push   ecx
105332c5:	8b cf                                           	mov    ecx,edi
105332c7:	ff d2                                           	call   edx
105332c9:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105332cd:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
105332d1:	8b 17                                           	mov    edx,DWORD PTR [edi]
105332d3:	8b 92 a0 00 00 00                               	mov    edx,DWORD PTR [edx+0xa0]
105332d9:	2b c8                                           	sub    ecx,eax
105332db:	c1 f9 03                                        	sar    ecx,0x3
105332de:	51                                              	push   ecx
105332df:	6a 00                                           	push   0x0
105332e1:	50                                              	push   eax
105332e2:	8d 44 24 18                                     	lea    eax,[esp+0x18]
105332e6:	50                                              	push   eax
105332e7:	8b cf                                           	mov    ecx,edi
105332e9:	ff d2                                           	call   edx
105332eb:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
105332ef:	85 c0                                           	test   eax,eax
105332f1:	74 0f                                           	je     0x10533302
105332f3:	3b 44 24 30                                     	cmp    eax,DWORD PTR [esp+0x30]
105332f7:	74 09                                           	je     0x10533302
105332f9:	50                                              	push   eax
105332fa:	e8 91 5b 3e 00                                  	call   0x10918e90
105332ff:	83 c4 04                                        	add    esp,0x4
10533302:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10533306:	5f                                              	pop    edi
10533307:	5e                                              	pop    esi
10533308:	5b                                              	pop    ebx
10533309:	8b e5                                           	mov    esp,ebp
1053330b:	5d                                              	pop    ebp
1053330c:	c3                                              	ret
1053330d:	cc                                              	int3
1053330e:	cc                                              	int3
1053330f:	cc                                              	int3
