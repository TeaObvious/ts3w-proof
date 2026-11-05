# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057b5f0 (World_GetHighestPointOnLot)
Paired Ghidra pseudocode: 1057B5F0_World_GetHighestPointOnLot.c
Window: [0x1057b5f0, 0x1057b630) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057b630
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057b5f0: 51 8b 0d c4 00 c7 10 85 c9 74 1f 8b 44 24 0c 8b
1057b600: 54 24 08 6a 00 50 52 e8 04 ba cb ff 85 c0 74 0a
1057b610: 8b c8 83 c4 04 e9 66 3a b0 ff 0f 57 c0 f3 0f 11
1057b620: 04 24 d9 04 24 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057b5f0 <.text+0x57a5f0>:
1057b5f0:	51                                              	push   ecx
1057b5f1:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057b5f7:	85 c9                                           	test   ecx,ecx
1057b5f9:	74 1f                                           	je     0x1057b61a
1057b5fb:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057b5ff:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1057b603:	6a 00                                           	push   0x0
1057b605:	50                                              	push   eax
1057b606:	52                                              	push   edx
1057b607:	e8 04 ba cb ff                                  	call   0x10237010
1057b60c:	85 c0                                           	test   eax,eax
1057b60e:	74 0a                                           	je     0x1057b61a
1057b610:	8b c8                                           	mov    ecx,eax
1057b612:	83 c4 04                                        	add    esp,0x4
1057b615:	e9 66 3a b0 ff                                  	jmp    0x1007f080
1057b61a:	0f 57 c0                                        	xorps  xmm0,xmm0
1057b61d:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057b622:	d9 04 24                                        	fld    DWORD PTR [esp]
1057b625:	59                                              	pop    ecx
1057b626:	c3                                              	ret
1057b627:	cc                                              	int3
1057b628:	cc                                              	int3
1057b629:	cc                                              	int3
1057b62a:	cc                                              	int3
1057b62b:	cc                                              	int3
1057b62c:	cc                                              	int3
1057b62d:	cc                                              	int3
1057b62e:	cc                                              	int3
1057b62f:	cc                                              	int3
