# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b370 (World_ObjectDesigner_AddColorInfoPresetImpl)
Paired Ghidra pseudocode: 1057B370_World_ObjectDesigner_AddColorInfoPresetImpl.c
Window: [0x1057b370, 0x1057b3a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b370: 8b 44 24 14 8b 4c 24 04 8b 54 24 08 50 83 ec 10
1057b380: 8b c4 89 08 8b 4c 24 20 89 50 04 8b 54 24 24 89
1057b390: 48 08 89 50 0c e8 d6 e1 ff ff 83 c4 14 c3 cc cc

LINEAR DISASSEMBLY
1057b370 <.text+0x57a370>:
1057b370:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1057b374:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1057b378:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b37c:	50                                              	push   eax
1057b37d:	83 ec 10                                        	sub    esp,0x10
1057b380:	8b c4                                           	mov    eax,esp
1057b382:	89 08                                           	mov    DWORD PTR [eax],ecx
1057b384:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057b388:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057b38b:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057b38f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057b392:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057b395:	e8 d6 e1 ff ff                                  	call   0x10579570
1057b39a:	83 c4 14                                        	add    esp,0x14
1057b39d:	c3                                              	ret
1057b39e:	cc                                              	int3
1057b39f:	cc                                              	int3
