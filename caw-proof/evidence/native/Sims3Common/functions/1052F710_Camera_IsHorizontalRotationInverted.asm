# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f710 (Camera_IsHorizontalRotationInverted)
Paired Ghidra pseudocode: 1052F710_Camera_IsHorizontalRotationInverted.c
Window: [0x1052f710, 0x1052f730) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f710: e8 1b cf 22 00 85 c0 74 12 8b c8 e8 60 83 40 00
1052f720: 85 c0 74 07 8a 80 e1 00 00 00 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
1052f710 <.text+0x52e710>:
1052f710:	e8 1b cf 22 00                                  	call   0x1075c630
1052f715:	85 c0                                           	test   eax,eax
1052f717:	74 12                                           	je     0x1052f72b
1052f719:	8b c8                                           	mov    ecx,eax
1052f71b:	e8 60 83 40 00                                  	call   0x10937a80
1052f720:	85 c0                                           	test   eax,eax
1052f722:	74 07                                           	je     0x1052f72b
1052f724:	8a 80 e1 00 00 00                               	mov    al,BYTE PTR [eax+0xe1]
1052f72a:	c3                                              	ret
1052f72b:	32 c0                                           	xor    al,al
1052f72d:	c3                                              	ret
1052f72e:	cc                                              	int3
1052f72f:	cc                                              	int3
