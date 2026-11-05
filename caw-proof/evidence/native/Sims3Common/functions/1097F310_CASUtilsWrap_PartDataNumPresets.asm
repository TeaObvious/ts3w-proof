# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f310 (CASUtilsWrap_PartDataNumPresets)
Paired Ghidra pseudocode: 1097F310_CASUtilsWrap_PartDataNumPresets.c
Window: [0x1097f310, 0x1097f3b0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f3b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f310: 83 ec 14 e8 b8 5d f6 ff 8b 4c 24 20 8b 54 24 24
1097f320: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 89 4c 24 14
1097f330: 6a 00 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
1097f340: 51 89 54 24 24 c7 44 24 14 00 00 00 00 8b 10 8b
1097f350: 52 0c 8d 4c 24 18 51 8b c8 ff d2 84 c0 75 06 33
1097f360: c0 83 c4 14 c3 8b 0c 24 85 c9 56 74 16 8b 01 8b
1097f370: 50 0c 68 7b 77 4c 03 ff d2 8b f0 85 f6 75 12 8b
1097f380: 4c 24 04 8b 01 8b 50 04 ff d2 33 c0 5e 83 c4 14
1097f390: c3 57 8b ce e8 67 b4 a2 ff 8b f8 8b 06 8b 50 04
1097f3a0: 8b ce ff d2 8b c7 5f 5e 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
1097f310 <.text+0x97e310>:
1097f310:	83 ec 14                                        	sub    esp,0x14
1097f313:	e8 b8 5d f6 ff                                  	call   0x108e50d0
1097f318:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1097f31c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1097f320:	6a 00                                           	push   0x0
1097f322:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1097f326:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1097f32a:	6a 00                                           	push   0x0
1097f32c:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
1097f330:	6a 00                                           	push   0x0
1097f332:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
1097f336:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
1097f33a:	6a 00                                           	push   0x0
1097f33c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097f340:	51                                              	push   ecx
1097f341:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
1097f345:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1097f34d:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097f34f:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1097f352:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1097f356:	51                                              	push   ecx
1097f357:	8b c8                                           	mov    ecx,eax
1097f359:	ff d2                                           	call   edx
1097f35b:	84 c0                                           	test   al,al
1097f35d:	75 06                                           	jne    0x1097f365
1097f35f:	33 c0                                           	xor    eax,eax
1097f361:	83 c4 14                                        	add    esp,0x14
1097f364:	c3                                              	ret
1097f365:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1097f368:	85 c9                                           	test   ecx,ecx
1097f36a:	56                                              	push   esi
1097f36b:	74 16                                           	je     0x1097f383
1097f36d:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f36f:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097f372:	68 7b 77 4c 03                                  	push   0x34c777b
1097f377:	ff d2                                           	call   edx
1097f379:	8b f0                                           	mov    esi,eax
1097f37b:	85 f6                                           	test   esi,esi
1097f37d:	75 12                                           	jne    0x1097f391
1097f37f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f383:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097f385:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f388:	ff d2                                           	call   edx
1097f38a:	33 c0                                           	xor    eax,eax
1097f38c:	5e                                              	pop    esi
1097f38d:	83 c4 14                                        	add    esp,0x14
1097f390:	c3                                              	ret
1097f391:	57                                              	push   edi
1097f392:	8b ce                                           	mov    ecx,esi
1097f394:	e8 67 b4 a2 ff                                  	call   0x103aa800
1097f399:	8b f8                                           	mov    edi,eax
1097f39b:	8b 06                                           	mov    eax,DWORD PTR [esi]
1097f39d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f3a0:	8b ce                                           	mov    ecx,esi
1097f3a2:	ff d2                                           	call   edx
1097f3a4:	8b c7                                           	mov    eax,edi
1097f3a6:	5f                                              	pop    edi
1097f3a7:	5e                                              	pop    esi
1097f3a8:	83 c4 14                                        	add    esp,0x14
1097f3ab:	c3                                              	ret
1097f3ac:	cc                                              	int3
1097f3ad:	cc                                              	int3
1097f3ae:	cc                                              	int3
1097f3af:	cc                                              	int3
