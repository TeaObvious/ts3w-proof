# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d1c0 (AnimationManager_ClipExists)
Paired Ghidra pseudocode: 1097D1C0_AnimationManager_ClipExists.c
Window: [0x1097d1c0, 0x1097d200) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d200
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d1c0: 83 ec 10 8b 44 24 14 8b 4c 24 18 89 04 24 89 4c
1097d1d0: 24 04 c7 44 24 08 f3 c4 20 6b c7 44 24 0c 00 00
1097d1e0: 00 00 e8 e9 7e f6 ff 8b 10 8b 52 44 8d 0c 24 51
1097d1f0: 8b c8 ff d2 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
1097d1c0 <.text+0x97c1c0>:
1097d1c0:	83 ec 10                                        	sub    esp,0x10
1097d1c3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1097d1c7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1097d1cb:	89 04 24                                        	mov    DWORD PTR [esp],eax
1097d1ce:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1097d1d2:	c7 44 24 08 f3 c4 20 6b                         	mov    DWORD PTR [esp+0x8],0x6b20c4f3
1097d1da:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1097d1e2:	e8 e9 7e f6 ff                                  	call   0x108e50d0
1097d1e7:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097d1e9:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1097d1ec:	8d 0c 24                                        	lea    ecx,[esp]
1097d1ef:	51                                              	push   ecx
1097d1f0:	8b c8                                           	mov    ecx,eax
1097d1f2:	ff d2                                           	call   edx
1097d1f4:	f7 d8                                           	neg    eax
1097d1f6:	1b c0                                           	sbb    eax,eax
1097d1f8:	f7 d8                                           	neg    eax
1097d1fa:	83 c4 10                                        	add    esp,0x10
1097d1fd:	c3                                              	ret
1097d1fe:	cc                                              	int3
1097d1ff:	cc                                              	int3
