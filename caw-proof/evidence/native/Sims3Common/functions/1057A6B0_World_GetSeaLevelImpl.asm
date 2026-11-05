# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a6b0 (World_GetSeaLevelImpl)
Paired Ghidra pseudocode: 1057A6B0_World_GetSeaLevelImpl.c
Window: [0x1057a6b0, 0x1057a6d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a6b0: 51 8b 0d c4 00 c7 10 85 c9 74 08 83 c4 04 e9 7d
1057a6c0: ae cb ff 0f 57 c0 f3 0f 11 04 24 d9 04 24 59 c3

LINEAR DISASSEMBLY
1057a6b0 <.text+0x5796b0>:
1057a6b0:	51                                              	push   ecx
1057a6b1:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a6b7:	85 c9                                           	test   ecx,ecx
1057a6b9:	74 08                                           	je     0x1057a6c3
1057a6bb:	83 c4 04                                        	add    esp,0x4
1057a6be:	e9 7d ae cb ff                                  	jmp    0x10235540
1057a6c3:	0f 57 c0                                        	xorps  xmm0,xmm0
1057a6c6:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057a6cb:	d9 04 24                                        	fld    DWORD PTR [esp]
1057a6ce:	59                                              	pop    ecx
1057a6cf:	c3                                              	ret
