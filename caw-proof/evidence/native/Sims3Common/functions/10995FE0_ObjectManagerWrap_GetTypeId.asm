# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995fe0 (ObjectManagerWrap_GetTypeId)
Paired Ghidra pseudocode: 10995FE0_ObjectManagerWrap_GetTypeId.c
Window: [0x10995fe0, 0x10996000) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995fe0: 8b 4c 24 04 85 c9 74 07 8b 01 8b 50 40 ff e2 33
10995ff0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995fe0 <.text+0x994fe0>:
10995fe0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10995fe4:	85 c9                                           	test   ecx,ecx
10995fe6:	74 07                                           	je     0x10995fef
10995fe8:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995fea:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
10995fed:	ff e2                                           	jmp    edx
10995fef:	33 c0                                           	xor    eax,eax
10995ff1:	c3                                              	ret
10995ff2:	cc                                              	int3
10995ff3:	cc                                              	int3
10995ff4:	cc                                              	int3
10995ff5:	cc                                              	int3
10995ff6:	cc                                              	int3
10995ff7:	cc                                              	int3
10995ff8:	cc                                              	int3
10995ff9:	cc                                              	int3
10995ffa:	cc                                              	int3
10995ffb:	cc                                              	int3
10995ffc:	cc                                              	int3
10995ffd:	cc                                              	int3
10995ffe:	cc                                              	int3
10995fff:	cc                                              	int3
