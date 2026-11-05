# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f270 (CASUtilsWrap_IsPartExists)
Paired Ghidra pseudocode: 1097F270_CASUtilsWrap_IsPartExists.c
Window: [0x1097f270, 0x1097f2c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f2c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f270: 83 ec 10 8b 44 24 1c 8b 4c 24 20 8b 54 24 14 89
1097f280: 04 24 8b 44 24 18 89 4c 24 04 89 54 24 08 89 44
1097f290: 24 0c e8 39 5e f6 ff 85 c0 74 1a 8b 10 8b 52 44
1097f2a0: 8d 0c 24 51 8b c8 ff d2 85 c0 74 09 b8 01 00 00
1097f2b0: 00 83 c4 10 c3 33 c0 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1097f270 <.text+0x97e270>:
1097f270:	83 ec 10                                        	sub    esp,0x10
1097f273:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1097f277:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1097f27b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1097f27f:	89 04 24                                        	mov    DWORD PTR [esp],eax
1097f282:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1097f286:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1097f28a:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1097f28e:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097f292:	e8 39 5e f6 ff                                  	call   0x108e50d0
1097f297:	85 c0                                           	test   eax,eax
1097f299:	74 1a                                           	je     0x1097f2b5
1097f29b:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097f29d:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1097f2a0:	8d 0c 24                                        	lea    ecx,[esp]
1097f2a3:	51                                              	push   ecx
1097f2a4:	8b c8                                           	mov    ecx,eax
1097f2a6:	ff d2                                           	call   edx
1097f2a8:	85 c0                                           	test   eax,eax
1097f2aa:	74 09                                           	je     0x1097f2b5
1097f2ac:	b8 01 00 00 00                                  	mov    eax,0x1
1097f2b1:	83 c4 10                                        	add    esp,0x10
1097f2b4:	c3                                              	ret
1097f2b5:	33 c0                                           	xor    eax,eax
1097f2b7:	83 c4 10                                        	add    esp,0x10
1097f2ba:	c3                                              	ret
1097f2bb:	cc                                              	int3
1097f2bc:	cc                                              	int3
1097f2bd:	cc                                              	int3
1097f2be:	cc                                              	int3
1097f2bf:	cc                                              	int3
