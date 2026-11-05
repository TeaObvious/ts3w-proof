# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997da0 (WorldWrap_GetObjMgrType)
Paired Ghidra pseudocode: 10997DA0_WorldWrap_GetObjMgrType.c
Window: [0x10997da0, 0x10997dc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997dc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997da0: 8b 4c 24 04 85 c9 75 03 33 c0 c3 8b 01 8b 50 40
10997db0: ff e2 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997da0 <.text+0x996da0>:
10997da0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997da4:	85 c9                                           	test   ecx,ecx
10997da6:	75 03                                           	jne    0x10997dab
10997da8:	33 c0                                           	xor    eax,eax
10997daa:	c3                                              	ret
10997dab:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10997dad:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
10997db0:	ff e2                                           	jmp    edx
10997db2:	cc                                              	int3
10997db3:	cc                                              	int3
10997db4:	cc                                              	int3
10997db5:	cc                                              	int3
10997db6:	cc                                              	int3
10997db7:	cc                                              	int3
10997db8:	cc                                              	int3
10997db9:	cc                                              	int3
10997dba:	cc                                              	int3
10997dbb:	cc                                              	int3
10997dbc:	cc                                              	int3
10997dbd:	cc                                              	int3
10997dbe:	cc                                              	int3
10997dbf:	cc                                              	int3
