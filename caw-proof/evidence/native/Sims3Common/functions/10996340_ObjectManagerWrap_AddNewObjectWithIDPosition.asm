# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996340 (ObjectManagerWrap_AddNewObjectWithIDPosition)
Paired Ghidra pseudocode: 10996340_ObjectManagerWrap_AddNewObjectWithIDPosition.c
Window: [0x10996340, 0x109963e0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x109963e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996340: 53 8b 5c 24 08 85 db 75 04 33 c0 5b c3 56 e8 4d
10996350: 3e d9 ff 8b 4c 24 14 8b 54 24 10 51 52 8b c8 e8
10996360: 4c 48 d9 ff 8b f0 85 f6 74 6f 57 8d 7e 04 8b c7
10996370: b9 01 00 00 00 f0 0f c1 08 d9 44 24 20 8b 44 24
10996380: 24 8b 13 8b 52 34 50 83 ec 08 d9 5c 24 04 8b cb
10996390: d9 44 24 28 d9 1c 24 56 ff d2 8a d8 84 db 74 0d
109963a0: 6a 00 56 6a 0b e8 46 1f d9 ff 83 c4 0c 33 c0 84
109963b0: db 0f 95 c0 8b cf 83 ca ff 8b d8 f0 0f c1 11 4a
109963c0: 75 11 b8 01 00 00 00 87 07 8b 16 8b 02 6a 01 8b
109963d0: ce ff d0 5f 5e 8b c3 5b c3 5e 33 c0 5b c3 cc cc

LINEAR DISASSEMBLY
10996340 <.text+0x995340>:
10996340:	53                                              	push   ebx
10996341:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
10996345:	85 db                                           	test   ebx,ebx
10996347:	75 04                                           	jne    0x1099634d
10996349:	33 c0                                           	xor    eax,eax
1099634b:	5b                                              	pop    ebx
1099634c:	c3                                              	ret
1099634d:	56                                              	push   esi
1099634e:	e8 4d 3e d9 ff                                  	call   0x1072a1a0
10996353:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10996357:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1099635b:	51                                              	push   ecx
1099635c:	52                                              	push   edx
1099635d:	8b c8                                           	mov    ecx,eax
1099635f:	e8 4c 48 d9 ff                                  	call   0x1072abb0
10996364:	8b f0                                           	mov    esi,eax
10996366:	85 f6                                           	test   esi,esi
10996368:	74 6f                                           	je     0x109963d9
1099636a:	57                                              	push   edi
1099636b:	8d 7e 04                                        	lea    edi,[esi+0x4]
1099636e:	8b c7                                           	mov    eax,edi
10996370:	b9 01 00 00 00                                  	mov    ecx,0x1
10996375:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
10996379:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
1099637d:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10996381:	8b 13                                           	mov    edx,DWORD PTR [ebx]
10996383:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
10996386:	50                                              	push   eax
10996387:	83 ec 08                                        	sub    esp,0x8
1099638a:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1099638e:	8b cb                                           	mov    ecx,ebx
10996390:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
10996394:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996397:	56                                              	push   esi
10996398:	ff d2                                           	call   edx
1099639a:	8a d8                                           	mov    bl,al
1099639c:	84 db                                           	test   bl,bl
1099639e:	74 0d                                           	je     0x109963ad
109963a0:	6a 00                                           	push   0x0
109963a2:	56                                              	push   esi
109963a3:	6a 0b                                           	push   0xb
109963a5:	e8 46 1f d9 ff                                  	call   0x107282f0
109963aa:	83 c4 0c                                        	add    esp,0xc
109963ad:	33 c0                                           	xor    eax,eax
109963af:	84 db                                           	test   bl,bl
109963b1:	0f 95 c0                                        	setne  al
109963b4:	8b cf                                           	mov    ecx,edi
109963b6:	83 ca ff                                        	or     edx,0xffffffff
109963b9:	8b d8                                           	mov    ebx,eax
109963bb:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
109963bf:	4a                                              	dec    edx
109963c0:	75 11                                           	jne    0x109963d3
109963c2:	b8 01 00 00 00                                  	mov    eax,0x1
109963c7:	87 07                                           	xchg   DWORD PTR [edi],eax
109963c9:	8b 16                                           	mov    edx,DWORD PTR [esi]
109963cb:	8b 02                                           	mov    eax,DWORD PTR [edx]
109963cd:	6a 01                                           	push   0x1
109963cf:	8b ce                                           	mov    ecx,esi
109963d1:	ff d0                                           	call   eax
109963d3:	5f                                              	pop    edi
109963d4:	5e                                              	pop    esi
109963d5:	8b c3                                           	mov    eax,ebx
109963d7:	5b                                              	pop    ebx
109963d8:	c3                                              	ret
109963d9:	5e                                              	pop    esi
109963da:	33 c0                                           	xor    eax,eax
109963dc:	5b                                              	pop    ebx
109963dd:	c3                                              	ret
109963de:	cc                                              	int3
109963df:	cc                                              	int3
