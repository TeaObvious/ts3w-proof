# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d620 (App3D_UpdateApp3D)
Paired Ghidra pseudocode: 1097D620_App3D_UpdateApp3D.c
Window: [0x1097d620, 0x1097d650) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d620: d9 44 24 08 83 ec 08 d9 5c 24 04 d9 44 24 0c d9
1097d630: 1c 24 e8 69 94 a0 ff 83 c4 08 b9 38 26 c7 10 e9
1097d640: 9c 0d a1 ff cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d620 <.text+0x97c620>:
1097d620:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1097d624:	83 ec 08                                        	sub    esp,0x8
1097d627:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1097d62b:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1097d62f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d632:	e8 69 94 a0 ff                                  	call   0x10386aa0
1097d637:	83 c4 08                                        	add    esp,0x8
1097d63a:	b9 38 26 c7 10                                  	mov    ecx,0x10c72638
1097d63f:	e9 9c 0d a1 ff                                  	jmp    0x1038e3e0
1097d644:	cc                                              	int3
1097d645:	cc                                              	int3
1097d646:	cc                                              	int3
1097d647:	cc                                              	int3
1097d648:	cc                                              	int3
1097d649:	cc                                              	int3
1097d64a:	cc                                              	int3
1097d64b:	cc                                              	int3
1097d64c:	cc                                              	int3
1097d64d:	cc                                              	int3
1097d64e:	cc                                              	int3
1097d64f:	cc                                              	int3
