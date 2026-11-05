# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b3f0 (World_ObjectDesigner_IsUserDesignPresetImpl)
Paired Ghidra pseudocode: 1057B3F0_World_ObjectDesigner_IsUserDesignPresetImpl.c
Window: [0x1057b3f0, 0x1057b410) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b3f0: 8b 44 24 04 50 e8 66 d0 b7 ff 8b c8 e8 cf db b7
1057b400: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b3f0 <.text+0x57a3f0>:
1057b3f0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1057b3f4:	50                                              	push   eax
1057b3f5:	e8 66 d0 b7 ff                                  	call   0x100f8460
1057b3fa:	8b c8                                           	mov    ecx,eax
1057b3fc:	e8 cf db b7 ff                                  	call   0x100f8fd0
1057b401:	c3                                              	ret
1057b402:	cc                                              	int3
1057b403:	cc                                              	int3
1057b404:	cc                                              	int3
1057b405:	cc                                              	int3
1057b406:	cc                                              	int3
1057b407:	cc                                              	int3
1057b408:	cc                                              	int3
1057b409:	cc                                              	int3
1057b40a:	cc                                              	int3
1057b40b:	cc                                              	int3
1057b40c:	cc                                              	int3
1057b40d:	cc                                              	int3
1057b40e:	cc                                              	int3
1057b40f:	cc                                              	int3
