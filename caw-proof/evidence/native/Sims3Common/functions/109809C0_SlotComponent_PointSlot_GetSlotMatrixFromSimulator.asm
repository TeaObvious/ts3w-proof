# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109809c0 (SlotComponent_PointSlot_GetSlotMatrixFromSimulator)
Paired Ghidra pseudocode: 109809C0_SlotComponent_PointSlot_GetSlotMatrixFromSimulator.c
Window: [0x109809c0, 0x10980a20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109809c0: 55 8b ec 83 e4 f0 8b 4d 0c 81 ec 88 00 00 00 85
109809d0: c9 56 57 74 2e 8b 01 8b 40 14 8d 54 24 10 52 ff
109809e0: d0 50 8d 4c 24 54 51 e8 34 f6 ff ff 8b f0 8b 45
109809f0: 08 b9 10 00 00 00 8b f8 83 c4 08 f3 a5 5f 5e 8b
10980a00: e5 5d c3 8b 45 08 be 50 63 b9 10 b9 10 00 00 00
10980a10: 8b f8 f3 a5 5f 5e 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
109809c0 <.text+0x97f9c0>:
109809c0:	55                                              	push   ebp
109809c1:	8b ec                                           	mov    ebp,esp
109809c3:	83 e4 f0                                        	and    esp,0xfffffff0
109809c6:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
109809c9:	81 ec 88 00 00 00                               	sub    esp,0x88
109809cf:	85 c9                                           	test   ecx,ecx
109809d1:	56                                              	push   esi
109809d2:	57                                              	push   edi
109809d3:	74 2e                                           	je     0x10980a03
109809d5:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109809d7:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
109809da:	8d 54 24 10                                     	lea    edx,[esp+0x10]
109809de:	52                                              	push   edx
109809df:	ff d0                                           	call   eax
109809e1:	50                                              	push   eax
109809e2:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
109809e6:	51                                              	push   ecx
109809e7:	e8 34 f6 ff ff                                  	call   0x10980020
109809ec:	8b f0                                           	mov    esi,eax
109809ee:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109809f1:	b9 10 00 00 00                                  	mov    ecx,0x10
109809f6:	8b f8                                           	mov    edi,eax
109809f8:	83 c4 08                                        	add    esp,0x8
109809fb:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
109809fd:	5f                                              	pop    edi
109809fe:	5e                                              	pop    esi
109809ff:	8b e5                                           	mov    esp,ebp
10980a01:	5d                                              	pop    ebp
10980a02:	c3                                              	ret
10980a03:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10980a06:	be 50 63 b9 10                                  	mov    esi,0x10b96350
10980a0b:	b9 10 00 00 00                                  	mov    ecx,0x10
10980a10:	8b f8                                           	mov    edi,eax
10980a12:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980a14:	5f                                              	pop    edi
10980a15:	5e                                              	pop    esi
10980a16:	8b e5                                           	mov    esp,ebp
10980a18:	5d                                              	pop    ebp
10980a19:	c3                                              	ret
10980a1a:	cc                                              	int3
10980a1b:	cc                                              	int3
10980a1c:	cc                                              	int3
10980a1d:	cc                                              	int3
10980a1e:	cc                                              	int3
10980a1f:	cc                                              	int3
