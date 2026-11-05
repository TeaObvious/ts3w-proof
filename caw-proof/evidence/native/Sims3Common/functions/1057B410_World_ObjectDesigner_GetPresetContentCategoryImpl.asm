# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b410 (World_ObjectDesigner_GetPresetContentCategoryImpl)
Paired Ghidra pseudocode: 1057B410_World_ObjectDesigner_GetPresetContentCategoryImpl.c
Window: [0x1057b410, 0x1057b430) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b430
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b410: 8b 44 24 04 50 e8 46 d0 b7 ff 8b c8 e8 3f dc b7
1057b420: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b410 <.text+0x57a410>:
1057b410:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057b414:	50                                              	push   eax
1057b415:	e8 46 d0 b7 ff                                  	call   0x100f8460
1057b41a:	8b c8                                           	mov    ecx,eax
1057b41c:	e8 3f dc b7 ff                                  	call   0x100f9060
1057b421:	c3                                              	ret
1057b422:	cc                                              	int3
1057b423:	cc                                              	int3
1057b424:	cc                                              	int3
1057b425:	cc                                              	int3
1057b426:	cc                                              	int3
1057b427:	cc                                              	int3
1057b428:	cc                                              	int3
1057b429:	cc                                              	int3
1057b42a:	cc                                              	int3
1057b42b:	cc                                              	int3
1057b42c:	cc                                              	int3
1057b42d:	cc                                              	int3
1057b42e:	cc                                              	int3
1057b42f:	cc                                              	int3
