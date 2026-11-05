# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10588fd0 (World_TestIfObjectsIntersect)
Paired Ghidra pseudocode: 10588FD0_World_TestIfObjectsIntersect.c
Window: [0x10588fd0, 0x10589000) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589000
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10588fd0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 50 8b 44 24
10588fe0: 0c 51 8b 4c 24 0c 52 50 51 e8 d2 e5 ff ff 83 c4
10588ff0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10588fd0 <.text+0x587fd0>:
10588fd0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10588fd4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10588fd8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10588fdc:	50                                              	push   eax
10588fdd:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10588fe1:	51                                              	push   ecx
10588fe2:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10588fe6:	52                                              	push   edx
10588fe7:	50                                              	push   eax
10588fe8:	51                                              	push   ecx
10588fe9:	e8 d2 e5 ff ff                                  	call   0x105875c0
10588fee:	83 c4 14                                        	add    esp,0x14
10588ff1:	c3                                              	ret
10588ff2:	cc                                              	int3
10588ff3:	cc                                              	int3
10588ff4:	cc                                              	int3
10588ff5:	cc                                              	int3
10588ff6:	cc                                              	int3
10588ff7:	cc                                              	int3
10588ff8:	cc                                              	int3
10588ff9:	cc                                              	int3
10588ffa:	cc                                              	int3
10588ffb:	cc                                              	int3
10588ffc:	cc                                              	int3
10588ffd:	cc                                              	int3
10588ffe:	cc                                              	int3
10588fff:	cc                                              	int3
