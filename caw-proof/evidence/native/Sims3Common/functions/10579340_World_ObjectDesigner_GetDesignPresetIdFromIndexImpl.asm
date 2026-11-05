# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579340 (World_ObjectDesigner_GetDesignPresetIdFromIndexImpl)
Paired Ghidra pseudocode: 10579340_World_ObjectDesigner_GetDesignPresetIdFromIndexImpl.c
Window: [0x10579340, 0x10579360) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579340: 8b 44 24 04 50 e8 16 f1 b7 ff 8b c8 e8 0f 01 b8
10579350: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579340 <.text+0x578340>:
10579340:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10579344:	50                                              	push   eax
10579345:	e8 16 f1 b7 ff                                  	call   0x100f8460
1057934a:	8b c8                                           	mov    ecx,eax
1057934c:	e8 0f 01 b8 ff                                  	call   0x100f9460
10579351:	c3                                              	ret
10579352:	cc                                              	int3
10579353:	cc                                              	int3
10579354:	cc                                              	int3
10579355:	cc                                              	int3
10579356:	cc                                              	int3
10579357:	cc                                              	int3
10579358:	cc                                              	int3
10579359:	cc                                              	int3
1057935a:	cc                                              	int3
1057935b:	cc                                              	int3
1057935c:	cc                                              	int3
1057935d:	cc                                              	int3
1057935e:	cc                                              	int3
1057935f:	cc                                              	int3
