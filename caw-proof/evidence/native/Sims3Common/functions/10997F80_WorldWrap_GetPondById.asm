# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997f80 (WorldWrap_GetPondById)
Paired Ghidra pseudocode: 10997F80_WorldWrap_GetPondById.c
Window: [0x10997f80, 0x10997fa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997f80: 8b 4c 24 04 85 c9 74 0b 8b 44 24 08 50 e8 1e cd
10997f90: 89 ff c3 33 c0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997f80 <.text+0x996f80>:
10997f80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997f84:	85 c9                                           	test   ecx,ecx
10997f86:	74 0b                                           	je     0x10997f93
10997f88:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997f8c:	50                                              	push   eax
10997f8d:	e8 1e cd 89 ff                                  	call   0x10234cb0
10997f92:	c3                                              	ret
10997f93:	33 c0                                           	xor    eax,eax
10997f95:	c3                                              	ret
10997f96:	cc                                              	int3
10997f97:	cc                                              	int3
10997f98:	cc                                              	int3
10997f99:	cc                                              	int3
10997f9a:	cc                                              	int3
10997f9b:	cc                                              	int3
10997f9c:	cc                                              	int3
10997f9d:	cc                                              	int3
10997f9e:	cc                                              	int3
10997f9f:	cc                                              	int3
