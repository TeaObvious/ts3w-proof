# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10580de0 (World_SetObjectSnowImpl)
Paired Ghidra pseudocode: 10580DE0_World_SetObjectSnowImpl.c
Window: [0x10580de0, 0x10580e20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10580e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10580de0: e8 bb 93 1a 00 85 c0 74 35 8b 4c 24 08 8b 54 24
10580df0: 04 51 52 8b c8 e8 b6 9d 1a 00 85 c0 74 20 8b 0d
10580e00: e8 da c8 10 51 8b c8 e8 94 5f 1a 00 85 c0 74 0e
10580e10: 8b 54 24 0c 6a 02 52 8b c8 e8 92 13 1d 00 c3 cc

LINEAR DISASSEMBLY
10580de0 <.text+0x57fde0>:
10580de0:	e8 bb 93 1a 00                                  	call   0x1072a1a0
10580de5:	85 c0                                           	test   eax,eax
10580de7:	74 35                                           	je     0x10580e1e
10580de9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10580ded:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10580df1:	51                                              	push   ecx
10580df2:	52                                              	push   edx
10580df3:	8b c8                                           	mov    ecx,eax
10580df5:	e8 b6 9d 1a 00                                  	call   0x1072abb0
10580dfa:	85 c0                                           	test   eax,eax
10580dfc:	74 20                                           	je     0x10580e1e
10580dfe:	8b 0d e8 da c8 10                               	mov    ecx,DWORD PTR ds:0x10c8dae8
10580e04:	51                                              	push   ecx
10580e05:	8b c8                                           	mov    ecx,eax
10580e07:	e8 94 5f 1a 00                                  	call   0x10726da0
10580e0c:	85 c0                                           	test   eax,eax
10580e0e:	74 0e                                           	je     0x10580e1e
10580e10:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10580e14:	6a 02                                           	push   0x2
10580e16:	52                                              	push   edx
10580e17:	8b c8                                           	mov    ecx,eax
10580e19:	e8 92 13 1d 00                                  	call   0x107521b0
10580e1e:	c3                                              	ret
10580e1f:	cc                                              	int3
