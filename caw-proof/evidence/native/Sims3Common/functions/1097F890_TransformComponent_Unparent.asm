# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f890 (TransformComponent_Unparent)
Paired Ghidra pseudocode: 1097F890_TransformComponent_Unparent.c
Window: [0x1097f890, 0x1097f8a0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f890: 8b 4c 24 04 6a 01 e8 95 c5 dc ff c3 cc cc cc cc

LINEAR DISASSEMBLY
1097f890 <.text+0x97e890>:
1097f890:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f894:	6a 01                                           	push   0x1
1097f896:	e8 95 c5 dc ff                                  	call   0x1074be30
1097f89b:	c3                                              	ret
1097f89c:	cc                                              	int3
1097f89d:	cc                                              	int3
1097f89e:	cc                                              	int3
1097f89f:	cc                                              	int3
