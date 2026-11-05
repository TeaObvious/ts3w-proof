# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105369f0 (Objects_GetLevel)
Paired Ghidra pseudocode: 105369F0_Objects_GetLevel.c
Window: [0x105369f0, 0x10536a30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105369f0: e8 ab 37 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536a00: c8 e8 aa 41 1f 00 85 c0 74 16 8b 0d 08 04 c7 10
10536a10: 51 8b c8 e8 88 03 1f 00 85 c0 74 04 8b 40 18 c3
10536a20: b8 ff ff ff 7f c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105369f0 <.text+0x5359f0>:
105369f0:	e8 ab 37 1f 00                                  	call   0x1072a1a0
105369f5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
105369f9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
105369fd:	51                                              	push   ecx
105369fe:	52                                              	push   edx
105369ff:	8b c8                                           	mov    ecx,eax
10536a01:	e8 aa 41 1f 00                                  	call   0x1072abb0
10536a06:	85 c0                                           	test   eax,eax
10536a08:	74 16                                           	je     0x10536a20
10536a0a:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536a10:	51                                              	push   ecx
10536a11:	8b c8                                           	mov    ecx,eax
10536a13:	e8 88 03 1f 00                                  	call   0x10726da0
10536a18:	85 c0                                           	test   eax,eax
10536a1a:	74 04                                           	je     0x10536a20
10536a1c:	8b 40 18                                        	mov    eax,DWORD PTR [eax+0x18]
10536a1f:	c3                                              	ret
10536a20:	b8 ff ff ff 7f                                  	mov    eax,0x7fffffff
10536a25:	c3                                              	ret
10536a26:	cc                                              	int3
10536a27:	cc                                              	int3
10536a28:	cc                                              	int3
10536a29:	cc                                              	int3
10536a2a:	cc                                              	int3
10536a2b:	cc                                              	int3
10536a2c:	cc                                              	int3
10536a2d:	cc                                              	int3
10536a2e:	cc                                              	int3
10536a2f:	cc                                              	int3
