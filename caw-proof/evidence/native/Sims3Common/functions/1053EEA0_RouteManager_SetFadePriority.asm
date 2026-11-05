# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053eea0 (RouteManager_SetFadePriority)
Paired Ghidra pseudocode: 1053EEA0_RouteManager_SetFadePriority.c
Window: [0x1053eea0, 0x1053eee0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053eee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053eea0: e8 fb b2 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
1053eeb0: 04 51 52 8b c8 e8 f6 bc 1e 00 85 c0 74 19 8b 0d
1053eec0: 78 d9 c8 10 51 8b c8 e8 d4 7e 1e 00 85 c0 74 07
1053eed0: 8b 54 24 0c 89 50 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053eea0 <.text+0x53dea0>:
1053eea0:	e8 fb b2 1e 00                                  	call   0x1072a1a0
1053eea5:	85 c0                                           	test   eax,eax
1053eea7:	74 2e                                           	je     0x1053eed7
1053eea9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1053eead:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1053eeb1:	51                                              	push   ecx
1053eeb2:	52                                              	push   edx
1053eeb3:	8b c8                                           	mov    ecx,eax
1053eeb5:	e8 f6 bc 1e 00                                  	call   0x1072abb0
1053eeba:	85 c0                                           	test   eax,eax
1053eebc:	74 19                                           	je     0x1053eed7
1053eebe:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
1053eec4:	51                                              	push   ecx
1053eec5:	8b c8                                           	mov    ecx,eax
1053eec7:	e8 d4 7e 1e 00                                  	call   0x10726da0
1053eecc:	85 c0                                           	test   eax,eax
1053eece:	74 07                                           	je     0x1053eed7
1053eed0:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1053eed4:	89 50 34                                        	mov    DWORD PTR [eax+0x34],edx
1053eed7:	c3                                              	ret
1053eed8:	cc                                              	int3
1053eed9:	cc                                              	int3
1053eeda:	cc                                              	int3
1053eedb:	cc                                              	int3
1053eedc:	cc                                              	int3
1053eedd:	cc                                              	int3
1053eede:	cc                                              	int3
1053eedf:	cc                                              	int3
