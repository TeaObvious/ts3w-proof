# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996720 (WorldTerrainWrap_RemoveUndoStackLimit)
Paired Ghidra pseudocode: 10996720_WorldTerrainWrap_RemoveUndoStackLimit.c
Window: [0x10996720, 0x10996750) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996720: 8b 44 24 04 85 c0 74 25 8b 48 64 85 c9 74 1e 8b
10996730: 41 08 85 c0 74 07 c7 40 3c ff ff ff ff e8 0e 03
10996740: d2 ff 85 c0 74 07 c7 40 70 ff ff ff ff c3 cc cc

LINEAR DISASSEMBLY
10996720 <.text+0x995720>:
10996720:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10996724:	85 c0                                           	test   eax,eax
10996726:	74 25                                           	je     0x1099674d
10996728:	8b 48 64                                        	mov    ecx,DWORD PTR [eax+0x64]
1099672b:	85 c9                                           	test   ecx,ecx
1099672d:	74 1e                                           	je     0x1099674d
1099672f:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
10996732:	85 c0                                           	test   eax,eax
10996734:	74 07                                           	je     0x1099673d
10996736:	c7 40 3c ff ff ff ff                            	mov    DWORD PTR [eax+0x3c],0xffffffff
1099673d:	e8 0e 03 d2 ff                                  	call   0x106b6a50
10996742:	85 c0                                           	test   eax,eax
10996744:	74 07                                           	je     0x1099674d
10996746:	c7 40 70 ff ff ff ff                            	mov    DWORD PTR [eax+0x70],0xffffffff
1099674d:	c3                                              	ret
1099674e:	cc                                              	int3
1099674f:	cc                                              	int3
