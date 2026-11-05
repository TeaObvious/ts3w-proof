# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d190 (AnimationManager_GetInstanceIdForClipName)
Paired Ghidra pseudocode: 1097D190_AnimationManager_GetInstanceIdForClipName.c
Window: [0x1097d190, 0x1097d1a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d1a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d190: e9 fb 9b 9f ff cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097d190 <.text+0x97c190>:
1097d190:	e9 fb 9b 9f ff                                  	jmp    0x10376d90
1097d195:	cc                                              	int3
1097d196:	cc                                              	int3
1097d197:	cc                                              	int3
1097d198:	cc                                              	int3
1097d199:	cc                                              	int3
1097d19a:	cc                                              	int3
1097d19b:	cc                                              	int3
1097d19c:	cc                                              	int3
1097d19d:	cc                                              	int3
1097d19e:	cc                                              	int3
1097d19f:	cc                                              	int3
