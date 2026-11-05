# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581d70 (World_ObjectDesigner_GetCurrentPatternTypeImpl)
Paired Ghidra pseudocode: 10581D70_World_ObjectDesigner_GetCurrentPatternTypeImpl.c
Window: [0x10581d70, 0x10581d90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581d70: e8 eb 66 b7 ff 8b 80 a4 00 00 00 85 c0 74 07 8b
10581d80: 80 88 00 00 00 c3 33 c0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581d70 <.text+0x580d70>:
10581d70:	e8 eb 66 b7 ff                                  	call   0x100f8460
10581d75:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
10581d7b:	85 c0                                           	test   eax,eax
10581d7d:	74 07                                           	je     0x10581d86
10581d7f:	8b 80 88 00 00 00                               	mov    eax,DWORD PTR [eax+0x88]
10581d85:	c3                                              	ret
10581d86:	33 c0                                           	xor    eax,eax
10581d88:	c3                                              	ret
10581d89:	cc                                              	int3
10581d8a:	cc                                              	int3
10581d8b:	cc                                              	int3
10581d8c:	cc                                              	int3
10581d8d:	cc                                              	int3
10581d8e:	cc                                              	int3
10581d8f:	cc                                              	int3
