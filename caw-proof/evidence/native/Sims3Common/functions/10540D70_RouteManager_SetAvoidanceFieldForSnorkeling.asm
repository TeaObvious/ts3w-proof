# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10540d70 (RouteManager_SetAvoidanceFieldForSnorkeling)
Paired Ghidra pseudocode: 10540D70_RouteManager_SetAvoidanceFieldForSnorkeling.c
Window: [0x10540d70, 0x10540db0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10540d70: e8 2b 94 1e 00 85 c0 74 2e 8b 4c 24 08 8b 54 24
10540d80: 04 51 52 8b c8 e8 26 9e 1e 00 85 c0 74 19 8b 0d
10540d90: 78 d9 c8 10 51 8b c8 e8 04 60 1e 00 85 c0 74 07
10540da0: 8b c8 e9 09 41 20 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10540d70 <.text+0x53fd70>:
10540d70:	e8 2b 94 1e 00                                  	call   0x1072a1a0
10540d75:	85 c0                                           	test   eax,eax
10540d77:	74 2e                                           	je     0x10540da7
10540d79:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10540d7d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10540d81:	51                                              	push   ecx
10540d82:	52                                              	push   edx
10540d83:	8b c8                                           	mov    ecx,eax
10540d85:	e8 26 9e 1e 00                                  	call   0x1072abb0
10540d8a:	85 c0                                           	test   eax,eax
10540d8c:	74 19                                           	je     0x10540da7
10540d8e:	8b 0d 78 d9 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d978
10540d94:	51                                              	push   ecx
10540d95:	8b c8                                           	mov    ecx,eax
10540d97:	e8 04 60 1e 00                                  	call   0x10726da0
10540d9c:	85 c0                                           	test   eax,eax
10540d9e:	74 07                                           	je     0x10540da7
10540da0:	8b c8                                           	mov    ecx,eax
10540da2:	e9 09 41 20 00                                  	jmp    0x10744eb0
10540da7:	c3                                              	ret
10540da8:	cc                                              	int3
10540da9:	cc                                              	int3
10540daa:	cc                                              	int3
10540dab:	cc                                              	int3
10540dac:	cc                                              	int3
10540dad:	cc                                              	int3
10540dae:	cc                                              	int3
10540daf:	cc                                              	int3
