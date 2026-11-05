# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8760 (ScriptCore.CASUtils::CASUtils_SimBuilderSetHairHaloHighColorImpl)
Paired Ghidra pseudocode: 005A8760_ScriptCore_CASUtils_CASUtils_SimBuilderSetHairHaloHighColorImpl.c
Window: [0x005a8760, 0x005a8810) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8810
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8760: 55 8b ec 83 e4 f0 83 ec 1c 56 e8 21 0c 1c 00 85
005a8770: c0 0f 84 8b 00 00 00 8b 4d 08 8b d1 81 e2 00 00
005a8780: 00 ff 81 fa 00 00 00 35 75 78 8b 10 51 8b c8 8b
005a8790: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 65 f3 0f 10
005a87a0: 4d 14 f3 0f 10 45 0c f3 0f 11 4c 24 18 f3 0f 10
005a87b0: 4d 10 f3 0f 11 44 24 1c f3 0f 11 44 24 10 f3 0f
005a87c0: 11 4c 24 14 0f 28 44 24 10 0f 29 44 24 10 f3 0f
005a87d0: 10 05 f8 98 f9 00 8d 4c 24 10 f3 0f 11 44 24 1c
005a87e0: 0f 28 44 24 10 51 8d 4c 24 10 0f 29 44 24 14 e8
005a87f0: 6c 4b 06 00 8b 54 24 0c 81 4e 1c 04 01 00 00 89
005a8800: 56 4c 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8760 <.text+0x1a7760>:
  5a8760:	55                                              	push   ebp
  5a8761:	8b ec                                           	mov    ebp,esp
  5a8763:	83 e4 f0                                        	and    esp,0xfffffff0
  5a8766:	83 ec 1c                                        	sub    esp,0x1c
  5a8769:	56                                              	push   esi
  5a876a:	e8 21 0c 1c 00                                  	call   0x769390
  5a876f:	85 c0                                           	test   eax,eax
  5a8771:	0f 84 8b 00 00 00                               	je     0x5a8802
  5a8777:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
  5a877a:	8b d1                                           	mov    edx,ecx
  5a877c:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  5a8782:	81 fa 00 00 00 35                               	cmp    edx,0x35000000
  5a8788:	75 78                                           	jne    0x5a8802
  5a878a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a878c:	51                                              	push   ecx
  5a878d:	8b c8                                           	mov    ecx,eax
  5a878f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8795:	ff d0                                           	call   eax
  5a8797:	8b f0                                           	mov    esi,eax
  5a8799:	85 f6                                           	test   esi,esi
  5a879b:	74 65                                           	je     0x5a8802
  5a879d:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  5a87a2:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
  5a87a7:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  5a87ad:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  5a87b2:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a87b8:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  5a87be:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  5a87c4:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a87c9:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  5a87ce:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  5a87d6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a87da:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  5a87e0:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  5a87e5:	51                                              	push   ecx
  5a87e6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a87ea:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  5a87ef:	e8 6c 4b 06 00                                  	call   0x60d360
  5a87f4:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a87f8:	81 4e 1c 04 01 00 00                            	or     DWORD PTR [esi+0x1c],0x104
  5a87ff:	89 56 4c                                        	mov    DWORD PTR [esi+0x4c],edx
  5a8802:	5e                                              	pop    esi
  5a8803:	8b e5                                           	mov    esp,ebp
  5a8805:	5d                                              	pop    ebp
  5a8806:	c3                                              	ret
  5a8807:	cc                                              	int3
  5a8808:	cc                                              	int3
  5a8809:	cc                                              	int3
  5a880a:	cc                                              	int3
  5a880b:	cc                                              	int3
  5a880c:	cc                                              	int3
  5a880d:	cc                                              	int3
  5a880e:	cc                                              	int3
  5a880f:	cc                                              	int3
