# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997dc0 (WorldWrap_CreateNewLayer)
Paired Ghidra pseudocode: 10997DC0_WorldWrap_CreateNewLayer.c
Window: [0x10997dc0, 0x10997de0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997de0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997dc0: 8b 4c 24 04 85 c9 74 08 6a 00 e8 61 b7 89 ff c3
10997dd0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997dc0 <.text+0x996dc0>:
10997dc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997dc4:	85 c9                                           	test   ecx,ecx
10997dc6:	74 08                                           	je     0x10997dd0
10997dc8:	6a 00                                           	push   0x0
10997dca:	e8 61 b7 89 ff                                  	call   0x10233530
10997dcf:	c3                                              	ret
10997dd0:	33 c0                                           	xor    eax,eax
10997dd2:	c3                                              	ret
10997dd3:	cc                                              	int3
10997dd4:	cc                                              	int3
10997dd5:	cc                                              	int3
10997dd6:	cc                                              	int3
10997dd7:	cc                                              	int3
10997dd8:	cc                                              	int3
10997dd9:	cc                                              	int3
10997dda:	cc                                              	int3
10997ddb:	cc                                              	int3
10997ddc:	cc                                              	int3
10997ddd:	cc                                              	int3
10997dde:	cc                                              	int3
10997ddf:	cc                                              	int3
