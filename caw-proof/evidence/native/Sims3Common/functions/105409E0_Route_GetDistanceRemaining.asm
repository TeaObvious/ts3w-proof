# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105409e0 (Route_GetDistanceRemaining)
Paired Ghidra pseudocode: 105409E0_Route_GetDistanceRemaining.c
Window: [0x105409e0, 0x10540a40) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10540a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105409e0: 51 8b 0d 44 89 c7 10 85 c9 56 74 43 8b 44 24 0c
105409f0: 50 e8 fa b6 ff ff 8b f0 85 f6 74 33 8b 16 8b 42
10540a00: 10 8b ce ff d0 8b 16 f3 0f 10 86 a8 00 00 00 8b
10540a10: 42 14 8b ce f3 0f 11 44 24 04 ff d0 f3 0f 10 44
10540a20: 24 04 f3 0f 11 44 24 04 d9 44 24 04 5e 59 c3 0f
10540a30: 57 c0 f3 0f 11 44 24 04 d9 44 24 04 5e 59 c3 cc

LINEAR DISASSEMBLY
105409e0 <.text+0x53f9e0>:
105409e0:	51                                              	push   ecx
105409e1:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105409e7:	85 c9                                           	test   ecx,ecx
105409e9:	56                                              	push   esi
105409ea:	74 43                                           	je     0x10540a2f
105409ec:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
105409f0:	50                                              	push   eax
105409f1:	e8 fa b6 ff ff                                  	call   0x1053c0f0
105409f6:	8b f0                                           	mov    esi,eax
105409f8:	85 f6                                           	test   esi,esi
105409fa:	74 33                                           	je     0x10540a2f
105409fc:	8b 16                                           	mov    edx,DWORD PTR [esi]
105409fe:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
10540a01:	8b ce                                           	mov    ecx,esi
10540a03:	ff d0                                           	call   eax
10540a05:	8b 16                                           	mov    edx,DWORD PTR [esi]
10540a07:	f3 0f 10 86 a8 00 00 00                         	movss  xmm0,DWORD PTR [esi+0xa8]
10540a0f:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
10540a12:	8b ce                                           	mov    ecx,esi
10540a14:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540a1a:	ff d0                                           	call   eax
10540a1c:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
10540a22:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540a28:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10540a2c:	5e                                              	pop    esi
10540a2d:	59                                              	pop    ecx
10540a2e:	c3                                              	ret
10540a2f:	0f 57 c0                                        	xorps  xmm0,xmm0
10540a32:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10540a38:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
10540a3c:	5e                                              	pop    esi
10540a3d:	59                                              	pop    ecx
10540a3e:	c3                                              	ret
10540a3f:	cc                                              	int3
