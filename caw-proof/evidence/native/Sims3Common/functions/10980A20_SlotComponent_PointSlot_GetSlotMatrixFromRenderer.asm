# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980a20 (SlotComponent_PointSlot_GetSlotMatrixFromRenderer)
Paired Ghidra pseudocode: 10980A20_SlotComponent_PointSlot_GetSlotMatrixFromRenderer.c
Window: [0x10980a20, 0x10980a80) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980a80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980a20: 8b 54 24 08 83 ec 40 85 d2 56 57 74 31 8b 44 24
10980a30: 54 8b 48 08 8b 40 0c 6a 00 52 50 51 8d 44 24 18
10980a40: 50 e8 7a fe ff ff 8b f0 8b 44 24 60 83 c4 14 b9
10980a50: 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40 c3 8b 44
10980a60: 24 4c be 50 63 b9 10 b9 10 00 00 00 8b f8 f3 a5
10980a70: 5f 5e 83 c4 40 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980a20 <.text+0x97fa20>:
10980a20:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10980a24:	83 ec 40                                        	sub    esp,0x40
10980a27:	85 d2                                           	test   edx,edx
10980a29:	56                                              	push   esi
10980a2a:	57                                              	push   edi
10980a2b:	74 31                                           	je     0x10980a5e
10980a2d:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
10980a31:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10980a34:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10980a37:	6a 00                                           	push   0x0
10980a39:	52                                              	push   edx
10980a3a:	50                                              	push   eax
10980a3b:	51                                              	push   ecx
10980a3c:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10980a40:	50                                              	push   eax
10980a41:	e8 7a fe ff ff                                  	call   0x109808c0
10980a46:	8b f0                                           	mov    esi,eax
10980a48:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
10980a4c:	83 c4 14                                        	add    esp,0x14
10980a4f:	b9 10 00 00 00                                  	mov    ecx,0x10
10980a54:	8b f8                                           	mov    edi,eax
10980a56:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980a58:	5f                                              	pop    edi
10980a59:	5e                                              	pop    esi
10980a5a:	83 c4 40                                        	add    esp,0x40
10980a5d:	c3                                              	ret
10980a5e:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
10980a62:	be 50 63 b9 10                                  	mov    esi,0x10b96350
10980a67:	b9 10 00 00 00                                  	mov    ecx,0x10
10980a6c:	8b f8                                           	mov    edi,eax
10980a6e:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10980a70:	5f                                              	pop    edi
10980a71:	5e                                              	pop    esi
10980a72:	83 c4 40                                        	add    esp,0x40
10980a75:	c3                                              	ret
10980a76:	cc                                              	int3
10980a77:	cc                                              	int3
10980a78:	cc                                              	int3
10980a79:	cc                                              	int3
10980a7a:	cc                                              	int3
10980a7b:	cc                                              	int3
10980a7c:	cc                                              	int3
10980a7d:	cc                                              	int3
10980a7e:	cc                                              	int3
10980a7f:	cc                                              	int3
