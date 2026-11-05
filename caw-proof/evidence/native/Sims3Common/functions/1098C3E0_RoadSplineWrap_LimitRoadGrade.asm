# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098c3e0 (RoadSplineWrap_LimitRoadGrade)
Paired Ghidra pseudocode: 1098C3E0_RoadSplineWrap_LimitRoadGrade.c
Window: [0x1098c3e0, 0x1098c410) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098c410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098c3e0: 8b 44 24 10 d9 44 24 08 8b 4c 24 0c 8b 54 24 04
1098c3f0: 50 51 51 d9 1c 24 52 e8 14 9f 7c ff 83 c4 10 f6
1098c400: d8 1b c0 f7 d8 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098c3e0 <.text+0x98b3e0>:
1098c3e0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1098c3e4:	d9 44 24 08                                     	fld    DWORD PTR [esp+0x8]
1098c3e8:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098c3ec:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1098c3f0:	50                                              	push   eax
1098c3f1:	51                                              	push   ecx
1098c3f2:	51                                              	push   ecx
1098c3f3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1098c3f6:	52                                              	push   edx
1098c3f7:	e8 14 9f 7c ff                                  	call   0x10156310
1098c3fc:	83 c4 10                                        	add    esp,0x10
1098c3ff:	f6 d8                                           	neg    al
1098c401:	1b c0                                           	sbb    eax,eax
1098c403:	f7 d8                                           	neg    eax
1098c405:	c3                                              	ret
1098c406:	cc                                              	int3
1098c407:	cc                                              	int3
1098c408:	cc                                              	int3
1098c409:	cc                                              	int3
1098c40a:	cc                                              	int3
1098c40b:	cc                                              	int3
1098c40c:	cc                                              	int3
1098c40d:	cc                                              	int3
1098c40e:	cc                                              	int3
1098c40f:	cc                                              	int3
