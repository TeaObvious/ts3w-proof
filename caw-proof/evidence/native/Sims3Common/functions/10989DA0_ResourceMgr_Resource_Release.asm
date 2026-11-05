# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989da0 (ResourceMgr_Resource_Release)
Paired Ghidra pseudocode: 10989DA0_ResourceMgr_Resource_Release.c
Window: [0x10989da0, 0x10989dc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989da0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 04 ff e2 33
10989db0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989da0 <.text+0x988da0>:
10989da0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989da4:	85 c9                                           	test   ecx,ecx
10989da6:	74 07                                           	je     0x10989daf
10989da8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10989daa:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10989dad:	ff e2                                           	jmp    edx
10989daf:	33 c0                                           	xor    eax,eax
10989db1:	c3                                              	ret
10989db2:	cc                                              	int3
10989db3:	cc                                              	int3
10989db4:	cc                                              	int3
10989db5:	cc                                              	int3
10989db6:	cc                                              	int3
10989db7:	cc                                              	int3
10989db8:	cc                                              	int3
10989db9:	cc                                              	int3
10989dba:	cc                                              	int3
10989dbb:	cc                                              	int3
10989dbc:	cc                                              	int3
10989dbd:	cc                                              	int3
10989dbe:	cc                                              	int3
10989dbf:	cc                                              	int3
