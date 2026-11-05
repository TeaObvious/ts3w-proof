# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540db0 (RouteManager_SetShouldHandleObstructionsEncountered)
Paired Ghidra pseudocode: 10540DB0_RouteManager_SetShouldHandleObstructionsEncountered.c
Window: [0x10540db0, 0x10540e00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540db0: e8 eb 93 1e 00 85 c0 74 3b 8b 4c 24 08 8b 54 24
10540dc0: 04 51 52 8b c8 e8 e6 9d 1e 00 85 c0 74 26 8b 0d
10540dd0: 78 d9 c8 10 51 8b c8 e8 c4 5f 1e 00 85 c0 74 14
10540de0: 8b 80 0c 01 00 00 85 c0 74 0a 8a 54 24 0c 88 90
10540df0: bc 00 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540db0 <.text+0x53fdb0>:
10540db0:	e8 eb 93 1e 00                                  	call   0x1072a1a0
10540db5:	85 c0                                           	test   eax,eax
10540db7:	74 3b                                           	je     0x10540df4
10540db9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540dbd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540dc1:	51                                              	push   ecx
10540dc2:	52                                              	push   edx
10540dc3:	8b c8                                           	mov    ecx,eax
10540dc5:	e8 e6 9d 1e 00                                  	call   0x1072abb0
10540dca:	85 c0                                           	test   eax,eax
10540dcc:	74 26                                           	je     0x10540df4
10540dce:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540dd4:	51                                              	push   ecx
10540dd5:	8b c8                                           	mov    ecx,eax
10540dd7:	e8 c4 5f 1e 00                                  	call   0x10726da0
10540ddc:	85 c0                                           	test   eax,eax
10540dde:	74 14                                           	je     0x10540df4
10540de0:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
10540de6:	85 c0                                           	test   eax,eax
10540de8:	74 0a                                           	je     0x10540df4
10540dea:	8a 54 24 0c                                     	mov    dl,BYTE PTR [esp+0xc]
10540dee:	88 90 bc 00 00 00                               	mov    BYTE PTR [eax+0xbc],dl
10540df4:	c3                                              	ret
10540df5:	cc                                              	int3
10540df6:	cc                                              	int3
10540df7:	cc                                              	int3
10540df8:	cc                                              	int3
10540df9:	cc                                              	int3
10540dfa:	cc                                              	int3
10540dfb:	cc                                              	int3
10540dfc:	cc                                              	int3
10540dfd:	cc                                              	int3
10540dfe:	cc                                              	int3
10540dff:	cc                                              	int3
