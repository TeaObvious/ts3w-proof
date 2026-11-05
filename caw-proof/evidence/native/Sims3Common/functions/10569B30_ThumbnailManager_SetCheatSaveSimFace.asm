# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10569b30 (ThumbnailManager_SetCheatSaveSimFace)
Paired Ghidra pseudocode: 10569B30_ThumbnailManager_SetCheatSaveSimFace.c
Window: [0x10569b30, 0x10569b50) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10569b30: 8b 0d 50 11 c7 10 85 c9 74 0a 8b 44 24 04 50 e8
10569b40: fc ce 14 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10569b30 <.text+0x568b30>:
10569b30:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569b36:	85 c9                                           	test   ecx,ecx
10569b38:	74 0a                                           	je     0x10569b44
10569b3a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10569b3e:	50                                              	push   eax
10569b3f:	e8 fc ce 14 00                                  	call   0x106b6a40
10569b44:	c3                                              	ret
10569b45:	cc                                              	int3
10569b46:	cc                                              	int3
10569b47:	cc                                              	int3
10569b48:	cc                                              	int3
10569b49:	cc                                              	int3
10569b4a:	cc                                              	int3
10569b4b:	cc                                              	int3
10569b4c:	cc                                              	int3
10569b4d:	cc                                              	int3
10569b4e:	cc                                              	int3
10569b4f:	cc                                              	int3
