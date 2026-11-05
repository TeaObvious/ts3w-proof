# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a2880 (CASUtils_SetCameraOffsetImpl)
Paired Ghidra pseudocode: 103A2880_CASUtils_SetCameraOffsetImpl.c
Window: [0x103a2880, 0x103a28d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a28d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a2880: e8 ab 9d 3b 00 8b c8 e8 f4 51 59 00 8b c8 e8 bd
103a2890: a0 3b 00 85 c0 74 35 8b 10 8b c8 8b 42 0c 68 53
103a28a0: 5c b5 e5 ff d0 85 c0 74 23 d9 44 24 0c 8b 10 83
103a28b0: ec 0c d9 5c 24 08 8b c8 d9 44 24 14 8b 42 68 d9
103a28c0: 5c 24 04 d9 44 24 10 d9 1c 24 ff d0 c3 cc cc cc

LINEAR DISASSEMBLY
103a2880 <.text+0x3a1880>:
103a2880:	e8 ab 9d 3b 00                                  	call   0x1075c630
103a2885:	8b c8                                           	mov    ecx,eax
103a2887:	e8 f4 51 59 00                                  	call   0x10937a80
103a288c:	8b c8                                           	mov    ecx,eax
103a288e:	e8 bd a0 3b 00                                  	call   0x1075c950
103a2893:	85 c0                                           	test   eax,eax
103a2895:	74 35                                           	je     0x103a28cc
103a2897:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a2899:	8b c8                                           	mov    ecx,eax
103a289b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
103a289e:	68 53 5c b5 e5                                  	push   0xe5b55c53
103a28a3:	ff d0                                           	call   eax
103a28a5:	85 c0                                           	test   eax,eax
103a28a7:	74 23                                           	je     0x103a28cc
103a28a9:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
103a28ad:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a28af:	83 ec 0c                                        	sub    esp,0xc
103a28b2:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
103a28b6:	8b c8                                           	mov    ecx,eax
103a28b8:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
103a28bc:	8b 42 68                                        	mov    eax,DWORD PTR [edx+0x68]
103a28bf:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
103a28c3:	d9 44 24 10                                     	fld    DWORD PTR [esp+0x10]
103a28c7:	d9 1c 24                                        	fstp   DWORD PTR [esp]
103a28ca:	ff d0                                           	call   eax
103a28cc:	c3                                              	ret
103a28cd:	cc                                              	int3
103a28ce:	cc                                              	int3
103a28cf:	cc                                              	int3
