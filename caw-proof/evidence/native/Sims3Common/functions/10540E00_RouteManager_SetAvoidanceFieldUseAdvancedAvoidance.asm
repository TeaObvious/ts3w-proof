# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540e00 (RouteManager_SetAvoidanceFieldUseAdvancedAvoidance)
Paired Ghidra pseudocode: 10540E00_RouteManager_SetAvoidanceFieldUseAdvancedAvoidance.c
Window: [0x10540e00, 0x10540e50) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540e50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540e00: e8 9b 93 1e 00 85 c0 74 3b 8b 4c 24 08 8b 54 24
10540e10: 04 51 52 8b c8 e8 96 9d 1e 00 85 c0 74 26 8b 0d
10540e20: 78 d9 c8 10 51 8b c8 e8 74 5f 1e 00 85 c0 74 14
10540e30: 8b 80 0c 01 00 00 85 c0 74 0a 8a 54 24 0c 88 90
10540e40: b4 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540e00 <.text+0x53fe00>:
10540e00:	e8 9b 93 1e 00                                  	call   0x1072a1a0
10540e05:	85 c0                                           	test   eax,eax
10540e07:	74 3b                                           	je     0x10540e44
10540e09:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540e0d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540e11:	51                                              	push   ecx
10540e12:	52                                              	push   edx
10540e13:	8b c8                                           	mov    ecx,eax
10540e15:	e8 96 9d 1e 00                                  	call   0x1072abb0
10540e1a:	85 c0                                           	test   eax,eax
10540e1c:	74 26                                           	je     0x10540e44
10540e1e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540e24:	51                                              	push   ecx
10540e25:	8b c8                                           	mov    ecx,eax
10540e27:	e8 74 5f 1e 00                                  	call   0x10726da0
10540e2c:	85 c0                                           	test   eax,eax
10540e2e:	74 14                                           	je     0x10540e44
10540e30:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
10540e36:	85 c0                                           	test   eax,eax
10540e38:	74 0a                                           	je     0x10540e44
10540e3a:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
10540e3e:	88 90 b4 00 00 00                               	mov    BYTE PTR [eax+0xb4],dl
10540e44:	c3                                              	ret
10540e45:	cc                                              	int3
10540e46:	cc                                              	int3
10540e47:	cc                                              	int3
10540e48:	cc                                              	int3
10540e49:	cc                                              	int3
10540e4a:	cc                                              	int3
10540e4b:	cc                                              	int3
10540e4c:	cc                                              	int3
10540e4d:	cc                                              	int3
10540e4e:	cc                                              	int3
10540e4f:	cc                                              	int3
