# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c1f0 (UIManager_ShutdownMapTagSystemImpl)
Paired Ghidra pseudocode: 1056C1F0_UIManager_ShutdownMapTagSystemImpl.c
Window: [0x1056c1f0, 0x1056c210) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c1f0: e8 8b eb 06 00 85 c0 74 07 8b c8 e8 e0 e9 06 00
1056c200: 6a 00 e8 89 eb 06 00 59 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c1f0 <.text+0x56b1f0>:
1056c1f0:	e8 8b eb 06 00                                  	call   0x105dad80
1056c1f5:	85 c0                                           	test   eax,eax
1056c1f7:	74 07                                           	je     0x1056c200
1056c1f9:	8b c8                                           	mov    ecx,eax
1056c1fb:	e8 e0 e9 06 00                                  	call   0x105dabe0
1056c200:	6a 00                                           	push   0x0
1056c202:	e8 89 eb 06 00                                  	call   0x105dad90
1056c207:	59                                              	pop    ecx
1056c208:	c3                                              	ret
1056c209:	cc                                              	int3
1056c20a:	cc                                              	int3
1056c20b:	cc                                              	int3
1056c20c:	cc                                              	int3
1056c20d:	cc                                              	int3
1056c20e:	cc                                              	int3
1056c20f:	cc                                              	int3
