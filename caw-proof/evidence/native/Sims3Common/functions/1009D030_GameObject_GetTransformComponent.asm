# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1009d030 (GameObject_GetTransformComponent)
Paired Ghidra pseudocode: 1009D030_GameObject_GetTransformComponent.c
Window: [0x1009d030, 0x1009d050) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x1009d050
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1009d030: 8b 4c 24 04 85 c9 74 0c a1 98 d9 c8 10 50 e8 5d
1009d040: 9d 68 00 c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1009d030 <.text+0x9c030>:
1009d030:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1009d034:	85 c9                                           	test   ecx,ecx
1009d036:	74 0c                                           	je     0x1009d044
1009d038:	a1 98 d9 c8 10                                  	mov    eax,ds:0x10c8d998
1009d03d:	50                                              	push   eax
1009d03e:	e8 5d 9d 68 00                                  	call   0x10726da0
1009d043:	c3                                              	ret
1009d044:	33 c0                                           	xor    eax,eax
1009d046:	c3                                              	ret
1009d047:	cc                                              	int3
1009d048:	cc                                              	int3
1009d049:	cc                                              	int3
1009d04a:	cc                                              	int3
1009d04b:	cc                                              	int3
1009d04c:	cc                                              	int3
1009d04d:	cc                                              	int3
1009d04e:	cc                                              	int3
1009d04f:	cc                                              	int3
