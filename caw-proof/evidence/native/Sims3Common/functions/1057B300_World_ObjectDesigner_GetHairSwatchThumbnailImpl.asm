# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b300 (World_ObjectDesigner_GetHairSwatchThumbnailImpl)
Paired Ghidra pseudocode: 1057B300_World_ObjectDesigner_GetHairSwatchThumbnailImpl.c
Window: [0x1057b300, 0x1057b330) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b300: e8 5b d1 b7 ff 8b 4c 24 18 8b 54 24 14 51 8b 4c
1057b310: 24 14 52 8b 54 24 14 51 8b 4c 24 14 52 8b 54 24
1057b320: 14 51 52 8b c8 e8 c6 3d b8 ff c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1057b300 <.text+0x57a300>:
1057b300:	e8 5b d1 b7 ff                                  	call   0x100f8460
1057b305:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b309:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057b30d:	51                                              	push   ecx
1057b30e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b312:	52                                              	push   edx
1057b313:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057b317:	51                                              	push   ecx
1057b318:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b31c:	52                                              	push   edx
1057b31d:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057b321:	51                                              	push   ecx
1057b322:	52                                              	push   edx
1057b323:	8b c8                                           	mov    ecx,eax
1057b325:	e8 c6 3d b8 ff                                  	call   0x100ff0f0
1057b32a:	c3                                              	ret
1057b32b:	cc                                              	int3
1057b32c:	cc                                              	int3
1057b32d:	cc                                              	int3
1057b32e:	cc                                              	int3
1057b32f:	cc                                              	int3
