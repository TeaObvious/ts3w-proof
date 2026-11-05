# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10581ea0 (World_GetGameObjTuningDataImpl)
Paired Ghidra pseudocode: 10581EA0_World_GetGameObjTuningDataImpl.c
Window: [0x10581ea0, 0x10581ec0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10581ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10581ea0: 8b 44 24 08 8b 4c 24 04 50 51 e8 c1 e3 ff ff 83
10581eb0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10581ea0 <.text+0x580ea0>:
10581ea0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10581ea4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10581ea8:	50                                              	push   eax
10581ea9:	51                                              	push   ecx
10581eaa:	e8 c1 e3 ff ff                                  	call   0x10580270
10581eaf:	83 c4 08                                        	add    esp,0x8
10581eb2:	c3                                              	ret
10581eb3:	cc                                              	int3
10581eb4:	cc                                              	int3
10581eb5:	cc                                              	int3
10581eb6:	cc                                              	int3
10581eb7:	cc                                              	int3
10581eb8:	cc                                              	int3
10581eb9:	cc                                              	int3
10581eba:	cc                                              	int3
10581ebb:	cc                                              	int3
10581ebc:	cc                                              	int3
10581ebd:	cc                                              	int3
10581ebe:	cc                                              	int3
10581ebf:	cc                                              	int3
