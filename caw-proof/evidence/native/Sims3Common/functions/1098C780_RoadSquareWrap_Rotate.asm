# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c780 (RoadSquareWrap_Rotate)
Paired Ghidra pseudocode: 1098C780_RoadSquareWrap_Rotate.c
Window: [0x1098c780, 0x1098c7a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c7a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c780: 8b 44 24 0c d9 44 24 08 50 51 8b 4c 24 0c d9 1c
1098c790: 24 e8 0a ee 7a ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c780 <.text+0x98b780>:
1098c780:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098c784:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098c788:	50                                              	push   eax
1098c789:	51                                              	push   ecx
1098c78a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098c78e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098c791:	e8 0a ee 7a ff                                  	call   0x1013b5a0
1098c796:	c3                                              	ret
1098c797:	cc                                              	int3
1098c798:	cc                                              	int3
1098c799:	cc                                              	int3
1098c79a:	cc                                              	int3
1098c79b:	cc                                              	int3
1098c79c:	cc                                              	int3
1098c79d:	cc                                              	int3
1098c79e:	cc                                              	int3
1098c79f:	cc                                              	int3
