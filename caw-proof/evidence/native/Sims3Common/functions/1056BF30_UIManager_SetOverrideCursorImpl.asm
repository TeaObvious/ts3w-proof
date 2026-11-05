# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056bf30 (UIManager_SetOverrideCursorImpl)
Paired Ghidra pseudocode: 1056BF30_UIManager_SetOverrideCursorImpl.c
Window: [0x1056bf30, 0x1056bf50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056bf50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056bf30: e8 db c1 3c 00 85 c0 74 0c 8b 4c 24 04 51 8b c8
1056bf40: e8 db c1 3c 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056bf30 <.text+0x56af30>:
1056bf30:	e8 db c1 3c 00                                  	call   0x10938110
1056bf35:	85 c0                                           	test   eax,eax
1056bf37:	74 0c                                           	je     0x1056bf45
1056bf39:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1056bf3d:	51                                              	push   ecx
1056bf3e:	8b c8                                           	mov    ecx,eax
1056bf40:	e8 db c1 3c 00                                  	call   0x10938120
1056bf45:	c3                                              	ret
1056bf46:	cc                                              	int3
1056bf47:	cc                                              	int3
1056bf48:	cc                                              	int3
1056bf49:	cc                                              	int3
1056bf4a:	cc                                              	int3
1056bf4b:	cc                                              	int3
1056bf4c:	cc                                              	int3
1056bf4d:	cc                                              	int3
1056bf4e:	cc                                              	int3
1056bf4f:	cc                                              	int3
