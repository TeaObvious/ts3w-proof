# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540e50 (RouteManager_ForcePlayWeatherEffectForTerrainType)
Paired Ghidra pseudocode: 10540E50_RouteManager_ForcePlayWeatherEffectForTerrainType.c
Window: [0x10540e50, 0x10540e90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540e90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540e50: e8 4b 93 1e 00 85 c0 74 33 8b 4c 24 08 8b 54 24
10540e60: 04 51 52 8b c8 e8 46 9d 1e 00 85 c0 74 1e 8b 0d
10540e70: 78 d9 c8 10 51 8b c8 e8 24 5f 1e 00 85 c0 74 0c
10540e80: 66 8b 54 24 0c 66 89 90 fc 00 00 00 c3 cc cc cc

LINEAR DISASSEMBLY
10540e50 <.text+0x53fe50>:
10540e50:	e8 4b 93 1e 00                                  	call   0x1072a1a0
10540e55:	85 c0                                           	test   eax,eax
10540e57:	74 33                                           	je     0x10540e8c
10540e59:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540e5d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540e61:	51                                              	push   ecx
10540e62:	52                                              	push   edx
10540e63:	8b c8                                           	mov    ecx,eax
10540e65:	e8 46 9d 1e 00                                  	call   0x1072abb0
10540e6a:	85 c0                                           	test   eax,eax
10540e6c:	74 1e                                           	je     0x10540e8c
10540e6e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540e74:	51                                              	push   ecx
10540e75:	8b c8                                           	mov    ecx,eax
10540e77:	e8 24 5f 1e 00                                  	call   0x10726da0
10540e7c:	85 c0                                           	test   eax,eax
10540e7e:	74 0c                                           	je     0x10540e8c
10540e80:	66 8b 54 24 0c                                  	mov    dx,WORD PTR [esp+0xc]
10540e85:	66 89 90 fc 00 00 00                            	mov    WORD PTR [eax+0xfc],dx
10540e8c:	c3                                              	ret
10540e8d:	cc                                              	int3
10540e8e:	cc                                              	int3
10540e8f:	cc                                              	int3
