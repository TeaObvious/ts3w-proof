# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057af40 (World_LotSnowUpdate)
Paired Ghidra pseudocode: 1057AF40_World_LotSnowUpdate.c
Window: [0x1057af40, 0x1057af90) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057af90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057af40: 56 e8 9a 86 30 00 6a 10 8b f0 e8 61 aa b2 ff 83
1057af50: c4 04 85 c0 74 15 c7 00 58 8a ab 10 33 c9 8d 50
1057af60: 04 87 0a c7 00 58 8a ab 10 eb 02 33 c0 8b 4c 24
1057af70: 08 8b 54 24 0c 6a 00 89 48 08 6a 00 89 50 0c 8b
1057af80: 16 50 8b 42 1c 68 28 62 61 0e 8b ce ff d0 5e c3

LINEAR DISASSEMBLY
1057af40 <.text+0x579f40>:
1057af40:	56                                              	push   esi
1057af41:	e8 9a 86 30 00                                  	call   0x108835e0
1057af46:	6a 10                                           	push   0x10
1057af48:	8b f0                                           	mov    esi,eax
1057af4a:	e8 61 aa b2 ff                                  	call   0x100a59b0
1057af4f:	83 c4 04                                        	add    esp,0x4
1057af52:	85 c0                                           	test   eax,eax
1057af54:	74 15                                           	je     0x1057af6b
1057af56:	c7 00 58 8a ab 10                               	mov    DWORD PTR [eax],0x10ab8a58
1057af5c:	33 c9                                           	xor    ecx,ecx
1057af5e:	8d 50 04                                        	lea    edx,[eax+0x4]
1057af61:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1057af63:	c7 00 58 8a ab 10                               	mov    DWORD PTR [eax],0x10ab8a58
1057af69:	eb 02                                           	jmp    0x1057af6d
1057af6b:	33 c0                                           	xor    eax,eax
1057af6d:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1057af71:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057af75:	6a 00                                           	push   0x0
1057af77:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1057af7a:	6a 00                                           	push   0x0
1057af7c:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1057af7f:	8b 16                                           	mov    edx,DWORD PTR [esi]
1057af81:	50                                              	push   eax
1057af82:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
1057af85:	68 28 62 61 0e                                  	push   0xe616228
1057af8a:	8b ce                                           	mov    ecx,esi
1057af8c:	ff d0                                           	call   eax
1057af8e:	5e                                              	pop    esi
1057af8f:	c3                                              	ret
