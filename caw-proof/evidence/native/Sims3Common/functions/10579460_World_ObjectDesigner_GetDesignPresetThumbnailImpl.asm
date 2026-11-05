# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579460 (World_ObjectDesigner_GetDesignPresetThumbnailImpl)
Paired Ghidra pseudocode: 10579460_World_ObjectDesigner_GetDesignPresetThumbnailImpl.c
Window: [0x10579460, 0x10579480) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579460: 8b 44 24 04 50 e8 f6 ef b7 ff 8b c8 e8 5f 01 b8
10579470: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579460 <.text+0x578460>:
10579460:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10579464:	50                                              	push   eax
10579465:	e8 f6 ef b7 ff                                  	call   0x100f8460
1057946a:	8b c8                                           	mov    ecx,eax
1057946c:	e8 5f 01 b8 ff                                  	call   0x100f95d0
10579471:	c3                                              	ret
10579472:	cc                                              	int3
10579473:	cc                                              	int3
10579474:	cc                                              	int3
10579475:	cc                                              	int3
10579476:	cc                                              	int3
10579477:	cc                                              	int3
10579478:	cc                                              	int3
10579479:	cc                                              	int3
1057947a:	cc                                              	int3
1057947b:	cc                                              	int3
1057947c:	cc                                              	int3
1057947d:	cc                                              	int3
1057947e:	cc                                              	int3
1057947f:	cc                                              	int3
