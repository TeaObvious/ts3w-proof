# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00758450 (ScriptCore.RouteManager::RouteManager_SetRouteSoundSpec)
Paired Ghidra pseudocode: 00758450_ScriptCore_RouteManager_RouteManager_SetRouteSoundSpec.c
Window: [0x00758450, 0x00758500) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00758500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00758450: 83 ec 20 e8 18 f1 1d 00 85 c0 0f 84 9c 00 00 00
00758460: 8b 4c 24 28 8b 54 24 24 51 52 8b c8 e8 0f fb 1d
00758470: 00 85 c0 0f 84 83 00 00 00 8b 0d 38 a1 1e 01 57
00758480: 51 8b c8 e8 d8 bd 1d 00 8b f8 85 ff 74 6d 56 e8
00758490: fc 0e 01 00 8d 4c 24 08 8b f0 e8 91 0a 10 00 8b
007584a0: 44 24 34 85 c0 74 0c 8b 16 50 8b 42 58 8b ce ff
007584b0: d0 eb 05 b8 c4 a6 fb 00 50 8d 4c 24 0c e8 8e 0a
007584c0: cb ff 8b 44 24 38 85 c0 74 0c 8b 16 50 8b 42 58
007584d0: 8b ce ff d0 eb 05 b8 c4 a6 fb 00 50 8d 4c 24 1c
007584e0: e8 6b 0a cb ff 8d 4c 24 08 51 8b cf e8 4f c7 1f
007584f0: 00 8d 4c 24 08 e8 f6 74 d9 ff 5e 5f 83 c4 20 c3

LINEAR DISASSEMBLY
00758450 <.text+0x357450>:
  758450:	83 ec 20                                        	sub    esp,0x20
  758453:	e8 18 f1 1d 00                                  	call   0x937570
  758458:	85 c0                                           	test   eax,eax
  75845a:	0f 84 9c 00 00 00                               	je     0x7584fc
  758460:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  758464:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  758468:	51                                              	push   ecx
  758469:	52                                              	push   edx
  75846a:	8b c8                                           	mov    ecx,eax
  75846c:	e8 0f fb 1d 00                                  	call   0x937f80
  758471:	85 c0                                           	test   eax,eax
  758473:	0f 84 83 00 00 00                               	je     0x7584fc
  758479:	8b 0d 38 a1 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea138
  75847f:	57                                              	push   edi
  758480:	51                                              	push   ecx
  758481:	8b c8                                           	mov    ecx,eax
  758483:	e8 d8 bd 1d 00                                  	call   0x934260
  758488:	8b f8                                           	mov    edi,eax
  75848a:	85 ff                                           	test   edi,edi
  75848c:	74 6d                                           	je     0x7584fb
  75848e:	56                                              	push   esi
  75848f:	e8 fc 0e 01 00                                  	call   0x769390
  758494:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  758498:	8b f0                                           	mov    esi,eax
  75849a:	e8 91 0a 10 00                                  	call   0x858f30
  75849f:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  7584a3:	85 c0                                           	test   eax,eax
  7584a5:	74 0c                                           	je     0x7584b3
  7584a7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7584a9:	50                                              	push   eax
  7584aa:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7584ad:	8b ce                                           	mov    ecx,esi
  7584af:	ff d0                                           	call   eax
  7584b1:	eb 05                                           	jmp    0x7584b8
  7584b3:	b8 c4 a6 fb 00                                  	mov    eax,0xfba6c4
  7584b8:	50                                              	push   eax
  7584b9:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7584bd:	e8 8e 0a cb ff                                  	call   0x408f50
  7584c2:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  7584c6:	85 c0                                           	test   eax,eax
  7584c8:	74 0c                                           	je     0x7584d6
  7584ca:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7584cc:	50                                              	push   eax
  7584cd:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  7584d0:	8b ce                                           	mov    ecx,esi
  7584d2:	ff d0                                           	call   eax
  7584d4:	eb 05                                           	jmp    0x7584db
  7584d6:	b8 c4 a6 fb 00                                  	mov    eax,0xfba6c4
  7584db:	50                                              	push   eax
  7584dc:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  7584e0:	e8 6b 0a cb ff                                  	call   0x408f50
  7584e5:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7584e9:	51                                              	push   ecx
  7584ea:	8b cf                                           	mov    ecx,edi
  7584ec:	e8 4f c7 1f 00                                  	call   0x954c40
  7584f1:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7584f5:	e8 f6 74 d9 ff                                  	call   0x4ef9f0
  7584fa:	5e                                              	pop    esi
  7584fb:	5f                                              	pop    edi
  7584fc:	83 c4 20                                        	add    esp,0x20
  7584ff:	c3                                              	ret
