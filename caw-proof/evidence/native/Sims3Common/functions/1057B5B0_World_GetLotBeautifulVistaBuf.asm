# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b5b0 (World_GetLotBeautifulVistaBuf)
Paired Ghidra pseudocode: 1057B5B0_World_GetLotBeautifulVistaBuf.c
Window: [0x1057b5b0, 0x1057b5f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b5f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b5b0: 51 8b 0d c4 00 c7 10 85 c9 74 27 8b 44 24 0c 8b
1057b5c0: 54 24 08 6a 00 50 52 e8 44 ba cb ff 85 c0 74 12
1057b5d0: f3 0f 10 80 18 04 00 00 f3 0f 11 04 24 d9 04 24
1057b5e0: 59 c3 0f 57 c0 f3 0f 11 04 24 d9 04 24 59 c3 cc

LINEAR DISASSEMBLY
1057b5b0 <.text+0x57a5b0>:
1057b5b0:	51                                              	push   ecx
1057b5b1:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b5b7:	85 c9                                           	test   ecx,ecx
1057b5b9:	74 27                                           	je     0x1057b5e2
1057b5bb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b5bf:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b5c3:	6a 00                                           	push   0x0
1057b5c5:	50                                              	push   eax
1057b5c6:	52                                              	push   edx
1057b5c7:	e8 44 ba cb ff                                  	call   0x10237010
1057b5cc:	85 c0                                           	test   eax,eax
1057b5ce:	74 12                                           	je     0x1057b5e2
1057b5d0:	f3 0f 10 80 18 04 00 00                         	movss  xmm0,DWORD PTR [eax+0x418]
1057b5d8:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b5dd:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b5e0:	59                                              	pop    ecx
1057b5e1:	c3                                              	ret
1057b5e2:	0f 57 c0                                        	xorps  xmm0,xmm0
1057b5e5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b5ea:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b5ed:	59                                              	pop    ecx
1057b5ee:	c3                                              	ret
1057b5ef:	cc                                              	int3
