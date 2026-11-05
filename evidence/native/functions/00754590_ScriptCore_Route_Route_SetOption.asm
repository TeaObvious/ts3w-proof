# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00754590 (ScriptCore.Route::Route_SetOption)
Paired Ghidra pseudocode: 00754590_ScriptCore_Route_Route_SetOption.c
Window: [0x00754590, 0x00754660) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00754660
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00754590: 51 8b 0d c4 50 1d 01 85 c9 57 0f 84 b7 00 00 00
007545a0: 8b 44 24 0c 50 e8 06 6f ff ff 8b f8 85 ff 0f 84
007545b0: a3 00 00 00 8b 17 8b 42 10 53 55 8b cf ff d0 8b
007545c0: 4c 24 24 8b 54 24 20 8b 44 24 1c 51 8b 4c 24 1c
007545d0: 52 50 51 8d 8f 58 01 00 00 e8 92 7e 0c 00 8b 9f
007545e0: e0 00 00 00 8d af e0 00 00 00 3b dd 74 59 56 90
007545f0: 8b 73 08 85 f6 74 0c 8d 56 04 b8 01 00 00 00 f0
00754600: 0f c1 02 8b 44 24 28 8b 4c 24 24 8b 16 8b 52 14
00754610: 50 8b 44 24 24 51 8b 4c 24 24 50 51 8b ce ff d2
00754620: 8d 46 04 8b c8 83 ca ff f0 0f c1 11 4a 75 11 b9
00754630: 01 00 00 00 87 08 8b 16 8b 02 6a 01 8b ce ff d0
00754640: 8b 1b 3b dd 75 aa 5e 8b 17 8b 42 14 8b cf ff d0
00754650: 5d 5b b0 01 5f 59 c3 32 c0 5f 59 c3 cc cc cc cc

LINEAR DISASSEMBLY
00754590 <.text+0x353590>:
  754590:	51                                              	push   ecx
  754591:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  754597:	85 c9                                           	test   ecx,ecx
  754599:	57                                              	push   edi
  75459a:	0f 84 b7 00 00 00                               	je     0x754657
  7545a0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7545a4:	50                                              	push   eax
  7545a5:	e8 06 6f ff ff                                  	call   0x74b4b0
  7545aa:	8b f8                                           	mov    edi,eax
  7545ac:	85 ff                                           	test   edi,edi
  7545ae:	0f 84 a3 00 00 00                               	je     0x754657
  7545b4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7545b6:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7545b9:	53                                              	push   ebx
  7545ba:	55                                              	push   ebp
  7545bb:	8b cf                                           	mov    ecx,edi
  7545bd:	ff d0                                           	call   eax
  7545bf:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7545c3:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7545c7:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7545cb:	51                                              	push   ecx
  7545cc:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7545d0:	52                                              	push   edx
  7545d1:	50                                              	push   eax
  7545d2:	51                                              	push   ecx
  7545d3:	8d 8f 58 01 00 00                               	lea    ecx,[edi+0x158]
  7545d9:	e8 92 7e 0c 00                                  	call   0x81c470
  7545de:	8b 9f e0 00 00 00                               	mov    ebx,DWORD PTR [edi+0xe0]
  7545e4:	8d af e0 00 00 00                               	lea    ebp,[edi+0xe0]
  7545ea:	3b dd                                           	cmp    ebx,ebp
  7545ec:	74 59                                           	je     0x754647
  7545ee:	56                                              	push   esi
  7545ef:	90                                              	nop
  7545f0:	8b 73 08                                        	mov    esi,DWORD PTR [ebx+0x8]
  7545f3:	85 f6                                           	test   esi,esi
  7545f5:	74 0c                                           	je     0x754603
  7545f7:	8d 56 04                                        	lea    edx,[esi+0x4]
  7545fa:	b8 01 00 00 00                                  	mov    eax,0x1
  7545ff:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
  754603:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  754607:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  75460b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75460d:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  754610:	50                                              	push   eax
  754611:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  754615:	51                                              	push   ecx
  754616:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  75461a:	50                                              	push   eax
  75461b:	51                                              	push   ecx
  75461c:	8b ce                                           	mov    ecx,esi
  75461e:	ff d2                                           	call   edx
  754620:	8d 46 04                                        	lea    eax,[esi+0x4]
  754623:	8b c8                                           	mov    ecx,eax
  754625:	83 ca ff                                        	or     edx,0xffffffff
  754628:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  75462c:	4a                                              	dec    edx
  75462d:	75 11                                           	jne    0x754640
  75462f:	b9 01 00 00 00                                  	mov    ecx,0x1
  754634:	87 08                                           	xchg   DWORD PTR [eax],ecx
  754636:	8b 16                                           	mov    edx,DWORD PTR [esi]
  754638:	8b 02                                           	mov    eax,DWORD PTR [edx]
  75463a:	6a 01                                           	push   0x1
  75463c:	8b ce                                           	mov    ecx,esi
  75463e:	ff d0                                           	call   eax
  754640:	8b 1b                                           	mov    ebx,DWORD PTR [ebx]
  754642:	3b dd                                           	cmp    ebx,ebp
  754644:	75 aa                                           	jne    0x7545f0
  754646:	5e                                              	pop    esi
  754647:	8b 17                                           	mov    edx,DWORD PTR [edi]
  754649:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  75464c:	8b cf                                           	mov    ecx,edi
  75464e:	ff d0                                           	call   eax
  754650:	5d                                              	pop    ebp
  754651:	5b                                              	pop    ebx
  754652:	b0 01                                           	mov    al,0x1
  754654:	5f                                              	pop    edi
  754655:	59                                              	pop    ecx
  754656:	c3                                              	ret
  754657:	32 c0                                           	xor    al,al
  754659:	5f                                              	pop    edi
  75465a:	59                                              	pop    ecx
  75465b:	c3                                              	ret
  75465c:	cc                                              	int3
  75465d:	cc                                              	int3
  75465e:	cc                                              	int3
  75465f:	cc                                              	int3
