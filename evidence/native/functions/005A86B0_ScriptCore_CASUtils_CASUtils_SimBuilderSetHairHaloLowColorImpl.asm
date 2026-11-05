# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a86b0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetHairHaloLowColorImpl)
Paired Ghidra pseudocode: 005A86B0_ScriptCore_CASUtils_CASUtils_SimBuilderSetHairHaloLowColorImpl.c
Window: [0x005a86b0, 0x005a8760) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a86b0: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 d1 0c 1c 00 85
005a86c0: c0 0f 84 8b 00 00 00 8b 4d 08 8b d1 81 e2 00 00
005a86d0: 00 ff 81 fa 00 00 00 35 75 78 8b 10 51 8b c8 8b
005a86e0: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 65 f3 0f 10
005a86f0: 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18 f3 0f 10
005a8700: 4d 10 f3 0f 11 44 24 1c f3 0f 11 44 24 10 f3 0f
005a8710: 11 4c 24 14 0f 28 44 24 10 0f 29 44 24 10 f3 0f
005a8720: 10 05 f8 98 f9 00 8d 4c 24 10 f3 0f 11 44 24 1c
005a8730: 0f 28 44 24 10 51 8d 4c 24 10 0f 29 44 24 14 e8
005a8740: 1c 4c 06 00 8b 54 24 0c 81 4e 1c 04 01 00 00 89
005a8750: 56 48 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a86b0 <.text+0x1a76b0>:
  5a86b0:	55                                              	push   ebp
  5a86b1:	8b ec                                           	mov    ebp,esp
  5a86b3:	83 e4 f0                                        	and    esp,0xfffffff0
  5a86b6:	83 ec 1c                                        	sub    esp,0x1c
  5a86b9:	56                                              	push   esi
  5a86ba:	e8 d1 0c 1c 00                                  	call   0x769390
  5a86bf:	85 c0                                           	test   eax,eax
  5a86c1:	0f 84 8b 00 00 00                               	je     0x5a8752
  5a86c7:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5a86ca:	8b d1                                           	mov    edx,ecx
  5a86cc:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a86d2:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a86d8:	75 78                                           	jne    0x5a8752
  5a86da:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a86dc:	51                                              	push   ecx
  5a86dd:	8b c8                                           	mov    ecx,eax
  5a86df:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a86e5:	ff d0                                           	call   eax
  5a86e7:	8b f0                                           	mov    esi,eax
  5a86e9:	85 f6                                           	test   esi,esi
  5a86eb:	74 65                                           	je     0x5a8752
  5a86ed:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  5a86f2:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  5a86f7:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5a86fd:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  5a8702:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8708:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5a870e:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5a8714:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8719:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5a871e:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5a8726:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a872a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8730:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8735:	51                                              	push   ecx
  5a8736:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a873a:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  5a873f:	e8 1c 4c 06 00                                  	call   0x60d360
  5a8744:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a8748:	81 4e 1c 04 01 00 00                            	or     DWORD PTR [esi+0x1c],0x104
  5a874f:	89 56 48                                        	mov    DWORD PTR [esi+0x48],edx
  5a8752:	5e                                              	pop    esi
  5a8753:	8b e5                                           	mov    esp,ebp
  5a8755:	5d                                              	pop    ebp
  5a8756:	c3                                              	ret
  5a8757:	cc                                              	int3
  5a8758:	cc                                              	int3
  5a8759:	cc                                              	int3
  5a875a:	cc                                              	int3
  5a875b:	cc                                              	int3
  5a875c:	cc                                              	int3
  5a875d:	cc                                              	int3
  5a875e:	cc                                              	int3
  5a875f:	cc                                              	int3
