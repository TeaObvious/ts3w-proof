# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eda0 (SceneManWrap_GetVisibility)
Paired Ghidra pseudocode: 1098EDA0_SceneManWrap_GetVisibility.c
Window: [0x1098eda0, 0x1098edf0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098edf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eda0: 8b 4c 24 04 85 c9 56 57 74 34 e8 a1 c0 da ff 8b
1098edb0: f0 8b fa e8 e8 43 b6 ff 85 c0 74 22 57 56 8b c8
1098edc0: e8 0b 49 b6 ff 85 c0 74 15 8b c8 e8 e0 98 b8 ff
1098edd0: 24 01 2c 01 f6 d8 5f 5e 1b c0 83 c0 01 c3 5f 32
1098ede0: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098eda0 <.text+0x98dda0>:
1098eda0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1098eda4:	85 c9                                           	test   ecx,ecx
1098eda6:	56                                              	push   esi
1098eda7:	57                                              	push   edi
1098eda8:	74 34                                           	je     0x1098edde
1098edaa:	e8 a1 c0 da ff                                  	call   0x1073ae50
1098edaf:	8b f0                                           	mov    esi,eax
1098edb1:	8b fa                                           	mov    edi,edx
1098edb3:	e8 e8 43 b6 ff                                  	call   0x104f31a0
1098edb8:	85 c0                                           	test   eax,eax
1098edba:	74 22                                           	je     0x1098edde
1098edbc:	57                                              	push   edi
1098edbd:	56                                              	push   esi
1098edbe:	8b c8                                           	mov    ecx,eax
1098edc0:	e8 0b 49 b6 ff                                  	call   0x104f36d0
1098edc5:	85 c0                                           	test   eax,eax
1098edc7:	74 15                                           	je     0x1098edde
1098edc9:	8b c8                                           	mov    ecx,eax
1098edcb:	e8 e0 98 b8 ff                                  	call   0x105186b0
1098edd0:	24 01                                           	and    al,0x1
1098edd2:	2c 01                                           	sub    al,0x1
1098edd4:	f6 d8                                           	neg    al
1098edd6:	5f                                              	pop    edi
1098edd7:	5e                                              	pop    esi
1098edd8:	1b c0                                           	sbb    eax,eax
1098edda:	83 c0 01                                        	add    eax,0x1
1098eddd:	c3                                              	ret
1098edde:	5f                                              	pop    edi
1098eddf:	32 c0                                           	xor    al,al
1098ede1:	5e                                              	pop    esi
1098ede2:	c3                                              	ret
1098ede3:	cc                                              	int3
1098ede4:	cc                                              	int3
1098ede5:	cc                                              	int3
1098ede6:	cc                                              	int3
1098ede7:	cc                                              	int3
1098ede8:	cc                                              	int3
1098ede9:	cc                                              	int3
1098edea:	cc                                              	int3
1098edeb:	cc                                              	int3
1098edec:	cc                                              	int3
1098eded:	cc                                              	int3
1098edee:	cc                                              	int3
1098edef:	cc                                              	int3
