# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c7b0 (RoadSquareWrap_SetRotation)
Paired Ghidra pseudocode: 1098C7B0_RoadSquareWrap_SetRotation.c
Window: [0x1098c7b0, 0x1098c7d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c7d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c7b0: d9 44 24 08 51 8b 4c 24 08 d9 1c 24 e8 ff ee 7a
1098c7c0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c7b0 <.text+0x98b7b0>:
1098c7b0:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098c7b4:	51                                              	push   ecx
1098c7b5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098c7b9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098c7bc:	e8 ff ee 7a ff                                  	call   0x1013b6c0
1098c7c1:	c3                                              	ret
1098c7c2:	cc                                              	int3
1098c7c3:	cc                                              	int3
1098c7c4:	cc                                              	int3
1098c7c5:	cc                                              	int3
1098c7c6:	cc                                              	int3
1098c7c7:	cc                                              	int3
1098c7c8:	cc                                              	int3
1098c7c9:	cc                                              	int3
1098c7ca:	cc                                              	int3
1098c7cb:	cc                                              	int3
1098c7cc:	cc                                              	int3
1098c7cd:	cc                                              	int3
1098c7ce:	cc                                              	int3
1098c7cf:	cc                                              	int3
