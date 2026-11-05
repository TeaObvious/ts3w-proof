# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998630 (WorldWrap_GetGlobalObjectManager)
Paired Ghidra pseudocode: 10998630_WorldWrap_GetGlobalObjectManager.c
Window: [0x10998630, 0x10998670) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998630: 8b 44 24 04 85 c0 74 28 56 8b b0 b0 00 00 00 85
10998640: f6 75 0a 8b 44 24 0c 89 30 33 c0 5e c3 8b 16 8b
10998650: 42 40 8b ce ff d0 8b 4c 24 0c 89 01 8b c6 5e c3
10998660: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998630 <.text+0x997630>:
10998630:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10998634:	85 c0                                           	test   eax,eax
10998636:	74 28                                           	je     0x10998660
10998638:	56                                              	push   esi
10998639:	8b b0 b0 00 00 00                               	mov    esi,DWORD PTR [eax+0xb0]
1099863f:	85 f6                                           	test   esi,esi
10998641:	75 0a                                           	jne    0x1099864d
10998643:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10998647:	89 30                                           	mov    DWORD PTR [eax],esi
10998649:	33 c0                                           	xor    eax,eax
1099864b:	5e                                              	pop    esi
1099864c:	c3                                              	ret
1099864d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099864f:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
10998652:	8b ce                                           	mov    ecx,esi
10998654:	ff d0                                           	call   eax
10998656:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1099865a:	89 01                                           	mov    DWORD PTR [ecx],eax
1099865c:	8b c6                                           	mov    eax,esi
1099865e:	5e                                              	pop    esi
1099865f:	c3                                              	ret
10998660:	33 c0                                           	xor    eax,eax
10998662:	c3                                              	ret
10998663:	cc                                              	int3
10998664:	cc                                              	int3
10998665:	cc                                              	int3
10998666:	cc                                              	int3
10998667:	cc                                              	int3
10998668:	cc                                              	int3
10998669:	cc                                              	int3
1099866a:	cc                                              	int3
1099866b:	cc                                              	int3
1099866c:	cc                                              	int3
1099866d:	cc                                              	int3
1099866e:	cc                                              	int3
1099866f:	cc                                              	int3
