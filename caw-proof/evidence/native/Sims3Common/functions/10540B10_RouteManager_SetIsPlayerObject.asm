# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540b10 (RouteManager_SetIsPlayerObject)
Paired Ghidra pseudocode: 10540B10_RouteManager_SetIsPlayerObject.c
Window: [0x10540b10, 0x10540b50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540b10: e8 8b 96 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
10540b20: 04 51 52 8b c8 e8 86 a0 1e 00 85 c0 74 19 8b 0d
10540b30: 78 d9 c8 10 51 8b c8 e8 64 62 1e 00 85 c0 74 07
10540b40: 8a 54 24 0c 88 50 38 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540b10 <.text+0x53fb10>:
10540b10:	e8 8b 96 1e 00                                  	call   0x1072a1a0
10540b15:	85 c0                                           	test   eax,eax
10540b17:	74 2e                                           	je     0x10540b47
10540b19:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540b1d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540b21:	51                                              	push   ecx
10540b22:	52                                              	push   edx
10540b23:	8b c8                                           	mov    ecx,eax
10540b25:	e8 86 a0 1e 00                                  	call   0x1072abb0
10540b2a:	85 c0                                           	test   eax,eax
10540b2c:	74 19                                           	je     0x10540b47
10540b2e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540b34:	51                                              	push   ecx
10540b35:	8b c8                                           	mov    ecx,eax
10540b37:	e8 64 62 1e 00                                  	call   0x10726da0
10540b3c:	85 c0                                           	test   eax,eax
10540b3e:	74 07                                           	je     0x10540b47
10540b40:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
10540b44:	88 50 38                                        	mov    BYTE PTR [eax+0x38],dl
10540b47:	c3                                              	ret
10540b48:	cc                                              	int3
10540b49:	cc                                              	int3
10540b4a:	cc                                              	int3
10540b4b:	cc                                              	int3
10540b4c:	cc                                              	int3
10540b4d:	cc                                              	int3
10540b4e:	cc                                              	int3
10540b4f:	cc                                              	int3
