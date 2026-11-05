# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a0730 (CASUtils_SimOutfitSetMorphWeightBImpl)
Paired Ghidra pseudocode: 103A0730_CASUtils_SimOutfitSetMorphWeightBImpl.c
Window: [0x103a0730, 0x103a0770) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a0770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a0730: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
103a0740: 35 75 21 e8 d8 a9 1b 00 8b 10 8b c8 8b 82 cc 00
103a0750: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
103a0760: 0f 11 40 6c 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a0730 <.text+0x39f730>:
103a0730:	56                                              	push   esi
103a0731:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a0735:	8b c6                                           	mov    eax,esi
103a0737:	25 00 00 00 ff                                  	and    eax,0xff000000
103a073c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
103a0741:	75 21                                           	jne    0x103a0764
103a0743:	e8 d8 a9 1b 00                                  	call   0x1055b120
103a0748:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a074a:	8b c8                                           	mov    ecx,eax
103a074c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
103a0752:	56                                              	push   esi
103a0753:	ff d0                                           	call   eax
103a0755:	85 c0                                           	test   eax,eax
103a0757:	74 0b                                           	je     0x103a0764
103a0759:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
103a075f:	f3 0f 11 40 6c                                  	movss  DWORD PTR [eax+0x6c],xmm0
103a0764:	5e                                              	pop    esi
103a0765:	c3                                              	ret
103a0766:	cc                                              	int3
103a0767:	cc                                              	int3
103a0768:	cc                                              	int3
103a0769:	cc                                              	int3
103a076a:	cc                                              	int3
103a076b:	cc                                              	int3
103a076c:	cc                                              	int3
103a076d:	cc                                              	int3
103a076e:	cc                                              	int3
103a076f:	cc                                              	int3
