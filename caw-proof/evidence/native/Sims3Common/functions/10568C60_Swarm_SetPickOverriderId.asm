# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10568c60 (Swarm_SetPickOverriderId)
Paired Ghidra pseudocode: 10568C60_Swarm_SetPickOverriderId.c
Window: [0x10568c60, 0x10568cb0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10568cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10568c60: e8 3b 15 1c 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10568c70: c8 e8 3a 1f 1c 00 85 c0 74 26 8b 0d d0 d6 c8 10
10568c80: 51 8b c8 e8 18 e1 1b 00 85 c0 74 14 8b 54 24 10
10568c90: 8b 4c 24 0c 52 51 8b c8 e8 b3 d0 1c 00 b0 01 c3
10568ca0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10568c60 <.text+0x567c60>:
10568c60:	e8 3b 15 1c 00                                  	call   0x1072a1a0
10568c65:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10568c69:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10568c6d:	51                                              	push   ecx
10568c6e:	52                                              	push   edx
10568c6f:	8b c8                                           	mov    ecx,eax
10568c71:	e8 3a 1f 1c 00                                  	call   0x1072abb0
10568c76:	85 c0                                           	test   eax,eax
10568c78:	74 26                                           	je     0x10568ca0
10568c7a:	8b 0d d0 d6 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d6d0
10568c80:	51                                              	push   ecx
10568c81:	8b c8                                           	mov    ecx,eax
10568c83:	e8 18 e1 1b 00                                  	call   0x10726da0
10568c88:	85 c0                                           	test   eax,eax
10568c8a:	74 14                                           	je     0x10568ca0
10568c8c:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10568c90:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10568c94:	52                                              	push   edx
10568c95:	51                                              	push   ecx
10568c96:	8b c8                                           	mov    ecx,eax
10568c98:	e8 b3 d0 1c 00                                  	call   0x10735d50
10568c9d:	b0 01                                           	mov    al,0x1
10568c9f:	c3                                              	ret
10568ca0:	32 c0                                           	xor    al,al
10568ca2:	c3                                              	ret
10568ca3:	cc                                              	int3
10568ca4:	cc                                              	int3
10568ca5:	cc                                              	int3
10568ca6:	cc                                              	int3
10568ca7:	cc                                              	int3
10568ca8:	cc                                              	int3
10568ca9:	cc                                              	int3
10568caa:	cc                                              	int3
10568cab:	cc                                              	int3
10568cac:	cc                                              	int3
10568cad:	cc                                              	int3
10568cae:	cc                                              	int3
10568caf:	cc                                              	int3
