# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f920 (ModelComponent_SetMaterialNameHash)
Paired Ghidra pseudocode: 1097F920_ModelComponent_SetMaterialNameHash.c
Window: [0x1097f920, 0x1097f940) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f920: 8b 44 24 08 8b 4c 24 04 6a 00 6a 00 50 e8 4e b5
1097f930: db ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f920 <.text+0x97e920>:
1097f920:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f924:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1097f928:	6a 00                                           	push   0x0
1097f92a:	6a 00                                           	push   0x0
1097f92c:	50                                              	push   eax
1097f92d:	e8 4e b5 db ff                                  	call   0x1073ae80
1097f932:	c3                                              	ret
1097f933:	cc                                              	int3
1097f934:	cc                                              	int3
1097f935:	cc                                              	int3
1097f936:	cc                                              	int3
1097f937:	cc                                              	int3
1097f938:	cc                                              	int3
1097f939:	cc                                              	int3
1097f93a:	cc                                              	int3
1097f93b:	cc                                              	int3
1097f93c:	cc                                              	int3
1097f93d:	cc                                              	int3
1097f93e:	cc                                              	int3
1097f93f:	cc                                              	int3
