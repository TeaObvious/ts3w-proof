# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052cc00 (Animation_ClipExists)
Paired Ghidra pseudocode: 1052CC00_Animation_ClipExists.c
Window: [0x1052cc00, 0x1052cc40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052cc40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052cc00: 83 ec 10 8b 44 24 14 8b 4c 24 18 8b 54 24 1c 89
1052cc10: 04 24 89 4c 24 04 c7 44 24 08 f3 c4 20 6b 89 54
1052cc20: 24 0c e8 a9 84 3b 00 8b 10 8b 52 44 8d 0c 24 51
1052cc30: 8b c8 ff d2 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
1052cc00 <.text+0x52bc00>:
1052cc00:	83 ec 10                                        	sub    esp,0x10
1052cc03:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1052cc07:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1052cc0b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1052cc0f:	89 04 24                                        	mov    DWORD PTR [esp],eax
1052cc12:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1052cc16:	c7 44 24 08 f3 c4 20 6b                         	mov    DWORD PTR [esp+0x8],0x6b20c4f3
1052cc1e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
1052cc22:	e8 a9 84 3b 00                                  	call   0x108e50d0
1052cc27:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052cc29:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1052cc2c:	8d 0c 24                                        	lea    ecx,[esp]
1052cc2f:	51                                              	push   ecx
1052cc30:	8b c8                                           	mov    ecx,eax
1052cc32:	ff d2                                           	call   edx
1052cc34:	f7 d8                                           	neg    eax
1052cc36:	1b c0                                           	sbb    eax,eax
1052cc38:	f7 d8                                           	neg    eax
1052cc3a:	83 c4 10                                        	add    esp,0x10
1052cc3d:	c3                                              	ret
1052cc3e:	cc                                              	int3
1052cc3f:	cc                                              	int3
