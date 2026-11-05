# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536a70 (Objects_GetLotId)
Paired Ghidra pseudocode: 10536A70_Objects_GetLotId.c
Window: [0x10536a70, 0x10536ab0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536a70: e8 2b 37 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536a80: c8 e8 2a 41 1f 00 85 c0 74 1b 8b 0d 08 04 c7 10
10536a90: 51 8b c8 e8 08 03 1f 00 8b c8 85 c9 74 07 8b 41
10536aa0: 08 8b 51 0c c3 33 c0 33 d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536a70 <.text+0x535a70>:
10536a70:	e8 2b 37 1f 00                                  	call   0x1072a1a0
10536a75:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536a79:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536a7d:	51                                              	push   ecx
10536a7e:	52                                              	push   edx
10536a7f:	8b c8                                           	mov    ecx,eax
10536a81:	e8 2a 41 1f 00                                  	call   0x1072abb0
10536a86:	85 c0                                           	test   eax,eax
10536a88:	74 1b                                           	je     0x10536aa5
10536a8a:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536a90:	51                                              	push   ecx
10536a91:	8b c8                                           	mov    ecx,eax
10536a93:	e8 08 03 1f 00                                  	call   0x10726da0
10536a98:	8b c8                                           	mov    ecx,eax
10536a9a:	85 c9                                           	test   ecx,ecx
10536a9c:	74 07                                           	je     0x10536aa5
10536a9e:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
10536aa1:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
10536aa4:	c3                                              	ret
10536aa5:	33 c0                                           	xor    eax,eax
10536aa7:	33 d2                                           	xor    edx,edx
10536aa9:	c3                                              	ret
10536aaa:	cc                                              	int3
10536aab:	cc                                              	int3
10536aac:	cc                                              	int3
10536aad:	cc                                              	int3
10536aae:	cc                                              	int3
10536aaf:	cc                                              	int3
