# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ee00 (CASPartDataResourceWrap_GetBodyType)
Paired Ghidra pseudocode: 1097EE00_CASPartDataResourceWrap_GetBodyType.c
Window: [0x1097ee00, 0x1097ee10) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ee10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ee00: 8b 44 24 04 8b 40 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ee00 <.text+0x97de00>:
1097ee00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097ee04:	8b 40 34                                        	mov    eax,DWORD PTR [eax+0x34]
1097ee07:	c3                                              	ret
1097ee08:	cc                                              	int3
1097ee09:	cc                                              	int3
1097ee0a:	cc                                              	int3
1097ee0b:	cc                                              	int3
1097ee0c:	cc                                              	int3
1097ee0d:	cc                                              	int3
1097ee0e:	cc                                              	int3
1097ee0f:	cc                                              	int3
