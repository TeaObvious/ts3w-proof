# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536b40 (Objects_IsVisibleForLOS)
Paired Ghidra pseudocode: 10536B40_Objects_IsVisibleForLOS.c
Window: [0x10536b40, 0x10536b80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536b40: e8 5b 36 1f 00 85 c0 75 03 32 c0 c3 8b 4c 24 08
10536b50: 8b 54 24 04 51 52 8b c8 e8 53 40 1f 00 85 c0 74
10536b60: e8 8b 0d 08 d8 c8 10 51 8b c8 e8 31 02 1f 00 85
10536b70: c0 74 d6 8b c8 e9 76 35 16 00 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536b40 <.text+0x535b40>:
10536b40:	e8 5b 36 1f 00                                  	call   0x1072a1a0
10536b45:	85 c0                                           	test   eax,eax
10536b47:	75 03                                           	jne    0x10536b4c
10536b49:	32 c0                                           	xor    al,al
10536b4b:	c3                                              	ret
10536b4c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536b50:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536b54:	51                                              	push   ecx
10536b55:	52                                              	push   edx
10536b56:	8b c8                                           	mov    ecx,eax
10536b58:	e8 53 40 1f 00                                  	call   0x1072abb0
10536b5d:	85 c0                                           	test   eax,eax
10536b5f:	74 e8                                           	je     0x10536b49
10536b61:	8b 0d 08 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d808
10536b67:	51                                              	push   ecx
10536b68:	8b c8                                           	mov    ecx,eax
10536b6a:	e8 31 02 1f 00                                  	call   0x10726da0
10536b6f:	85 c0                                           	test   eax,eax
10536b71:	74 d6                                           	je     0x10536b49
10536b73:	8b c8                                           	mov    ecx,eax
10536b75:	e9 76 35 16 00                                  	jmp    0x1069a0f0
10536b7a:	cc                                              	int3
10536b7b:	cc                                              	int3
10536b7c:	cc                                              	int3
10536b7d:	cc                                              	int3
10536b7e:	cc                                              	int3
10536b7f:	cc                                              	int3
