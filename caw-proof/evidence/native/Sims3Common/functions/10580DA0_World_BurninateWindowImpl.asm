# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580da0 (World_BurninateWindowImpl)
Paired Ghidra pseudocode: 10580DA0_World_BurninateWindowImpl.c
Window: [0x10580da0, 0x10580dc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580da0: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 bb ff ff 83
10580db0: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10580da0 <.text+0x57fda0>:
10580da0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10580da4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10580da8:	50                                              	push   eax
10580da9:	51                                              	push   ecx
10580daa:	e8 71 bb ff ff                                  	call   0x1057c920
10580daf:	83 c4 08                                        	add    esp,0x8
10580db2:	c3                                              	ret
10580db3:	cc                                              	int3
10580db4:	cc                                              	int3
10580db5:	cc                                              	int3
10580db6:	cc                                              	int3
10580db7:	cc                                              	int3
10580db8:	cc                                              	int3
10580db9:	cc                                              	int3
10580dba:	cc                                              	int3
10580dbb:	cc                                              	int3
10580dbc:	cc                                              	int3
10580dbd:	cc                                              	int3
10580dbe:	cc                                              	int3
10580dbf:	cc                                              	int3
