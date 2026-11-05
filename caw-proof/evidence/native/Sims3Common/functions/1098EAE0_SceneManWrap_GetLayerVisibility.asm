# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098eae0 (SceneManWrap_GetLayerVisibility)
Paired Ghidra pseudocode: 1098EAE0_SceneManWrap_GetLayerVisibility.c
Window: [0x1098eae0, 0x1098eb30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098eb30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098eae0: 51 8b 4c 24 0c 83 f9 10 72 04 33 c0 59 c3 56 be
1098eaf0: 00 00 01 00 d3 e6 f7 c6 00 f0 ff 7f 75 05 33 c0
1098eb00: 5e 59 c3 8d 44 24 10 50 8d 4c 24 08 51 8b 4c 24
1098eb10: 14 e8 3a f9 b4 ff 8b 44 24 10 23 c6 f7 d8 1b c0
1098eb20: f7 d8 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098eae0 <.text+0x98dae0>:
1098eae0:	51                                              	push   ecx
1098eae1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098eae5:	83 f9 10                                        	cmp    ecx,0x10
1098eae8:	72 04                                           	jb     0x1098eaee
1098eaea:	33 c0                                           	xor    eax,eax
1098eaec:	59                                              	pop    ecx
1098eaed:	c3                                              	ret
1098eaee:	56                                              	push   esi
1098eaef:	be 00 00 01 00                                  	mov    esi,0x10000
1098eaf4:	d3 e6                                           	shl    esi,cl
1098eaf6:	f7 c6 00 f0 ff 7f                               	test   esi,0x7ffff000
1098eafc:	75 05                                           	jne    0x1098eb03
1098eafe:	33 c0                                           	xor    eax,eax
1098eb00:	5e                                              	pop    esi
1098eb01:	59                                              	pop    ecx
1098eb02:	c3                                              	ret
1098eb03:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098eb07:	50                                              	push   eax
1098eb08:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1098eb0c:	51                                              	push   ecx
1098eb0d:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1098eb11:	e8 3a f9 b4 ff                                  	call   0x104de450
1098eb16:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098eb1a:	23 c6                                           	and    eax,esi
1098eb1c:	f7 d8                                           	neg    eax
1098eb1e:	1b c0                                           	sbb    eax,eax
1098eb20:	f7 d8                                           	neg    eax
1098eb22:	5e                                              	pop    esi
1098eb23:	59                                              	pop    ecx
1098eb24:	c3                                              	ret
1098eb25:	cc                                              	int3
1098eb26:	cc                                              	int3
1098eb27:	cc                                              	int3
1098eb28:	cc                                              	int3
1098eb29:	cc                                              	int3
1098eb2a:	cc                                              	int3
1098eb2b:	cc                                              	int3
1098eb2c:	cc                                              	int3
1098eb2d:	cc                                              	int3
1098eb2e:	cc                                              	int3
1098eb2f:	cc                                              	int3
