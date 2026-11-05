# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceb670 (ScriptCore.UserToolUtils::UserToolUtils_SetCollectionOrderImpl)
Paired Ghidra pseudocode: 00CEB670_ScriptCore_UserToolUtils_UserToolUtils_SetCollectionOrderImpl.c
Window: [0x00ceb670, 0x00ceb700) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceb700
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceb670: 83 ec 18 56 8b 35 c8 9a 1d 01 85 f6 74 79 e8 0d
00ceb680: dd a7 ff 8b 10 8b 52 68 8d 4c 24 04 51 8d 4c 24
00ceb690: 0c 51 8b 4c 24 28 51 8b c8 ff d2 8b 4c 24 04 85
00ceb6a0: c9 7e 54 8b 44 24 08 50 8b 44 24 0c 8d 0c c8 51
00ceb6b0: 50 8d 4c 24 18 c7 44 24 18 00 00 00 00 c7 44 24
00ceb6c0: 1c 00 00 00 00 c7 44 24 20 00 00 00 00 c7 44 24
00ceb6d0: 24 c8 18 08 01 e8 86 38 af ff 8d 54 24 0c 52 8b
00ceb6e0: ce e8 0a 51 af ff 8b 44 24 0c 85 c0 74 09 50 e8
00ceb6f0: ec 8d 7f ff 83 c4 04 5e 83 c4 18 c3 cc cc cc cc

LINEAR DISASSEMBLY
00ceb670 <.text+0x8ea670>:
  ceb670:	83 ec 18                                        	sub    esp,0x18
  ceb673:	56                                              	push   esi
  ceb674:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  ceb67a:	85 f6                                           	test   esi,esi
  ceb67c:	74 79                                           	je     0xceb6f7
  ceb67e:	e8 0d dd a7 ff                                  	call   0x769390
  ceb683:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ceb685:	8b 52 68                                        	mov    edx,DWORD PTR [edx+0x68]
  ceb688:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  ceb68c:	51                                              	push   ecx
  ceb68d:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  ceb691:	51                                              	push   ecx
  ceb692:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ceb696:	51                                              	push   ecx
  ceb697:	8b c8                                           	mov    ecx,eax
  ceb699:	ff d2                                           	call   edx
  ceb69b:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ceb69f:	85 c9                                           	test   ecx,ecx
  ceb6a1:	7e 54                                           	jle    0xceb6f7
  ceb6a3:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ceb6a7:	50                                              	push   eax
  ceb6a8:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ceb6ac:	8d 0c c8                                        	lea    ecx,[eax+ecx*8]
  ceb6af:	51                                              	push   ecx
  ceb6b0:	50                                              	push   eax
  ceb6b1:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ceb6b5:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  ceb6bd:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  ceb6c5:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  ceb6cd:	c7 44 24 24 c8 18 08 01                         	mov    DWORD PTR [esp+0x24],0x10818c8
  ceb6d5:	e8 86 38 af ff                                  	call   0x7def60
  ceb6da:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  ceb6de:	52                                              	push   edx
  ceb6df:	8b ce                                           	mov    ecx,esi
  ceb6e1:	e8 0a 51 af ff                                  	call   0x7e07f0
  ceb6e6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ceb6ea:	85 c0                                           	test   eax,eax
  ceb6ec:	74 09                                           	je     0xceb6f7
  ceb6ee:	50                                              	push   eax
  ceb6ef:	e8 ec 8d 7f ff                                  	call   0x4e44e0
  ceb6f4:	83 c4 04                                        	add    esp,0x4
  ceb6f7:	5e                                              	pop    esi
  ceb6f8:	83 c4 18                                        	add    esp,0x18
  ceb6fb:	c3                                              	ret
  ceb6fc:	cc                                              	int3
  ceb6fd:	cc                                              	int3
  ceb6fe:	cc                                              	int3
  ceb6ff:	cc                                              	int3
