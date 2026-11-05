# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098e8d0 (SceneManWrap_BeginFrame)
Paired Ghidra pseudocode: 1098E8D0_SceneManWrap_BeginFrame.c
Window: [0x1098e8d0, 0x1098e8e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098e8e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098e8d0: 8b 4c 24 04 e9 b7 2a b5 ff cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098e8d0 <.text+0x98d8d0>:
1098e8d0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098e8d4:	e9 b7 2a b5 ff                                  	jmp    0x104e1390
1098e8d9:	cc                                              	int3
1098e8da:	cc                                              	int3
1098e8db:	cc                                              	int3
1098e8dc:	cc                                              	int3
1098e8dd:	cc                                              	int3
1098e8de:	cc                                              	int3
1098e8df:	cc                                              	int3
