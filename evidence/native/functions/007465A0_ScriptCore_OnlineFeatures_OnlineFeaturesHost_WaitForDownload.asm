# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007465a0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_WaitForDownload)
Paired Ghidra pseudocode: 007465A0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_WaitForDownload.c
Window: [0x007465a0, 0x00746650) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00746650
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007465a0: 53 56 57 e8 e8 2d 02 00 8b f0 8b 06 8b 90 18 01
007465b0: 00 00 8b ce ff d2 6a 00 6a 00 6a 00 6a 00 68 0c
007465c0: 3b 00 01 6a 28 8b f8 8b da e8 32 df d9 ff 83 c4
007465d0: 18 85 c0 74 6b 8b 4c 24 18 8b 54 24 14 55 51 8b
007465e0: 4c 24 18 52 51 53 57 8b c8 e8 42 fe ff ff 8b e8
007465f0: 85 ed 74 4b 8b 55 00 8b 42 04 8b cd ff d0 8b 0d
00746600: a0 bd 1e 01 55 e8 b6 21 2f 00 84 c0 74 23 8b 44
00746610: 24 1c 8b 16 8b 92 20 01 00 00 6a 00 50 6a ff 53
00746620: 57 8b ce ff d2 8b 06 8b 90 1c 01 00 00 8b ce ff
00746630: d2 8b 45 00 8b 50 08 8b cd 5d 5f 5e 5b ff e2 5d
00746640: 5f 5e 5b c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007465a0 <.text+0x3455a0>:
  7465a0:	53                                              	push   ebx
  7465a1:	56                                              	push   esi
  7465a2:	57                                              	push   edi
  7465a3:	e8 e8 2d 02 00                                  	call   0x769390
  7465a8:	8b f0                                           	mov    esi,eax
  7465aa:	8b 06                                           	mov    eax,DWORD PTR [esi]
  7465ac:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  7465b2:	8b ce                                           	mov    ecx,esi
  7465b4:	ff d2                                           	call   edx
  7465b6:	6a 00                                           	push   0x0
  7465b8:	6a 00                                           	push   0x0
  7465ba:	6a 00                                           	push   0x0
  7465bc:	6a 00                                           	push   0x0
  7465be:	68 0c 3b 00 01                                  	push   0x1003b0c
  7465c3:	6a 28                                           	push   0x28
  7465c5:	8b f8                                           	mov    edi,eax
  7465c7:	8b da                                           	mov    ebx,edx
  7465c9:	e8 32 df d9 ff                                  	call   0x4e4500
  7465ce:	83 c4 18                                        	add    esp,0x18
  7465d1:	85 c0                                           	test   eax,eax
  7465d3:	74 6b                                           	je     0x746640
  7465d5:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7465d9:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7465dd:	55                                              	push   ebp
  7465de:	51                                              	push   ecx
  7465df:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7465e3:	52                                              	push   edx
  7465e4:	51                                              	push   ecx
  7465e5:	53                                              	push   ebx
  7465e6:	57                                              	push   edi
  7465e7:	8b c8                                           	mov    ecx,eax
  7465e9:	e8 42 fe ff ff                                  	call   0x746430
  7465ee:	8b e8                                           	mov    ebp,eax
  7465f0:	85 ed                                           	test   ebp,ebp
  7465f2:	74 4b                                           	je     0x74663f
  7465f4:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  7465f7:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  7465fa:	8b cd                                           	mov    ecx,ebp
  7465fc:	ff d0                                           	call   eax
  7465fe:	8b 0d a0 bd 1e 01                               	mov    ecx,DWORD PTR ds:0x11ebda0
  746604:	55                                              	push   ebp
  746605:	e8 b6 21 2f 00                                  	call   0xa387c0
  74660a:	84 c0                                           	test   al,al
  74660c:	74 23                                           	je     0x746631
  74660e:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  746612:	8b 16                                           	mov    edx,DWORD PTR [esi]
  746614:	8b 92 20 01 00 00                               	mov    edx,DWORD PTR [edx+0x120]
  74661a:	6a 00                                           	push   0x0
  74661c:	50                                              	push   eax
  74661d:	6a ff                                           	push   0xffffffff
  74661f:	53                                              	push   ebx
  746620:	57                                              	push   edi
  746621:	8b ce                                           	mov    ecx,esi
  746623:	ff d2                                           	call   edx
  746625:	8b 06                                           	mov    eax,DWORD PTR [esi]
  746627:	8b 90 1c 01 00 00                               	mov    edx,DWORD PTR [eax+0x11c]
  74662d:	8b ce                                           	mov    ecx,esi
  74662f:	ff d2                                           	call   edx
  746631:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  746634:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  746637:	8b cd                                           	mov    ecx,ebp
  746639:	5d                                              	pop    ebp
  74663a:	5f                                              	pop    edi
  74663b:	5e                                              	pop    esi
  74663c:	5b                                              	pop    ebx
  74663d:	ff e2                                           	jmp    edx
  74663f:	5d                                              	pop    ebp
  746640:	5f                                              	pop    edi
  746641:	5e                                              	pop    esi
  746642:	5b                                              	pop    ebx
  746643:	c3                                              	ret
  746644:	cc                                              	int3
  746645:	cc                                              	int3
  746646:	cc                                              	int3
  746647:	cc                                              	int3
  746648:	cc                                              	int3
  746649:	cc                                              	int3
  74664a:	cc                                              	int3
  74664b:	cc                                              	int3
  74664c:	cc                                              	int3
  74664d:	cc                                              	int3
  74664e:	cc                                              	int3
  74664f:	cc                                              	int3
