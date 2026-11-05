# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052f6e0 (Camera_SetRotating)
Paired Ghidra pseudocode: 1052F6E0_Camera_SetRotating.c
Window: [0x1052f6e0, 0x1052f710) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052f710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052f6e0: e8 4b cf 22 00 85 c0 74 24 8b c8 e8 90 83 40 00
1052f6f0: 85 c0 74 19 8b c8 e8 55 d2 22 00 85 c0 74 0e 8b
1052f700: 4c 24 04 8b 10 8b 52 44 51 8b c8 ff d2 c3 cc cc

LINEAR DISASSEMBLY
1052f6e0 <.text+0x52e6e0>:
1052f6e0:	e8 4b cf 22 00                                  	call   0x1075c630
1052f6e5:	85 c0                                           	test   eax,eax
1052f6e7:	74 24                                           	je     0x1052f70d
1052f6e9:	8b c8                                           	mov    ecx,eax
1052f6eb:	e8 90 83 40 00                                  	call   0x10937a80
1052f6f0:	85 c0                                           	test   eax,eax
1052f6f2:	74 19                                           	je     0x1052f70d
1052f6f4:	8b c8                                           	mov    ecx,eax
1052f6f6:	e8 55 d2 22 00                                  	call   0x1075c950
1052f6fb:	85 c0                                           	test   eax,eax
1052f6fd:	74 0e                                           	je     0x1052f70d
1052f6ff:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
1052f703:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052f705:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
1052f708:	51                                              	push   ecx
1052f709:	8b c8                                           	mov    ecx,eax
1052f70b:	ff d2                                           	call   edx
1052f70d:	c3                                              	ret
1052f70e:	cc                                              	int3
1052f70f:	cc                                              	int3
