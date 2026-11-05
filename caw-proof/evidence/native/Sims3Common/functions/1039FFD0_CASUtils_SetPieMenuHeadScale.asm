# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ffd0 (CASUtils_SetPieMenuHeadScale)
Paired Ghidra pseudocode: 1039FFD0_CASUtils_SetPieMenuHeadScale.c
Window: [0x1039ffd0, 0x1039ffe0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ffe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ffd0: d9 44 24 04 51 d9 1c 24 e8 e3 0b 0f 00 59 c3 cc

LINEAR DISASSEMBLY
1039ffd0 <.text+0x39efd0>:
1039ffd0:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
1039ffd4:	51                                              	push   ecx
1039ffd5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1039ffd8:	e8 e3 0b 0f 00                                  	call   0x10490bc0
1039ffdd:	59                                              	pop    ecx
1039ffde:	c3                                              	ret
1039ffdf:	cc                                              	int3
