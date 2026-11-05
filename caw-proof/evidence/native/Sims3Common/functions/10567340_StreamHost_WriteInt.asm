# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567340 (StreamHost_WriteInt)
Paired Ghidra pseudocode: 10567340_StreamHost_WriteInt.c
Window: [0x10567340, 0x105673e0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x105673e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567340: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 35 a8
10567350: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
10567360: 60 74 04 33 f6 eb 23 e8 b4 3d ff ff 8b 10 8b c8
10567370: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
10567380: c7 10 89 35 a4 b0 c7 10 8b f0 85 f6 75 05 8d 46
10567390: fe 5e c3 57 8b 7c 24 14 83 ff 04 7e 08 5f b8 f9
105673a0: ff ff ff 5e c3 8b 4c 24 10 57 51 8d 54 24 14 52
105673b0: e8 4b fe ff ff 8b 06 8b 50 38 83 c4 0c 57 8d 4c
105673c0: 24 10 51 8b ce ff d2 f6 d8 5f 5e 1b c0 83 e0 03
105673d0: 83 c0 fd c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567340 <.text+0x566340>:
10567340:	56                                              	push   esi
10567341:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567345:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056734b:	75 08                                           	jne    0x10567355
1056734d:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
10567353:	eb 35                                           	jmp    0x1056738a
10567355:	8b c6                                           	mov    eax,esi
10567357:	25 00 00 00 ff                                  	and    eax,0xff000000
1056735c:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567361:	74 04                                           	je     0x10567367
10567363:	33 f6                                           	xor    esi,esi
10567365:	eb 23                                           	jmp    0x1056738a
10567367:	e8 b4 3d ff ff                                  	call   0x1055b120
1056736c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056736e:	8b c8                                           	mov    ecx,eax
10567370:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567376:	56                                              	push   esi
10567377:	ff d0                                           	call   eax
10567379:	85 c0                                           	test   eax,eax
1056737b:	74 0b                                           	je     0x10567388
1056737d:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567382:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
10567388:	8b f0                                           	mov    esi,eax
1056738a:	85 f6                                           	test   esi,esi
1056738c:	75 05                                           	jne    0x10567393
1056738e:	8d 46 fe                                        	lea    eax,[esi-0x2]
10567391:	5e                                              	pop    esi
10567392:	c3                                              	ret
10567393:	57                                              	push   edi
10567394:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
10567398:	83 ff 04                                        	cmp    edi,0x4
1056739b:	7e 08                                           	jle    0x105673a5
1056739d:	5f                                              	pop    edi
1056739e:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
105673a3:	5e                                              	pop    esi
105673a4:	c3                                              	ret
105673a5:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
105673a9:	57                                              	push   edi
105673aa:	51                                              	push   ecx
105673ab:	8d 54 24 14                                     	lea    edx,[esp+0x14]
105673af:	52                                              	push   edx
105673b0:	e8 4b fe ff ff                                  	call   0x10567200
105673b5:	8b 06                                           	mov    eax,DWORD PTR [esi]
105673b7:	8b 50 38                                        	mov    edx,DWORD PTR [eax+0x38]
105673ba:	83 c4 0c                                        	add    esp,0xc
105673bd:	57                                              	push   edi
105673be:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
105673c2:	51                                              	push   ecx
105673c3:	8b ce                                           	mov    ecx,esi
105673c5:	ff d2                                           	call   edx
105673c7:	f6 d8                                           	neg    al
105673c9:	5f                                              	pop    edi
105673ca:	5e                                              	pop    esi
105673cb:	1b c0                                           	sbb    eax,eax
105673cd:	83 e0 03                                        	and    eax,0x3
105673d0:	83 c0 fd                                        	add    eax,0xfffffffd
105673d3:	c3                                              	ret
105673d4:	cc                                              	int3
105673d5:	cc                                              	int3
105673d6:	cc                                              	int3
105673d7:	cc                                              	int3
105673d8:	cc                                              	int3
105673d9:	cc                                              	int3
105673da:	cc                                              	int3
105673db:	cc                                              	int3
105673dc:	cc                                              	int3
105673dd:	cc                                              	int3
105673de:	cc                                              	int3
105673df:	cc                                              	int3
