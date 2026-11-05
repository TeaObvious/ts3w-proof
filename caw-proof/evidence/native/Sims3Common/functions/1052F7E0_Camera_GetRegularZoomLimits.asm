# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f7e0 (Camera_GetRegularZoomLimits)
Paired Ghidra pseudocode: 1052F7E0_Camera_GetRegularZoomLimits.c
Window: [0x1052f7e0, 0x1052f830) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f7e0: e8 4b ce 22 00 85 c0 74 39 8b c8 e8 90 82 40 00
1052f7f0: 85 c0 74 2e 8b c8 e8 55 d1 22 00 85 c0 74 23 8b
1052f800: 10 8b c8 8b 42 0c 68 89 dd 0f 11 ff d0 85 c0 74
1052f810: 11 8b 4c 24 08 8b 54 24 04 51 52 8b c8 e8 0e 31
1052f820: 23 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052f7e0 <.text+0x52e7e0>:
1052f7e0:	e8 4b ce 22 00                                  	call   0x1075c630
1052f7e5:	85 c0                                           	test   eax,eax
1052f7e7:	74 39                                           	je     0x1052f822
1052f7e9:	8b c8                                           	mov    ecx,eax
1052f7eb:	e8 90 82 40 00                                  	call   0x10937a80
1052f7f0:	85 c0                                           	test   eax,eax
1052f7f2:	74 2e                                           	je     0x1052f822
1052f7f4:	8b c8                                           	mov    ecx,eax
1052f7f6:	e8 55 d1 22 00                                  	call   0x1075c950
1052f7fb:	85 c0                                           	test   eax,eax
1052f7fd:	74 23                                           	je     0x1052f822
1052f7ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f801:	8b c8                                           	mov    ecx,eax
1052f803:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
1052f806:	68 89 dd 0f 11                                  	push   0x110fdd89
1052f80b:	ff d0                                           	call   eax
1052f80d:	85 c0                                           	test   eax,eax
1052f80f:	74 11                                           	je     0x1052f822
1052f811:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1052f815:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
1052f819:	51                                              	push   ecx
1052f81a:	52                                              	push   edx
1052f81b:	8b c8                                           	mov    ecx,eax
1052f81d:	e8 0e 31 23 00                                  	call   0x10762930
1052f822:	c3                                              	ret
1052f823:	cc                                              	int3
1052f824:	cc                                              	int3
1052f825:	cc                                              	int3
1052f826:	cc                                              	int3
1052f827:	cc                                              	int3
1052f828:	cc                                              	int3
1052f829:	cc                                              	int3
1052f82a:	cc                                              	int3
1052f82b:	cc                                              	int3
1052f82c:	cc                                              	int3
1052f82d:	cc                                              	int3
1052f82e:	cc                                              	int3
1052f82f:	cc                                              	int3
