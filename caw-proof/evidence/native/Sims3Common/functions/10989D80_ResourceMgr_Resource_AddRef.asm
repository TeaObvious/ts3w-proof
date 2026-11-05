# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989d80 (ResourceMgr_Resource_AddRef)
Paired Ghidra pseudocode: 10989D80_ResourceMgr_Resource_AddRef.c
Window: [0x10989d80, 0x10989da0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989d80: 8b 4c 24 04 85 c9 74 06 8b 01 8b 10 ff e2 33 c0
10989d90: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989d80 <.text+0x988d80>:
10989d80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10989d84:	85 c9                                           	test   ecx,ecx
10989d86:	74 06                                           	je     0x10989d8e
10989d88:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10989d8a:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989d8c:	ff e2                                           	jmp    edx
10989d8e:	33 c0                                           	xor    eax,eax
10989d90:	c3                                              	ret
10989d91:	cc                                              	int3
10989d92:	cc                                              	int3
10989d93:	cc                                              	int3
10989d94:	cc                                              	int3
10989d95:	cc                                              	int3
10989d96:	cc                                              	int3
10989d97:	cc                                              	int3
10989d98:	cc                                              	int3
10989d99:	cc                                              	int3
10989d9a:	cc                                              	int3
10989d9b:	cc                                              	int3
10989d9c:	cc                                              	int3
10989d9d:	cc                                              	int3
10989d9e:	cc                                              	int3
10989d9f:	cc                                              	int3
