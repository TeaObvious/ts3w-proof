# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579550 (World_ObjectDesigner_RemoveDesignPresetByIdImpl)
Paired Ghidra pseudocode: 10579550_World_ObjectDesigner_RemoveDesignPresetByIdImpl.c
Window: [0x10579550, 0x10579570) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579570
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579550: e8 0b ef b7 ff 8b 4c 24 04 51 8b c8 e8 3f 7f b8
10579560: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579550 <.text+0x578550>:
10579550:	e8 0b ef b7 ff                                  	call   0x100f8460
10579555:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10579559:	51                                              	push   ecx
1057955a:	8b c8                                           	mov    ecx,eax
1057955c:	e8 3f 7f b8 ff                                  	call   0x101014a0
10579561:	c3                                              	ret
10579562:	cc                                              	int3
10579563:	cc                                              	int3
10579564:	cc                                              	int3
10579565:	cc                                              	int3
10579566:	cc                                              	int3
10579567:	cc                                              	int3
10579568:	cc                                              	int3
10579569:	cc                                              	int3
1057956a:	cc                                              	int3
1057956b:	cc                                              	int3
1057956c:	cc                                              	int3
1057956d:	cc                                              	int3
1057956e:	cc                                              	int3
1057956f:	cc                                              	int3
