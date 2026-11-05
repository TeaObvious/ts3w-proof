# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00761660 (ScriptCore.Route::Route_CreateRouteWithSameGoal)
Paired Ghidra pseudocode: 00761660_ScriptCore_Route_Route_CreateRouteWithSameGoal.c
Window: [0x00761660, 0x00761700) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00761700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00761660: 56 57 e8 29 7d 00 00 8b 0d c4 50 1d 01 85 c9 0f
00761670: 84 82 00 00 00 8b 44 24 0c 50 e8 31 9e fe ff 8b
00761680: f8 85 ff 74 72 8b 17 8b 42 10 8b cf ff d0 6a 00
00761690: 6a 00 6a 00 6a 00 68 74 55 00 01 68 00 02 00 00
007616a0: e8 5b 2e d8 ff 83 c4 18 85 c0 74 42 57 8b c8 e8
007616b0: 4c ed ff ff 8b f0 85 f6 74 34 8b 16 8b 42 10 53
007616c0: 8b ce ff d0 8d 4e 04 51 8b 0d c4 50 1d 01 e8 cd
007616d0: ce fe ff 8b 16 8b 42 14 8b 5e 18 8b ce ff d0 8b
007616e0: 17 8b 42 14 8b cf ff d0 8b c3 5b 5f 5e c3 8b 17
007616f0: 8b 42 14 8b cf ff d0 5f 33 c0 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
00761660 <.text+0x360660>:
  761660:	56                                              	push   esi
  761661:	57                                              	push   edi
  761662:	e8 29 7d 00 00                                  	call   0x769390
  761667:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  76166d:	85 c9                                           	test   ecx,ecx
  76166f:	0f 84 82 00 00 00                               	je     0x7616f7
  761675:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  761679:	50                                              	push   eax
  76167a:	e8 31 9e fe ff                                  	call   0x74b4b0
  76167f:	8b f8                                           	mov    edi,eax
  761681:	85 ff                                           	test   edi,edi
  761683:	74 72                                           	je     0x7616f7
  761685:	8b 17                                           	mov    edx,DWORD PTR [edi]
  761687:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  76168a:	8b cf                                           	mov    ecx,edi
  76168c:	ff d0                                           	call   eax
  76168e:	6a 00                                           	push   0x0
  761690:	6a 00                                           	push   0x0
  761692:	6a 00                                           	push   0x0
  761694:	6a 00                                           	push   0x0
  761696:	68 74 55 00 01                                  	push   0x1005574
  76169b:	68 00 02 00 00                                  	push   0x200
  7616a0:	e8 5b 2e d8 ff                                  	call   0x4e4500
  7616a5:	83 c4 18                                        	add    esp,0x18
  7616a8:	85 c0                                           	test   eax,eax
  7616aa:	74 42                                           	je     0x7616ee
  7616ac:	57                                              	push   edi
  7616ad:	8b c8                                           	mov    ecx,eax
  7616af:	e8 4c ed ff ff                                  	call   0x760400
  7616b4:	8b f0                                           	mov    esi,eax
  7616b6:	85 f6                                           	test   esi,esi
  7616b8:	74 34                                           	je     0x7616ee
  7616ba:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7616bc:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7616bf:	53                                              	push   ebx
  7616c0:	8b ce                                           	mov    ecx,esi
  7616c2:	ff d0                                           	call   eax
  7616c4:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  7616c7:	51                                              	push   ecx
  7616c8:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  7616ce:	e8 cd ce fe ff                                  	call   0x74e5a0
  7616d3:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7616d5:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7616d8:	8b 5e 18                                        	mov    ebx,DWORD PTR [esi+0x18]
  7616db:	8b ce                                           	mov    ecx,esi
  7616dd:	ff d0                                           	call   eax
  7616df:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7616e1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7616e4:	8b cf                                           	mov    ecx,edi
  7616e6:	ff d0                                           	call   eax
  7616e8:	8b c3                                           	mov    eax,ebx
  7616ea:	5b                                              	pop    ebx
  7616eb:	5f                                              	pop    edi
  7616ec:	5e                                              	pop    esi
  7616ed:	c3                                              	ret
  7616ee:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7616f0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7616f3:	8b cf                                           	mov    ecx,edi
  7616f5:	ff d0                                           	call   eax
  7616f7:	5f                                              	pop    edi
  7616f8:	33 c0                                           	xor    eax,eax
  7616fa:	5e                                              	pop    esi
  7616fb:	c3                                              	ret
  7616fc:	cc                                              	int3
  7616fd:	cc                                              	int3
  7616fe:	cc                                              	int3
  7616ff:	cc                                              	int3
