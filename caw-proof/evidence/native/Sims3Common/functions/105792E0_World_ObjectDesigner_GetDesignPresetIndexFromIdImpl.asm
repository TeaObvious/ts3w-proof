# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105792e0 (World_ObjectDesigner_GetDesignPresetIndexFromIdImpl)
Paired Ghidra pseudocode: 105792E0_World_ObjectDesigner_GetDesignPresetIndexFromIdImpl.c
Window: [0x105792e0, 0x10579300) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579300
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105792e0: 8b 44 24 04 50 e8 76 f1 b7 ff 8b c8 e8 df 00 b8
105792f0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105792e0 <.text+0x5782e0>:
105792e0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105792e4:	50                                              	push   eax
105792e5:	e8 76 f1 b7 ff                                  	call   0x100f8460
105792ea:	8b c8                                           	mov    ecx,eax
105792ec:	e8 df 00 b8 ff                                  	call   0x100f93d0
105792f1:	c3                                              	ret
105792f2:	cc                                              	int3
105792f3:	cc                                              	int3
105792f4:	cc                                              	int3
105792f5:	cc                                              	int3
105792f6:	cc                                              	int3
105792f7:	cc                                              	int3
105792f8:	cc                                              	int3
105792f9:	cc                                              	int3
105792fa:	cc                                              	int3
105792fb:	cc                                              	int3
105792fc:	cc                                              	int3
105792fd:	cc                                              	int3
105792fe:	cc                                              	int3
105792ff:	cc                                              	int3
