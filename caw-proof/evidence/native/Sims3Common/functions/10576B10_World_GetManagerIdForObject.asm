# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10576b10 (World_GetManagerIdForObject)
Paired Ghidra pseudocode: 10576B10_World_GetManagerIdForObject.c
Window: [0x10576b10, 0x10576b50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10576b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10576b10: e8 8b 36 1b 00 85 c0 75 05 33 c0 33 d2 c3 8b 4c
10576b20: 24 08 8b 54 24 04 51 52 8b c8 e8 81 40 1b 00 85
10576b30: c0 74 e6 8b c8 e8 e6 0a 3f 00 85 c0 74 09 8b 48
10576b40: 48 8b 50 4c 8b c1 c3 33 c9 33 d2 8b c1 c3 cc cc

LINEAR DISASSEMBLY
10576b10 <.text+0x575b10>:
10576b10:	e8 8b 36 1b 00                                  	call   0x1072a1a0
10576b15:	85 c0                                           	test   eax,eax
10576b17:	75 05                                           	jne    0x10576b1e
10576b19:	33 c0                                           	xor    eax,eax
10576b1b:	33 d2                                           	xor    edx,edx
10576b1d:	c3                                              	ret
10576b1e:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10576b22:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10576b26:	51                                              	push   ecx
10576b27:	52                                              	push   edx
10576b28:	8b c8                                           	mov    ecx,eax
10576b2a:	e8 81 40 1b 00                                  	call   0x1072abb0
10576b2f:	85 c0                                           	test   eax,eax
10576b31:	74 e6                                           	je     0x10576b19
10576b33:	8b c8                                           	mov    ecx,eax
10576b35:	e8 e6 0a 3f 00                                  	call   0x10967620
10576b3a:	85 c0                                           	test   eax,eax
10576b3c:	74 09                                           	je     0x10576b47
10576b3e:	8b 48 48                                        	mov    ecx,DWORD PTR [eax+0x48]
10576b41:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10576b44:	8b c1                                           	mov    eax,ecx
10576b46:	c3                                              	ret
10576b47:	33 c9                                           	xor    ecx,ecx
10576b49:	33 d2                                           	xor    edx,edx
10576b4b:	8b c1                                           	mov    eax,ecx
10576b4d:	c3                                              	ret
10576b4e:	cc                                              	int3
10576b4f:	cc                                              	int3
