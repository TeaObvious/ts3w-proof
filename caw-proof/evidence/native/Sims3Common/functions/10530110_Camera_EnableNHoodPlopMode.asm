# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530110 (Camera_EnableNHoodPlopMode)
Paired Ghidra pseudocode: 10530110_Camera_EnableNHoodPlopMode.c
Window: [0x10530110, 0x10530150) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530150
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530110: e8 1b c5 22 00 85 c0 74 2f 8b c8 e8 60 79 40 00
10530120: 85 c0 74 24 8b c8 e8 25 c8 22 00 85 c0 74 19 8b
10530130: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
10530140: 07 8b c8 e9 b8 28 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530110 <.text+0x52f110>:
10530110:	e8 1b c5 22 00                                  	call   0x1075c630
10530115:	85 c0                                           	test   eax,eax
10530117:	74 2f                                           	je     0x10530148
10530119:	8b c8                                           	mov    ecx,eax
1053011b:	e8 60 79 40 00                                  	call   0x10937a80
10530120:	85 c0                                           	test   eax,eax
10530122:	74 24                                           	je     0x10530148
10530124:	8b c8                                           	mov    ecx,eax
10530126:	e8 25 c8 22 00                                  	call   0x1075c950
1053012b:	85 c0                                           	test   eax,eax
1053012d:	74 19                                           	je     0x10530148
1053012f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530131:	8b c8                                           	mov    ecx,eax
10530133:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
10530136:	68 89 dd 0f 11                                  	push   0x110fdd89
1053013b:	ff d0                                           	call   eax
1053013d:	85 c0                                           	test   eax,eax
1053013f:	74 07                                           	je     0x10530148
10530141:	8b c8                                           	mov    ecx,eax
10530143:	e9 b8 28 23 00                                  	jmp    0x10762a00
10530148:	c3                                              	ret
10530149:	cc                                              	int3
1053014a:	cc                                              	int3
1053014b:	cc                                              	int3
1053014c:	cc                                              	int3
1053014d:	cc                                              	int3
1053014e:	cc                                              	int3
1053014f:	cc                                              	int3
