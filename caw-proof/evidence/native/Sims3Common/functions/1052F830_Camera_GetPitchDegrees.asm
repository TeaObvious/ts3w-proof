# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f830 (Camera_GetPitchDegrees)
Paired Ghidra pseudocode: 1052F830_Camera_GetPitchDegrees.c
Window: [0x1052f830, 0x1052f870) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f830: e8 fb cd 22 00 85 c0 74 2f 8b c8 e8 40 82 40 00
1052f840: 85 c0 74 24 8b c8 e8 05 d1 22 00 85 c0 74 19 8b
1052f850: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052f860: 07 8b c8 e9 98 3f 23 00 d9 ee c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1052f830 <.text+0x52e830>:
1052f830:	e8 fb cd 22 00                                  	call   0x1075c630
1052f835:	85 c0                                           	test   eax,eax
1052f837:	74 2f                                           	je     0x1052f868
1052f839:	8b c8                                           	mov    ecx,eax
1052f83b:	e8 40 82 40 00                                  	call   0x10937a80
1052f840:	85 c0                                           	test   eax,eax
1052f842:	74 24                                           	je     0x1052f868
1052f844:	8b c8                                           	mov    ecx,eax
1052f846:	e8 05 d1 22 00                                  	call   0x1075c950
1052f84b:	85 c0                                           	test   eax,eax
1052f84d:	74 19                                           	je     0x1052f868
1052f84f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f851:	8b c8                                           	mov    ecx,eax
1052f853:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052f856:	68 89 dd 0f 11                                  	push   0x110fdd89
1052f85b:	ff d0                                           	call   eax
1052f85d:	85 c0                                           	test   eax,eax
1052f85f:	74 07                                           	je     0x1052f868
1052f861:	8b c8                                           	mov    ecx,eax
1052f863:	e9 98 3f 23 00                                  	jmp    0x10763800
1052f868:	d9 ee                                           	fldz
1052f86a:	c3                                              	ret
1052f86b:	cc                                              	int3
1052f86c:	cc                                              	int3
1052f86d:	cc                                              	int3
1052f86e:	cc                                              	int3
1052f86f:	cc                                              	int3
