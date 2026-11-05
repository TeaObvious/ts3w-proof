# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057bb20 (World_IsWallVertexACornerImpl)
Paired Ghidra pseudocode: 1057BB20_World_IsWallVertexACornerImpl.c
Window: [0x1057bb20, 0x1057bb50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057bb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057bb20: 8b 4c 24 0c 8b 54 24 10 83 ec 0c 8b c4 89 08 8b
1057bb30: 4c 24 20 89 50 04 8b 54 24 14 89 48 08 8b 44 24
1057bb40: 10 52 50 e8 b8 13 08 00 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
1057bb20 <.text+0x57ab20>:
1057bb20:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1057bb24:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1057bb28:	83 ec 0c                                        	sub    esp,0xc
1057bb2b:	8b c4                                           	mov    eax,esp
1057bb2d:	89 08                                           	mov    DWORD PTR [eax],ecx
1057bb2f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057bb33:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1057bb36:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057bb3a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057bb3d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057bb41:	52                                              	push   edx
1057bb42:	50                                              	push   eax
1057bb43:	e8 b8 13 08 00                                  	call   0x105fcf00
1057bb48:	83 c4 14                                        	add    esp,0x14
1057bb4b:	c3                                              	ret
1057bb4c:	cc                                              	int3
1057bb4d:	cc                                              	int3
1057bb4e:	cc                                              	int3
1057bb4f:	cc                                              	int3
