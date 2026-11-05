# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b070 (World_ObjectSetPainting)
Paired Ghidra pseudocode: 1057B070_World_ObjectSetPainting.c
Window: [0x1057b070, 0x1057b0e0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b070: 83 ec 10 e8 28 f1 1a 00 85 c0 74 57 8b 4c 24 18
1057b080: 8b 54 24 14 51 52 8b c8 e8 23 fb 1a 00 85 c0 74
1057b090: 42 8b 0d 04 d8 c8 10 51 8b c8 e8 01 bd 1a 00 85
1057b0a0: c0 74 30 8b 54 24 24 8b 4c 24 28 89 14 24 8b 54
1057b0b0: 24 1c 89 4c 24 04 8b 4c 24 20 89 54 24 08 8b 54
1057b0c0: 24 2c 89 4c 24 0c 52 8d 4c 24 04 51 8b c8 e8 9d
1057b0d0: 0a 1c 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b070 <.text+0x57a070>:
1057b070:	83 ec 10                                        	sub    esp,0x10
1057b073:	e8 28 f1 1a 00                                  	call   0x1072a1a0
1057b078:	85 c0                                           	test   eax,eax
1057b07a:	74 57                                           	je     0x1057b0d3
1057b07c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1057b080:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1057b084:	51                                              	push   ecx
1057b085:	52                                              	push   edx
1057b086:	8b c8                                           	mov    ecx,eax
1057b088:	e8 23 fb 1a 00                                  	call   0x1072abb0
1057b08d:	85 c0                                           	test   eax,eax
1057b08f:	74 42                                           	je     0x1057b0d3
1057b091:	8b 0d 04 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d804
1057b097:	51                                              	push   ecx
1057b098:	8b c8                                           	mov    ecx,eax
1057b09a:	e8 01 bd 1a 00                                  	call   0x10726da0
1057b09f:	85 c0                                           	test   eax,eax
1057b0a1:	74 30                                           	je     0x1057b0d3
1057b0a3:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1057b0a7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1057b0ab:	89 14 24                                        	mov    DWORD PTR [esp],edx
1057b0ae:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1057b0b2:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
1057b0b6:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1057b0ba:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1057b0be:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1057b0c2:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
1057b0c6:	52                                              	push   edx
1057b0c7:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
1057b0cb:	51                                              	push   ecx
1057b0cc:	8b c8                                           	mov    ecx,eax
1057b0ce:	e8 9d 0a 1c 00                                  	call   0x1073bb70
1057b0d3:	83 c4 10                                        	add    esp,0x10
1057b0d6:	c3                                              	ret
1057b0d7:	cc                                              	int3
1057b0d8:	cc                                              	int3
1057b0d9:	cc                                              	int3
1057b0da:	cc                                              	int3
1057b0db:	cc                                              	int3
1057b0dc:	cc                                              	int3
1057b0dd:	cc                                              	int3
1057b0de:	cc                                              	int3
1057b0df:	cc                                              	int3
