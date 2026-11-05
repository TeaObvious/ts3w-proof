# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105592e0 (SACS_IsEventQueueValidImpl)
Paired Ghidra pseudocode: 105592E0_SACS_IsEventQueueValidImpl.c
Window: [0x105592e0, 0x10559330) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10559330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105592e0: 56 e8 3a 1e 00 00 8b 4c 24 08 8b f0 8b 06 8b 90
105592f0: cc 00 00 00 51 8b ce ff d2 85 c0 74 2a 8b 80 2c
10559300: 01 00 00 8b 16 6a 22 50 8b 82 c8 00 00 00 8b ce
10559310: ff d0 85 c0 74 11 8b 16 50 8b 82 d8 00 00 00 8b
10559320: ce ff d0 b0 01 5e c3 32 c0 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
105592e0 <.text+0x5582e0>:
105592e0:	56                                              	push   esi
105592e1:	e8 3a 1e 00 00                                  	call   0x1055b120
105592e6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105592ea:	8b f0                                           	mov    esi,eax
105592ec:	8b 06                                           	mov    eax,DWORD PTR [esi]
105592ee:	8b 90 cc 00 00 00                               	mov    edx,DWORD PTR [eax+0xcc]
105592f4:	51                                              	push   ecx
105592f5:	8b ce                                           	mov    ecx,esi
105592f7:	ff d2                                           	call   edx
105592f9:	85 c0                                           	test   eax,eax
105592fb:	74 2a                                           	je     0x10559327
105592fd:	8b 80 2c 01 00 00                               	mov    eax,DWORD PTR [eax+0x12c]
10559303:	8b 16                                           	mov    edx,DWORD PTR [esi]
10559305:	6a 22                                           	push   0x22
10559307:	50                                              	push   eax
10559308:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
1055930e:	8b ce                                           	mov    ecx,esi
10559310:	ff d0                                           	call   eax
10559312:	85 c0                                           	test   eax,eax
10559314:	74 11                                           	je     0x10559327
10559316:	8b 16                                           	mov    edx,DWORD PTR [esi]
10559318:	50                                              	push   eax
10559319:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
1055931f:	8b ce                                           	mov    ecx,esi
10559321:	ff d0                                           	call   eax
10559323:	b0 01                                           	mov    al,0x1
10559325:	5e                                              	pop    esi
10559326:	c3                                              	ret
10559327:	32 c0                                           	xor    al,al
10559329:	5e                                              	pop    esi
1055932a:	c3                                              	ret
1055932b:	cc                                              	int3
1055932c:	cc                                              	int3
1055932d:	cc                                              	int3
1055932e:	cc                                              	int3
1055932f:	cc                                              	int3
