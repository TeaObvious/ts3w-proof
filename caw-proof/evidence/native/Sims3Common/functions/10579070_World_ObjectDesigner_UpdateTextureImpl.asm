# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579070 (World_ObjectDesigner_UpdateTextureImpl)
Paired Ghidra pseudocode: 10579070_World_ObjectDesigner_UpdateTextureImpl.c
Window: [0x10579070, 0x10579090) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579070: 8b 44 24 04 50 e8 e6 f3 b7 ff 8b c8 e8 9f 70 b8
10579080: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579070 <.text+0x578070>:
10579070:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10579074:	50                                              	push   eax
10579075:	e8 e6 f3 b7 ff                                  	call   0x100f8460
1057907a:	8b c8                                           	mov    ecx,eax
1057907c:	e8 9f 70 b8 ff                                  	call   0x10100120
10579081:	c3                                              	ret
10579082:	cc                                              	int3
10579083:	cc                                              	int3
10579084:	cc                                              	int3
10579085:	cc                                              	int3
10579086:	cc                                              	int3
10579087:	cc                                              	int3
10579088:	cc                                              	int3
10579089:	cc                                              	int3
1057908a:	cc                                              	int3
1057908b:	cc                                              	int3
1057908c:	cc                                              	int3
1057908d:	cc                                              	int3
1057908e:	cc                                              	int3
1057908f:	cc                                              	int3
