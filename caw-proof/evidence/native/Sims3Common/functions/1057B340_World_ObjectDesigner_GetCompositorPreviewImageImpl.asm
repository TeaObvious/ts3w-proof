# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b340 (World_ObjectDesigner_GetCompositorPreviewImageImpl)
Paired Ghidra pseudocode: 1057B340_World_ObjectDesigner_GetCompositorPreviewImageImpl.c
Window: [0x1057b340, 0x1057b360) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b340: 8b 44 24 04 50 e8 16 d1 b7 ff 8b c8 e8 df 0f b8
1057b350: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b340 <.text+0x57a340>:
1057b340:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057b344:	50                                              	push   eax
1057b345:	e8 16 d1 b7 ff                                  	call   0x100f8460
1057b34a:	8b c8                                           	mov    ecx,eax
1057b34c:	e8 df 0f b8 ff                                  	call   0x100fc330
1057b351:	c3                                              	ret
1057b352:	cc                                              	int3
1057b353:	cc                                              	int3
1057b354:	cc                                              	int3
1057b355:	cc                                              	int3
1057b356:	cc                                              	int3
1057b357:	cc                                              	int3
1057b358:	cc                                              	int3
1057b359:	cc                                              	int3
1057b35a:	cc                                              	int3
1057b35b:	cc                                              	int3
1057b35c:	cc                                              	int3
1057b35d:	cc                                              	int3
1057b35e:	cc                                              	int3
1057b35f:	cc                                              	int3
