# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f4b0 (CameraWrap_GetWorldToViewSpaceMatrix)
Paired Ghidra pseudocode: 1098F4B0_CameraWrap_GetWorldToViewSpaceMatrix.c
Window: [0x1098f4b0, 0x1098f4f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f4f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f4b0: 8b 44 24 08 83 ec 40 56 57 05 b0 00 00 00 50 8d
1098f4c0: 4c 24 0c 51 e8 57 0b ff ff 8b f0 8b 44 24 54 83
1098f4d0: c4 08 b9 10 00 00 00 8b f8 f3 a5 5f 5e 83 c4 40
1098f4e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f4b0 <.text+0x98e4b0>:
1098f4b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098f4b4:	83 ec 40                                        	sub    esp,0x40
1098f4b7:	56                                              	push   esi
1098f4b8:	57                                              	push   edi
1098f4b9:	05 b0 00 00 00                                  	add    eax,0xb0
1098f4be:	50                                              	push   eax
1098f4bf:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1098f4c3:	51                                              	push   ecx
1098f4c4:	e8 57 0b ff ff                                  	call   0x10980020
1098f4c9:	8b f0                                           	mov    esi,eax
1098f4cb:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1098f4cf:	83 c4 08                                        	add    esp,0x8
1098f4d2:	b9 10 00 00 00                                  	mov    ecx,0x10
1098f4d7:	8b f8                                           	mov    edi,eax
1098f4d9:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
1098f4db:	5f                                              	pop    edi
1098f4dc:	5e                                              	pop    esi
1098f4dd:	83 c4 40                                        	add    esp,0x40
1098f4e0:	c3                                              	ret
1098f4e1:	cc                                              	int3
1098f4e2:	cc                                              	int3
1098f4e3:	cc                                              	int3
1098f4e4:	cc                                              	int3
1098f4e5:	cc                                              	int3
1098f4e6:	cc                                              	int3
1098f4e7:	cc                                              	int3
1098f4e8:	cc                                              	int3
1098f4e9:	cc                                              	int3
1098f4ea:	cc                                              	int3
1098f4eb:	cc                                              	int3
1098f4ec:	cc                                              	int3
1098f4ed:	cc                                              	int3
1098f4ee:	cc                                              	int3
1098f4ef:	cc                                              	int3
