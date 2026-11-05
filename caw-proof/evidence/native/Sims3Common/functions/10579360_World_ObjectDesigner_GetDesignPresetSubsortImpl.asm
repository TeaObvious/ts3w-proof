# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579360 (World_ObjectDesigner_GetDesignPresetSubsortImpl)
Paired Ghidra pseudocode: 10579360_World_ObjectDesigner_GetDesignPresetSubsortImpl.c
Window: [0x10579360, 0x10579380) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579380
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579360: 8b 44 24 04 50 e8 f6 f0 b7 ff 8b c8 e8 7f 01 b8
10579370: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579360 <.text+0x578360>:
10579360:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10579364:	50                                              	push   eax
10579365:	e8 f6 f0 b7 ff                                  	call   0x100f8460
1057936a:	8b c8                                           	mov    ecx,eax
1057936c:	e8 7f 01 b8 ff                                  	call   0x100f94f0
10579371:	c3                                              	ret
10579372:	cc                                              	int3
10579373:	cc                                              	int3
10579374:	cc                                              	int3
10579375:	cc                                              	int3
10579376:	cc                                              	int3
10579377:	cc                                              	int3
10579378:	cc                                              	int3
10579379:	cc                                              	int3
1057937a:	cc                                              	int3
1057937b:	cc                                              	int3
1057937c:	cc                                              	int3
1057937d:	cc                                              	int3
1057937e:	cc                                              	int3
1057937f:	cc                                              	int3
