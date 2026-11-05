# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b4b0 (World_SetLotName)
Paired Ghidra pseudocode: 1057B4B0_World_SetLotName.c
Window: [0x1057b4b0, 0x1057b500) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b4b0: 8b 0d c4 00 c7 10 85 c9 56 74 15 8b 44 24 0c 8b
1057b4c0: 54 24 08 6a 00 50 52 e8 44 bb cb ff 8b f0 eb 02
1057b4d0: 33 f6 e8 49 fc fd ff 85 f6 74 1a 85 c0 74 16 8b
1057b4e0: 4c 24 10 8b 10 8b 52 58 51 8b c8 ff d2 50 8b ce
1057b4f0: e8 4b 74 b0 ff 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b4b0 <.text+0x57a4b0>:
1057b4b0:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b4b6:	85 c9                                           	test   ecx,ecx
1057b4b8:	56                                              	push   esi
1057b4b9:	74 15                                           	je     0x1057b4d0
1057b4bb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b4bf:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b4c3:	6a 00                                           	push   0x0
1057b4c5:	50                                              	push   eax
1057b4c6:	52                                              	push   edx
1057b4c7:	e8 44 bb cb ff                                  	call   0x10237010
1057b4cc:	8b f0                                           	mov    esi,eax
1057b4ce:	eb 02                                           	jmp    0x1057b4d2
1057b4d0:	33 f6                                           	xor    esi,esi
1057b4d2:	e8 49 fc fd ff                                  	call   0x1055b120
1057b4d7:	85 f6                                           	test   esi,esi
1057b4d9:	74 1a                                           	je     0x1057b4f5
1057b4db:	85 c0                                           	test   eax,eax
1057b4dd:	74 16                                           	je     0x1057b4f5
1057b4df:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057b4e3:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057b4e5:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1057b4e8:	51                                              	push   ecx
1057b4e9:	8b c8                                           	mov    ecx,eax
1057b4eb:	ff d2                                           	call   edx
1057b4ed:	50                                              	push   eax
1057b4ee:	8b ce                                           	mov    ecx,esi
1057b4f0:	e8 4b 74 b0 ff                                  	call   0x10082940
1057b4f5:	5e                                              	pop    esi
1057b4f6:	c3                                              	ret
1057b4f7:	cc                                              	int3
1057b4f8:	cc                                              	int3
1057b4f9:	cc                                              	int3
1057b4fa:	cc                                              	int3
1057b4fb:	cc                                              	int3
1057b4fc:	cc                                              	int3
1057b4fd:	cc                                              	int3
1057b4fe:	cc                                              	int3
1057b4ff:	cc                                              	int3
