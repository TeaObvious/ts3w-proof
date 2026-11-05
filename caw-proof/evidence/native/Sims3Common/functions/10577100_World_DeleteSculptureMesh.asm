# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577100 (World_DeleteSculptureMesh)
Paired Ghidra pseudocode: 10577100_World_DeleteSculptureMesh.c
Window: [0x10577100, 0x10577130) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10577130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577100: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 14 89
10577110: 4c 24 04 89 04 24 8b 44 24 18 8d 0c 24 51 89 54
10577120: 24 0c 89 44 24 10 e8 85 4a f8 ff 83 c4 14 c3 cc

LINEAR DISASSEMBLY
10577100 <.text+0x576100>:
10577100:	83 ec 10                                        	sub    esp,0x10
10577103:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10577107:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1057710b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057710f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
10577113:	89 04 24                                        	mov    DWORD PTR [esp],eax
10577116:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1057711a:	8d 0c 24                                        	lea    ecx,[esp]
1057711d:	51                                              	push   ecx
1057711e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
10577122:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10577126:	e8 85 4a f8 ff                                  	call   0x104fbbb0
1057712b:	83 c4 14                                        	add    esp,0x14
1057712e:	c3                                              	ret
1057712f:	cc                                              	int3
