# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1053e830 (RouteEvent_GetRouteEventType)
Paired Ghidra pseudocode: 1053E830_RouteEvent_GetRouteEventType.c
Window: [0x1053e830, 0x1053e870) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1053e870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1053e830: 8b 0d 44 89 c7 10 85 c9 56 74 2b 8b 44 24 08 50
1053e840: e8 0b d9 ff ff 8b f0 85 f6 74 1b 8b 16 8b 02 57
1053e850: 8b ce ff d0 8b 16 8b 42 04 0f b7 7e 18 8b ce ff
1053e860: d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1053e830 <.text+0x53d830>:
1053e830:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1053e836:	85 c9                                           	test   ecx,ecx
1053e838:	56                                              	push   esi
1053e839:	74 2b                                           	je     0x1053e866
1053e83b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1053e83f:	50                                              	push   eax
1053e840:	e8 0b d9 ff ff                                  	call   0x1053c150
1053e845:	8b f0                                           	mov    esi,eax
1053e847:	85 f6                                           	test   esi,esi
1053e849:	74 1b                                           	je     0x1053e866
1053e84b:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053e84d:	8b 02                                           	mov    eax,DWORD PTR [edx]
1053e84f:	57                                              	push   edi
1053e850:	8b ce                                           	mov    ecx,esi
1053e852:	ff d0                                           	call   eax
1053e854:	8b 16                                           	mov    edx,DWORD PTR [esi]
1053e856:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1053e859:	0f b7 7e 18                                     	movzx  edi,WORD PTR [esi+0x18]
1053e85d:	8b ce                                           	mov    ecx,esi
1053e85f:	ff d0                                           	call   eax
1053e861:	8b c7                                           	mov    eax,edi
1053e863:	5f                                              	pop    edi
1053e864:	5e                                              	pop    esi
1053e865:	c3                                              	ret
1053e866:	33 c0                                           	xor    eax,eax
1053e868:	5e                                              	pop    esi
1053e869:	c3                                              	ret
1053e86a:	cc                                              	int3
1053e86b:	cc                                              	int3
1053e86c:	cc                                              	int3
1053e86d:	cc                                              	int3
1053e86e:	cc                                              	int3
1053e86f:	cc                                              	int3
