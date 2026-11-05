# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569c80 (ThumbnailManager_SetHouseholdCamera)
Paired Ghidra pseudocode: 10569C80_ThumbnailManager_SetHouseholdCamera.c
Window: [0x10569c80, 0x10569ca0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569c80: 8b 0d 50 11 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10569c90: 6c 99 db ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569c80 <.text+0x568c80>:
10569c80:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569c86:	85 c9                                           	test   ecx,ecx
10569c88:	74 0a                                           	je     0x10569c94
10569c8a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10569c8e:	50                                              	push   eax
10569c8f:	e8 6c 99 db ff                                  	call   0x10323600
10569c94:	c3                                              	ret
10569c95:	cc                                              	int3
10569c96:	cc                                              	int3
10569c97:	cc                                              	int3
10569c98:	cc                                              	int3
10569c99:	cc                                              	int3
10569c9a:	cc                                              	int3
10569c9b:	cc                                              	int3
10569c9c:	cc                                              	int3
10569c9d:	cc                                              	int3
10569c9e:	cc                                              	int3
10569c9f:	cc                                              	int3
