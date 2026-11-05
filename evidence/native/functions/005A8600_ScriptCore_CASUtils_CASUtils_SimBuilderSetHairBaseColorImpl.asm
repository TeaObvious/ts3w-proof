# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8600 (ScriptCore.CASUtils::CASUtils_SimBuilderSetHairBaseColorImpl)
Paired Ghidra pseudocode: 005A8600_ScriptCore_CASUtils_CASUtils_SimBuilderSetHairBaseColorImpl.c
Window: [0x005a8600, 0x005a86b0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a86b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8600: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 81 0d 1c 00 85
005a8610: c0 0f 84 8b 00 00 00 8b 4d 08 8b d1 81 e2 00 00
005a8620: 00 ff 81 fa 00 00 00 35 75 78 8b 10 51 8b c8 8b
005a8630: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 65 f3 0f 10
005a8640: 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18 f3 0f 10
005a8650: 4d 10 f3 0f 11 44 24 1c f3 0f 11 44 24 10 f3 0f
005a8660: 11 4c 24 14 0f 28 44 24 10 0f 29 44 24 10 f3 0f
005a8670: 10 05 f8 98 f9 00 8d 4c 24 10 f3 0f 11 44 24 1c
005a8680: 0f 28 44 24 10 51 8d 4c 24 10 0f 29 44 24 14 e8
005a8690: cc 4c 06 00 8b 54 24 0c 81 4e 1c 04 01 00 00 89
005a86a0: 56 44 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8600 <.text+0x1a7600>:
  5a8600:	55                                              	push   ebp
  5a8601:	8b ec                                           	mov    ebp,esp
  5a8603:	83 e4 f0                                        	and    esp,0xfffffff0
  5a8606:	83 ec 1c                                        	sub    esp,0x1c
  5a8609:	56                                              	push   esi
  5a860a:	e8 81 0d 1c 00                                  	call   0x769390
  5a860f:	85 c0                                           	test   eax,eax
  5a8611:	0f 84 8b 00 00 00                               	je     0x5a86a2
  5a8617:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5a861a:	8b d1                                           	mov    edx,ecx
  5a861c:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a8622:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a8628:	75 78                                           	jne    0x5a86a2
  5a862a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a862c:	51                                              	push   ecx
  5a862d:	8b c8                                           	mov    ecx,eax
  5a862f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8635:	ff d0                                           	call   eax
  5a8637:	8b f0                                           	mov    esi,eax
  5a8639:	85 f6                                           	test   esi,esi
  5a863b:	74 65                                           	je     0x5a86a2
  5a863d:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  5a8642:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  5a8647:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5a864d:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  5a8652:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8658:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5a865e:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5a8664:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8669:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5a866e:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5a8676:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a867a:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a8680:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a8685:	51                                              	push   ecx
  5a8686:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a868a:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  5a868f:	e8 cc 4c 06 00                                  	call   0x60d360
  5a8694:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a8698:	81 4e 1c 04 01 00 00                            	or     DWORD PTR [esi+0x1c],0x104
  5a869f:	89 56 44                                        	mov    DWORD PTR [esi+0x44],edx
  5a86a2:	5e                                              	pop    esi
  5a86a3:	8b e5                                           	mov    esp,ebp
  5a86a5:	5d                                              	pop    ebp
  5a86a6:	c3                                              	ret
  5a86a7:	cc                                              	int3
  5a86a8:	cc                                              	int3
  5a86a9:	cc                                              	int3
  5a86aa:	cc                                              	int3
  5a86ab:	cc                                              	int3
  5a86ac:	cc                                              	int3
  5a86ad:	cc                                              	int3
  5a86ae:	cc                                              	int3
  5a86af:	cc                                              	int3
