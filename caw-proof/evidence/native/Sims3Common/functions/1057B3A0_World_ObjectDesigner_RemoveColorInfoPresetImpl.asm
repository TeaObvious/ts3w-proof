# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b3a0 (World_ObjectDesigner_RemoveColorInfoPresetImpl)
Paired Ghidra pseudocode: 1057B3A0_World_ObjectDesigner_RemoveColorInfoPresetImpl.c
Window: [0x1057b3a0, 0x1057b3e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b3e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b3a0: 83 ec 10 e8 b8 d0 b7 ff 8b 4c 24 1c 8b 54 24 20
1057b3b0: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
1057b3c0: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 6e dd
1057b3d0: b7 ff 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b3a0 <.text+0x57a3a0>:
1057b3a0:	83 ec 10                                        	sub    esp,0x10
1057b3a3:	e8 b8 d0 b7 ff                                  	call   0x100f8460
1057b3a8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1057b3ac:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
1057b3b0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
1057b3b3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1057b3b7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1057b3bb:	8d 0c 24                                        	lea    ecx,[esp]
1057b3be:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1057b3c2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1057b3c6:	51                                              	push   ecx
1057b3c7:	8b c8                                           	mov    ecx,eax
1057b3c9:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
1057b3cd:	e8 6e dd b7 ff                                  	call   0x100f9140
1057b3d2:	83 c4 10                                        	add    esp,0x10
1057b3d5:	c3                                              	ret
1057b3d6:	cc                                              	int3
1057b3d7:	cc                                              	int3
1057b3d8:	cc                                              	int3
1057b3d9:	cc                                              	int3
1057b3da:	cc                                              	int3
1057b3db:	cc                                              	int3
1057b3dc:	cc                                              	int3
1057b3dd:	cc                                              	int3
1057b3de:	cc                                              	int3
1057b3df:	cc                                              	int3
