# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d3a0 (Animation_StopAllAnimation)
Paired Ghidra pseudocode: 1052D3A0_Animation_StopAllAnimation.c
Window: [0x1052d3a0, 0x1052d410) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d3a0: 51 56 e8 f9 cd 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052d3b0: 52 8b c8 e8 f8 d7 1f 00 8b f0 85 f6 74 49 57 8d
1052d3c0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052d3d0: 0c c8 10 52 8b ce e8 c5 99 1f 00 85 c0 74 0a 8d
1052d3e0: 48 08 8b 01 8b 50 18 ff d2 8b c7 83 c9 ff f0 0f
1052d3f0: c1 08 49 75 11 ba 01 00 00 00 87 17 8b 06 8b 10
1052d400: 6a 01 8b ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1052d3a0 <.text+0x52c3a0>:
1052d3a0:	51                                              	push   ecx
1052d3a1:	56                                              	push   esi
1052d3a2:	e8 f9 cd 1f 00                                  	call   0x1072a1a0
1052d3a7:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052d3ab:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052d3af:	51                                              	push   ecx
1052d3b0:	52                                              	push   edx
1052d3b1:	8b c8                                           	mov    ecx,eax
1052d3b3:	e8 f8 d7 1f 00                                  	call   0x1072abb0
1052d3b8:	8b f0                                           	mov    esi,eax
1052d3ba:	85 f6                                           	test   esi,esi
1052d3bc:	74 49                                           	je     0x1052d407
1052d3be:	57                                              	push   edi
1052d3bf:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052d3c2:	8b c7                                           	mov    eax,edi
1052d3c4:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d3c9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d3cd:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d3d3:	52                                              	push   edx
1052d3d4:	8b ce                                           	mov    ecx,esi
1052d3d6:	e8 c5 99 1f 00                                  	call   0x10726da0
1052d3db:	85 c0                                           	test   eax,eax
1052d3dd:	74 0a                                           	je     0x1052d3e9
1052d3df:	8d 48 08                                        	lea    ecx,[eax+0x8]
1052d3e2:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052d3e4:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1052d3e7:	ff d2                                           	call   edx
1052d3e9:	8b c7                                           	mov    eax,edi
1052d3eb:	83 c9 ff                                        	or     ecx,0xffffffff
1052d3ee:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d3f2:	49                                              	dec    ecx
1052d3f3:	75 11                                           	jne    0x1052d406
1052d3f5:	ba 01 00 00 00                                  	mov    edx,0x1
1052d3fa:	87 17                                           	xchg   DWORD PTR [edi],edx
1052d3fc:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052d3fe:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d400:	6a 01                                           	push   0x1
1052d402:	8b ce                                           	mov    ecx,esi
1052d404:	ff d2                                           	call   edx
1052d406:	5f                                              	pop    edi
1052d407:	5e                                              	pop    esi
1052d408:	59                                              	pop    ecx
1052d409:	c3                                              	ret
1052d40a:	cc                                              	int3
1052d40b:	cc                                              	int3
1052d40c:	cc                                              	int3
1052d40d:	cc                                              	int3
1052d40e:	cc                                              	int3
1052d40f:	cc                                              	int3
