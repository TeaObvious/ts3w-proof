# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109962b0 (ObjectManagerWrap_AddNewObjectWithID)
Paired Ghidra pseudocode: 109962B0_ObjectManagerWrap_AddNewObjectWithID.c
Window: [0x109962b0, 0x10996340) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109962b0: 53 8b 5c 24 08 85 db 75 04 33 c0 5b c3 56 e8 dd
109962c0: 3e d9 ff 8b 4c 24 14 8b 54 24 10 51 52 8b c8 e8
109962d0: dc 48 d9 ff 8b f0 85 f6 74 58 57 8d 7e 04 8b c7
109962e0: b9 01 00 00 00 f0 0f c1 08 8b 13 8b 42 30 56 8b
109962f0: cb ff d0 8a d8 84 db 74 0d 6a 00 56 6a 0b e8 ed
10996300: 1f d9 ff 83 c4 0c 33 c9 84 db 0f 95 c1 8b d7 83
10996310: c8 ff 8b d9 f0 0f c1 02 48 75 11 b9 01 00 00 00
10996320: 87 0f 8b 16 8b 02 6a 01 8b ce ff d0 5f 5e 8b c3
10996330: 5b c3 5e 33 c0 5b c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109962b0 <.text+0x9952b0>:
109962b0:	53                                              	push   ebx
109962b1:	8b 5c 24 08                                     	mov    ebx,DWORD PTR [esp+0x8]
109962b5:	85 db                                           	test   ebx,ebx
109962b7:	75 04                                           	jne    0x109962bd
109962b9:	33 c0                                           	xor    eax,eax
109962bb:	5b                                              	pop    ebx
109962bc:	c3                                              	ret
109962bd:	56                                              	push   esi
109962be:	e8 dd 3e d9 ff                                  	call   0x1072a1a0
109962c3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
109962c7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
109962cb:	51                                              	push   ecx
109962cc:	52                                              	push   edx
109962cd:	8b c8                                           	mov    ecx,eax
109962cf:	e8 dc 48 d9 ff                                  	call   0x1072abb0
109962d4:	8b f0                                           	mov    esi,eax
109962d6:	85 f6                                           	test   esi,esi
109962d8:	74 58                                           	je     0x10996332
109962da:	57                                              	push   edi
109962db:	8d 7e 04                                        	lea    edi,[esi+0x4]
109962de:	8b c7                                           	mov    eax,edi
109962e0:	b9 01 00 00 00                                  	mov    ecx,0x1
109962e5:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
109962e9:	8b 13                                           	mov    edx,DWORD PTR [ebx]
109962eb:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
109962ee:	56                                              	push   esi
109962ef:	8b cb                                           	mov    ecx,ebx
109962f1:	ff d0                                           	call   eax
109962f3:	8a d8                                           	mov    bl,al
109962f5:	84 db                                           	test   bl,bl
109962f7:	74 0d                                           	je     0x10996306
109962f9:	6a 00                                           	push   0x0
109962fb:	56                                              	push   esi
109962fc:	6a 0b                                           	push   0xb
109962fe:	e8 ed 1f d9 ff                                  	call   0x107282f0
10996303:	83 c4 0c                                        	add    esp,0xc
10996306:	33 c9                                           	xor    ecx,ecx
10996308:	84 db                                           	test   bl,bl
1099630a:	0f 95 c1                                        	setne  cl
1099630d:	8b d7                                           	mov    edx,edi
1099630f:	83 c8 ff                                        	or     eax,0xffffffff
10996312:	8b d9                                           	mov    ebx,ecx
10996314:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
10996318:	48                                              	dec    eax
10996319:	75 11                                           	jne    0x1099632c
1099631b:	b9 01 00 00 00                                  	mov    ecx,0x1
10996320:	87 0f                                           	xchg   DWORD PTR [edi],ecx
10996322:	8b 16                                           	mov    edx,DWORD PTR [esi]
10996324:	8b 02                                           	mov    eax,DWORD PTR [edx]
10996326:	6a 01                                           	push   0x1
10996328:	8b ce                                           	mov    ecx,esi
1099632a:	ff d0                                           	call   eax
1099632c:	5f                                              	pop    edi
1099632d:	5e                                              	pop    esi
1099632e:	8b c3                                           	mov    eax,ebx
10996330:	5b                                              	pop    ebx
10996331:	c3                                              	ret
10996332:	5e                                              	pop    esi
10996333:	33 c0                                           	xor    eax,eax
10996335:	5b                                              	pop    ebx
10996336:	c3                                              	ret
10996337:	cc                                              	int3
10996338:	cc                                              	int3
10996339:	cc                                              	int3
1099633a:	cc                                              	int3
1099633b:	cc                                              	int3
1099633c:	cc                                              	int3
1099633d:	cc                                              	int3
1099633e:	cc                                              	int3
1099633f:	cc                                              	int3
