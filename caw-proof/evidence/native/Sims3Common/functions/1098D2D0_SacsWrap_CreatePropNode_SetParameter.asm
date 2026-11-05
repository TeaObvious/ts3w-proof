# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098d2d0 (SacsWrap_CreatePropNode_SetParameter)
Paired Ghidra pseudocode: 1098D2D0_SacsWrap_CreatePropNode_SetParameter.c
Window: [0x1098d2d0, 0x1098d2f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098d2f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098d2d0: 8b 4c 24 04 85 c9 74 0a 8b 44 24 08 50 e8 ee 9d
1098d2e0: c5 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098d2d0 <.text+0x98c2d0>:
1098d2d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098d2d4:	85 c9                                           	test   ecx,ecx
1098d2d6:	74 0a                                           	je     0x1098d2e2
1098d2d8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1098d2dc:	50                                              	push   eax
1098d2dd:	e8 ee 9d c5 ff                                  	call   0x105e70d0
1098d2e2:	c3                                              	ret
1098d2e3:	cc                                              	int3
1098d2e4:	cc                                              	int3
1098d2e5:	cc                                              	int3
1098d2e6:	cc                                              	int3
1098d2e7:	cc                                              	int3
1098d2e8:	cc                                              	int3
1098d2e9:	cc                                              	int3
1098d2ea:	cc                                              	int3
1098d2eb:	cc                                              	int3
1098d2ec:	cc                                              	int3
1098d2ed:	cc                                              	int3
1098d2ee:	cc                                              	int3
1098d2ef:	cc                                              	int3
