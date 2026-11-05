# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f730 (Camera_IsVerticalRotationInverted)
Paired Ghidra pseudocode: 1052F730_Camera_IsVerticalRotationInverted.c
Window: [0x1052f730, 0x1052f750) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f730: e8 fb ce 22 00 85 c0 74 12 8b c8 e8 40 83 40 00
1052f740: 85 c0 74 07 8a 80 e2 00 00 00 c3 32 c0 c3 cc cc

LINEAR DISASSEMBLY
1052f730 <.text+0x52e730>:
1052f730:	e8 fb ce 22 00                                  	call   0x1075c630
1052f735:	85 c0                                           	test   eax,eax
1052f737:	74 12                                           	je     0x1052f74b
1052f739:	8b c8                                           	mov    ecx,eax
1052f73b:	e8 40 83 40 00                                  	call   0x10937a80
1052f740:	85 c0                                           	test   eax,eax
1052f742:	74 07                                           	je     0x1052f74b
1052f744:	8a 80 e2 00 00 00                               	mov    al,BYTE PTR [eax+0xe2]
1052f74a:	c3                                              	ret
1052f74b:	32 c0                                           	xor    al,al
1052f74d:	c3                                              	ret
1052f74e:	cc                                              	int3
1052f74f:	cc                                              	int3
