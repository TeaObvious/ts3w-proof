# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109946d0 (ThumbnailManager_SetPatternThumbnailSize)
Paired Ghidra pseudocode: 109946D0_ThumbnailManager_SetPatternThumbnailSize.c
Window: [0x109946d0, 0x109946f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x109946f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109946d0: e8 8b 3d 76 ff 8b 4c 24 04 51 8b c8 e8 0f 40 76
109946e0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109946d0 <.text+0x9936d0>:
109946d0:	e8 8b 3d 76 ff                                  	call   0x100f8460
109946d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
109946d9:	51                                              	push   ecx
109946da:	8b c8                                           	mov    ecx,eax
109946dc:	e8 0f 40 76 ff                                  	call   0x100f86f0
109946e1:	c3                                              	ret
109946e2:	cc                                              	int3
109946e3:	cc                                              	int3
109946e4:	cc                                              	int3
109946e5:	cc                                              	int3
109946e6:	cc                                              	int3
109946e7:	cc                                              	int3
109946e8:	cc                                              	int3
109946e9:	cc                                              	int3
109946ea:	cc                                              	int3
109946eb:	cc                                              	int3
109946ec:	cc                                              	int3
109946ed:	cc                                              	int3
109946ee:	cc                                              	int3
109946ef:	cc                                              	int3
