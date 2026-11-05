# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536b80 (Objects_SetVisibleForLOS)
Paired Ghidra pseudocode: 10536B80_Objects_SetVisibleForLOS.c
Window: [0x10536b80, 0x10536bd0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536bd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536b80: e8 1b 36 1f 00 85 c0 75 03 32 c0 c3 8b 4c 24 08
10536b90: 8b 54 24 04 51 52 8b c8 e8 13 40 1f 00 85 c0 74
10536ba0: e8 8b 0d 08 d8 c8 10 51 8b c8 e8 f1 01 1f 00 85
10536bb0: c0 75 08 38 44 24 0c 0f 94 c0 c3 8b 54 24 0c 52
10536bc0: 8b c8 e8 79 80 20 00 b0 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536b80 <.text+0x535b80>:
10536b80:	e8 1b 36 1f 00                                  	call   0x1072a1a0
10536b85:	85 c0                                           	test   eax,eax
10536b87:	75 03                                           	jne    0x10536b8c
10536b89:	32 c0                                           	xor    al,al
10536b8b:	c3                                              	ret
10536b8c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536b90:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536b94:	51                                              	push   ecx
10536b95:	52                                              	push   edx
10536b96:	8b c8                                           	mov    ecx,eax
10536b98:	e8 13 40 1f 00                                  	call   0x1072abb0
10536b9d:	85 c0                                           	test   eax,eax
10536b9f:	74 e8                                           	je     0x10536b89
10536ba1:	8b 0d 08 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d808
10536ba7:	51                                              	push   ecx
10536ba8:	8b c8                                           	mov    ecx,eax
10536baa:	e8 f1 01 1f 00                                  	call   0x10726da0
10536baf:	85 c0                                           	test   eax,eax
10536bb1:	75 08                                           	jne    0x10536bbb
10536bb3:	38 44 24 0c                                     	cmp    BYTE PTR [esp+0xc],al
10536bb7:	0f 94 c0                                        	sete   al
10536bba:	c3                                              	ret
10536bbb:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10536bbf:	52                                              	push   edx
10536bc0:	8b c8                                           	mov    ecx,eax
10536bc2:	e8 79 80 20 00                                  	call   0x1073ec40
10536bc7:	b0 01                                           	mov    al,0x1
10536bc9:	c3                                              	ret
10536bca:	cc                                              	int3
10536bcb:	cc                                              	int3
10536bcc:	cc                                              	int3
10536bcd:	cc                                              	int3
10536bce:	cc                                              	int3
10536bcf:	cc                                              	int3
