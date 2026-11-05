# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055f2f0 (Simulator_CountResources)
Paired Ghidra pseudocode: 1055F2F0_Simulator_CountResources.c
Window: [0x1055f2f0, 0x1055f3e0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055f3e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055f2f0: 83 ec 24 8b 44 24 28 8b 4c 24 2c 8b 54 24 34 89
1055f300: 04 24 8b 44 24 30 56 57 89 4c 24 0c 89 54 24 10
1055f310: 89 44 24 14 e8 17 35 1c 00 33 c9 89 4c 24 18 89
1055f320: 4c 24 1c 8d 4c 24 18 8b d1 33 ff 89 44 24 20 89
1055f330: 7c 24 24 c7 44 24 28 c4 f3 b1 10 89 4c 24 18 89
1055f340: 54 24 1c e8 88 5d 38 00 8b 10 8b 52 48 8d 4c 24
1055f350: 08 51 8d 4c 24 1c 51 8b c8 ff d2 85 c0 8b 74 24
1055f360: 18 76 44 8d 4c 24 18 3b f1 8b c6 74 10 8d 49 00
1055f370: 8b 00 8d 54 24 18 83 c7 01 3b c2 75 f3 8d 44 24
1055f380: 18 3b f0 74 1a 8b 4c 24 20 8b 11 8b c6 8b 36 6a
1055f390: 0c 50 8b 42 0c ff d0 8d 4c 24 18 3b f1 75 e6 8b
1055f3a0: c7 5f 5e 83 c4 24 c3 8d 54 24 18 3b f2 74 1b 90
1055f3b0: 8b 4c 24 20 8b 11 8b c6 8b 36 6a 0c 50 8b 42 0c
1055f3c0: ff d0 8d 4c 24 18 3b f1 75 e6 5f 33 c0 5e 83 c4
1055f3d0: 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055f2f0 <.text+0x55e2f0>:
1055f2f0:	83 ec 24                                        	sub    esp,0x24
1055f2f3:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
1055f2f7:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1055f2fb:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1055f2ff:	89 04 24                                        	mov    DWORD PTR [esp],eax
1055f302:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
1055f306:	56                                              	push   esi
1055f307:	57                                              	push   edi
1055f308:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1055f30c:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1055f310:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1055f314:	e8 17 35 1c 00                                  	call   0x10722830
1055f319:	33 c9                                           	xor    ecx,ecx
1055f31b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1055f31f:	89 4c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ecx
1055f323:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055f327:	8b d1                                           	mov    edx,ecx
1055f329:	33 ff                                           	xor    edi,edi
1055f32b:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1055f32f:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
1055f333:	c7 44 24 28 c4 f3 b1 10                         	mov    DWORD PTR [esp+0x28],0x10b1f3c4
1055f33b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1055f33f:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
1055f343:	e8 88 5d 38 00                                  	call   0x108e50d0
1055f348:	8b 10                                           	mov    edx,DWORD PTR [eax]
1055f34a:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
1055f34d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1055f351:	51                                              	push   ecx
1055f352:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
1055f356:	51                                              	push   ecx
1055f357:	8b c8                                           	mov    ecx,eax
1055f359:	ff d2                                           	call   edx
1055f35b:	85 c0                                           	test   eax,eax
1055f35d:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
1055f361:	76 44                                           	jbe    0x1055f3a7
1055f363:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055f367:	3b f1                                           	cmp    esi,ecx
1055f369:	8b c6                                           	mov    eax,esi
1055f36b:	74 10                                           	je     0x1055f37d
1055f36d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
1055f370:	8b 00                                           	mov    eax,DWORD PTR [eax]
1055f372:	8d 54 24 18                                     	lea    edx,[esp+0x18]
1055f376:	83 c7 01                                        	add    edi,0x1
1055f379:	3b c2                                           	cmp    eax,edx
1055f37b:	75 f3                                           	jne    0x1055f370
1055f37d:	8d 44 24 18                                     	lea    eax,[esp+0x18]
1055f381:	3b f0                                           	cmp    esi,eax
1055f383:	74 1a                                           	je     0x1055f39f
1055f385:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1055f389:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055f38b:	8b c6                                           	mov    eax,esi
1055f38d:	8b 36                                           	mov    esi,DWORD PTR [esi]
1055f38f:	6a 0c                                           	push   0xc
1055f391:	50                                              	push   eax
1055f392:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1055f395:	ff d0                                           	call   eax
1055f397:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055f39b:	3b f1                                           	cmp    esi,ecx
1055f39d:	75 e6                                           	jne    0x1055f385
1055f39f:	8b c7                                           	mov    eax,edi
1055f3a1:	5f                                              	pop    edi
1055f3a2:	5e                                              	pop    esi
1055f3a3:	83 c4 24                                        	add    esp,0x24
1055f3a6:	c3                                              	ret
1055f3a7:	8d 54 24 18                                     	lea    edx,[esp+0x18]
1055f3ab:	3b f2                                           	cmp    esi,edx
1055f3ad:	74 1b                                           	je     0x1055f3ca
1055f3af:	90                                              	nop
1055f3b0:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1055f3b4:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1055f3b6:	8b c6                                           	mov    eax,esi
1055f3b8:	8b 36                                           	mov    esi,DWORD PTR [esi]
1055f3ba:	6a 0c                                           	push   0xc
1055f3bc:	50                                              	push   eax
1055f3bd:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1055f3c0:	ff d0                                           	call   eax
1055f3c2:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1055f3c6:	3b f1                                           	cmp    esi,ecx
1055f3c8:	75 e6                                           	jne    0x1055f3b0
1055f3ca:	5f                                              	pop    edi
1055f3cb:	33 c0                                           	xor    eax,eax
1055f3cd:	5e                                              	pop    esi
1055f3ce:	83 c4 24                                        	add    esp,0x24
1055f3d1:	c3                                              	ret
1055f3d2:	cc                                              	int3
1055f3d3:	cc                                              	int3
1055f3d4:	cc                                              	int3
1055f3d5:	cc                                              	int3
1055f3d6:	cc                                              	int3
1055f3d7:	cc                                              	int3
1055f3d8:	cc                                              	int3
1055f3d9:	cc                                              	int3
1055f3da:	cc                                              	int3
1055f3db:	cc                                              	int3
1055f3dc:	cc                                              	int3
1055f3dd:	cc                                              	int3
1055f3de:	cc                                              	int3
1055f3df:	cc                                              	int3
