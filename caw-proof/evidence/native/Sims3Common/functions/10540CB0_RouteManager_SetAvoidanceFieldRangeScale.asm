# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540cb0 (RouteManager_SetAvoidanceFieldRangeScale)
Paired Ghidra pseudocode: 10540CB0_RouteManager_SetAvoidanceFieldRangeScale.c
Window: [0x10540cb0, 0x10540d00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540cb0: e8 eb 94 1e 00 85 c0 74 3f 8b 4c 24 08 8b 54 24
10540cc0: 04 51 52 8b c8 e8 e6 9e 1e 00 85 c0 74 2a 8b 0d
10540cd0: 78 d9 c8 10 51 8b c8 e8 c4 60 1e 00 85 c0 74 18
10540ce0: 8b 80 0c 01 00 00 85 c0 74 0e f3 0f 10 44 24 0c
10540cf0: f3 0f 11 80 ac 00 00 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540cb0 <.text+0x53fcb0>:
10540cb0:	e8 eb 94 1e 00                                  	call   0x1072a1a0
10540cb5:	85 c0                                           	test   eax,eax
10540cb7:	74 3f                                           	je     0x10540cf8
10540cb9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540cbd:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540cc1:	51                                              	push   ecx
10540cc2:	52                                              	push   edx
10540cc3:	8b c8                                           	mov    ecx,eax
10540cc5:	e8 e6 9e 1e 00                                  	call   0x1072abb0
10540cca:	85 c0                                           	test   eax,eax
10540ccc:	74 2a                                           	je     0x10540cf8
10540cce:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540cd4:	51                                              	push   ecx
10540cd5:	8b c8                                           	mov    ecx,eax
10540cd7:	e8 c4 60 1e 00                                  	call   0x10726da0
10540cdc:	85 c0                                           	test   eax,eax
10540cde:	74 18                                           	je     0x10540cf8
10540ce0:	8b 80 0c 01 00 00                               	mov    eax,DWORD PTR [eax+0x10c]
10540ce6:	85 c0                                           	test   eax,eax
10540ce8:	74 0e                                           	je     0x10540cf8
10540cea:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
10540cf0:	f3 0f 11 80 ac 00 00 00                         	movss  DWORD PTR [eax+0xac],xmm0
10540cf8:	c3                                              	ret
10540cf9:	cc                                              	int3
10540cfa:	cc                                              	int3
10540cfb:	cc                                              	int3
10540cfc:	cc                                              	int3
10540cfd:	cc                                              	int3
10540cfe:	cc                                              	int3
10540cff:	cc                                              	int3
