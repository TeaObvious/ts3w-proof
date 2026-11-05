# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579480 (World_ObjectDesigner_GetPresetContentCategoryFromKeyImpl)
Paired Ghidra pseudocode: 10579480_World_ObjectDesigner_GetPresetContentCategoryFromKeyImpl.c
Window: [0x10579480, 0x105794c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105794c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579480: 83 ec 10 8b 4c 24 20 8b 54 24 14 8b 44 24 1c 89
10579490: 4c 24 04 8b 4c 24 24 89 54 24 08 89 04 24 8b 44
105794a0: 24 18 51 8d 54 24 04 52 89 44 24 14 e8 af ef b7
105794b0: ff 8b c8 e8 28 17 b8 ff 83 c4 10 c3 cc cc cc cc

LINEAR DISASSEMBLY
10579480 <.text+0x578480>:
10579480:	83 ec 10                                        	sub    esp,0x10
10579483:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10579487:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057948b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1057948f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10579493:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10579497:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1057949b:	89 04 24                                        	mov    DWORD PTR [esp],eax
1057949e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
105794a2:	51                                              	push   ecx
105794a3:	8d 54 24 04                                     	lea    edx,[esp+0x4]
105794a7:	52                                              	push   edx
105794a8:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
105794ac:	e8 af ef b7 ff                                  	call   0x100f8460
105794b1:	8b c8                                           	mov    ecx,eax
105794b3:	e8 28 17 b8 ff                                  	call   0x100fabe0
105794b8:	83 c4 10                                        	add    esp,0x10
105794bb:	c3                                              	ret
105794bc:	cc                                              	int3
105794bd:	cc                                              	int3
105794be:	cc                                              	int3
105794bf:	cc                                              	int3
