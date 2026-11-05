# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998fa0 (WorldWrap_SetRoutableSurfaceVisible)
Paired Ghidra pseudocode: 10998FA0_WorldWrap_SetRoutableSurfaceVisible.c
Window: [0x10998fa0, 0x10998fd0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998fd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998fa0: a1 c4 00 c7 10 85 c0 74 20 8b 48 54 85 c9 74 19
10998fb0: e8 9b da d1 ff 85 c0 74 10 83 7c 24 04 00 0f 95
10998fc0: c1 51 8b c8 e8 97 78 85 ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998fa0 <.text+0x997fa0>:
10998fa0:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10998fa5:	85 c0                                           	test   eax,eax
10998fa7:	74 20                                           	je     0x10998fc9
10998fa9:	8b 48 54                                        	mov    ecx,DWORD PTR [eax+0x54]
10998fac:	85 c9                                           	test   ecx,ecx
10998fae:	74 19                                           	je     0x10998fc9
10998fb0:	e8 9b da d1 ff                                  	call   0x106b6a50
10998fb5:	85 c0                                           	test   eax,eax
10998fb7:	74 10                                           	je     0x10998fc9
10998fb9:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
10998fbe:	0f 95 c1                                        	setne  cl
10998fc1:	51                                              	push   ecx
10998fc2:	8b c8                                           	mov    ecx,eax
10998fc4:	e8 97 78 85 ff                                  	call   0x101f0860
10998fc9:	c3                                              	ret
10998fca:	cc                                              	int3
10998fcb:	cc                                              	int3
10998fcc:	cc                                              	int3
10998fcd:	cc                                              	int3
10998fce:	cc                                              	int3
10998fcf:	cc                                              	int3
