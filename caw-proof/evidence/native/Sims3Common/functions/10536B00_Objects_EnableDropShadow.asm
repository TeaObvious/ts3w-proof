# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536b00 (Objects_EnableDropShadow)
Paired Ghidra pseudocode: 10536B00_Objects_EnableDropShadow.c
Window: [0x10536b00, 0x10536b40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536b00: e8 9b 36 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536b10: c8 e8 9a 40 1f 00 85 c0 74 1e 8b 0d 04 d8 c8 10
10536b20: 51 8b c8 e8 78 02 1f 00 85 c0 74 0c 8b 54 24 0c
10536b30: 52 8b c8 e8 68 47 20 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10536b00 <.text+0x535b00>:
10536b00:	e8 9b 36 1f 00                                  	call   0x1072a1a0
10536b05:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536b09:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536b0d:	51                                              	push   ecx
10536b0e:	52                                              	push   edx
10536b0f:	8b c8                                           	mov    ecx,eax
10536b11:	e8 9a 40 1f 00                                  	call   0x1072abb0
10536b16:	85 c0                                           	test   eax,eax
10536b18:	74 1e                                           	je     0x10536b38
10536b1a:	8b 0d 04 d8 c8 10                               	mov    ecx,DWORD PTR ds:0x10c8d804
10536b20:	51                                              	push   ecx
10536b21:	8b c8                                           	mov    ecx,eax
10536b23:	e8 78 02 1f 00                                  	call   0x10726da0
10536b28:	85 c0                                           	test   eax,eax
10536b2a:	74 0c                                           	je     0x10536b38
10536b2c:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10536b30:	52                                              	push   edx
10536b31:	8b c8                                           	mov    ecx,eax
10536b33:	e8 68 47 20 00                                  	call   0x1073b2a0
10536b38:	c3                                              	ret
10536b39:	cc                                              	int3
10536b3a:	cc                                              	int3
10536b3b:	cc                                              	int3
10536b3c:	cc                                              	int3
10536b3d:	cc                                              	int3
10536b3e:	cc                                              	int3
10536b3f:	cc                                              	int3
