# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052fe90 (Camera_FinishTimeLerp)
Paired Ghidra pseudocode: 1052FE90_Camera_FinishTimeLerp.c
Window: [0x1052fe90, 0x1052fed0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052fed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052fe90: e8 9b c7 22 00 85 c0 74 2f 8b c8 e8 e0 7b 40 00
1052fea0: 85 c0 74 24 8b c8 e8 a5 ca 22 00 85 c0 74 19 8b
1052feb0: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052fec0: 07 8b c8 e9 88 2a 23 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052fe90 <.text+0x52ee90>:
1052fe90:	e8 9b c7 22 00                                  	call   0x1075c630
1052fe95:	85 c0                                           	test   eax,eax
1052fe97:	74 2f                                           	je     0x1052fec8
1052fe99:	8b c8                                           	mov    ecx,eax
1052fe9b:	e8 e0 7b 40 00                                  	call   0x10937a80
1052fea0:	85 c0                                           	test   eax,eax
1052fea2:	74 24                                           	je     0x1052fec8
1052fea4:	8b c8                                           	mov    ecx,eax
1052fea6:	e8 a5 ca 22 00                                  	call   0x1075c950
1052feab:	85 c0                                           	test   eax,eax
1052fead:	74 19                                           	je     0x1052fec8
1052feaf:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052feb1:	8b c8                                           	mov    ecx,eax
1052feb3:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052feb6:	68 89 dd 0f 11                                  	push   0x110fdd89
1052febb:	ff d0                                           	call   eax
1052febd:	85 c0                                           	test   eax,eax
1052febf:	74 07                                           	je     0x1052fec8
1052fec1:	8b c8                                           	mov    ecx,eax
1052fec3:	e9 88 2a 23 00                                  	jmp    0x10762950
1052fec8:	c3                                              	ret
1052fec9:	cc                                              	int3
1052feca:	cc                                              	int3
1052fecb:	cc                                              	int3
1052fecc:	cc                                              	int3
1052fecd:	cc                                              	int3
1052fece:	cc                                              	int3
1052fecf:	cc                                              	int3
