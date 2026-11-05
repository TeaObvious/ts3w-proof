# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce7310 (ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedItemsListImpl)
Paired Ghidra pseudocode: 00CE7310_ScriptCore_UserToolUtils_UserToolUtils_GetFeaturedItemsListImpl.c
Window: [0x00ce7310, 0x00ce7440) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce7440
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce7310: 83 ec 38 53 56 8b 35 34 e0 1e 01 33 db 3b f3 0f
00ce7320: 84 09 01 00 00 89 5c 24 08 e8 62 20 a8 ff 3b c3
00ce7330: 89 44 24 0c 0f 84 ea 00 00 00 8b 4c 24 44 57 8d
00ce7340: 44 24 14 50 51 8b ce 89 5c 24 1c 89 5c 24 20 89
00ce7350: 5c 24 24 c7 44 24 28 38 22 05 01 e8 80 9f fa ff
00ce7360: 8b 74 24 18 2b 74 24 14 8b 0d 64 c8 1c 01 c1 fe
00ce7370: 03 53 8d 14 f5 00 00 00 00 52 e8 a1 fb 7f ff 8b
00ce7380: f8 3b fb 0f 84 89 00 00 00 33 c0 3b f3 76 1a 90
00ce7390: 8b 4c 24 14 8b 14 c1 89 14 c7 8b 4c c1 04 89 4c
00ce73a0: c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44 24 24 f4
00ce73b0: a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e 8d 4c 24
00ce73c0: 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a 08 57 6a
00ce73d0: 20 6a 0c e8 e8 e5 80 ff 8b 4c 24 10 8b 11 8b 52
00ce73e0: 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2 8b 0d 64
00ce73f0: c8 1c 01 57 e8 77 ea 7f ff f6 44 24 2c 04 c7 44
00ce7400: 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28 e8 4e e3
00ce7410: 80 ff 8b 44 24 14 3b c3 5f 74 09 50 e8 bf d0 7f
00ce7420: ff 83 c4 04 8b 44 24 08 5e 5b 83 c4 38 c3 5e 33
00ce7430: c0 5b 83 c4 38 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce7310 <.text+0x8e6310>:
  ce7310:	83 ec 38                                        	sub    esp,0x38
  ce7313:	53                                              	push   ebx
  ce7314:	56                                              	push   esi
  ce7315:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce731b:	33 db                                           	xor    ebx,ebx
  ce731d:	3b f3                                           	cmp    esi,ebx
  ce731f:	0f 84 09 01 00 00                               	je     0xce742e
  ce7325:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce7329:	e8 62 20 a8 ff                                  	call   0x769390
  ce732e:	3b c3                                           	cmp    eax,ebx
  ce7330:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce7334:	0f 84 ea 00 00 00                               	je     0xce7424
  ce733a:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  ce733e:	57                                              	push   edi
  ce733f:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ce7343:	50                                              	push   eax
  ce7344:	51                                              	push   ecx
  ce7345:	8b ce                                           	mov    ecx,esi
  ce7347:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce734b:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  ce734f:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  ce7353:	c7 44 24 28 38 22 05 01                         	mov    DWORD PTR [esp+0x28],0x1052238
  ce735b:	e8 80 9f fa ff                                  	call   0xc912e0
  ce7360:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ce7364:	2b 74 24 14                                     	sub    esi,DWORD PTR [esp+0x14]
  ce7368:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce736e:	c1 fe 03                                        	sar    esi,0x3
  ce7371:	53                                              	push   ebx
  ce7372:	8d 14 f5 00 00 00 00                            	lea    edx,[esi*8+0x0]
  ce7379:	52                                              	push   edx
  ce737a:	e8 a1 fb 7f ff                                  	call   0x4e6f20
  ce737f:	8b f8                                           	mov    edi,eax
  ce7381:	3b fb                                           	cmp    edi,ebx
  ce7383:	0f 84 89 00 00 00                               	je     0xce7412
  ce7389:	33 c0                                           	xor    eax,eax
  ce738b:	3b f3                                           	cmp    esi,ebx
  ce738d:	76 1a                                           	jbe    0xce73a9
  ce738f:	90                                              	nop
  ce7390:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce7394:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce7397:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce739a:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce739e:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce73a2:	83 c0 01                                        	add    eax,0x1
  ce73a5:	3b c6                                           	cmp    eax,esi
  ce73a7:	72 e7                                           	jb     0xce7390
  ce73a9:	3b f3                                           	cmp    esi,ebx
  ce73ab:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce73b3:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce73b8:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce73bd:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce73c1:	74 08                                           	je     0xce73cb
  ce73c3:	56                                              	push   esi
  ce73c4:	6a 08                                           	push   0x8
  ce73c6:	57                                              	push   edi
  ce73c7:	6a 18                                           	push   0x18
  ce73c9:	eb 06                                           	jmp    0xce73d1
  ce73cb:	53                                              	push   ebx
  ce73cc:	6a 08                                           	push   0x8
  ce73ce:	57                                              	push   edi
  ce73cf:	6a 20                                           	push   0x20
  ce73d1:	6a 0c                                           	push   0xc
  ce73d3:	e8 e8 e5 80 ff                                  	call   0x4f59c0
  ce73d8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce73dc:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce73de:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce73e1:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce73e5:	50                                              	push   eax
  ce73e6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce73ea:	50                                              	push   eax
  ce73eb:	ff d2                                           	call   edx
  ce73ed:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce73f3:	57                                              	push   edi
  ce73f4:	e8 77 ea 7f ff                                  	call   0x4e5e70
  ce73f9:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce73fe:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7406:	74 0a                                           	je     0xce7412
  ce7408:	53                                              	push   ebx
  ce7409:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce740d:	e8 4e e3 80 ff                                  	call   0x4f5760
  ce7412:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce7416:	3b c3                                           	cmp    eax,ebx
  ce7418:	5f                                              	pop    edi
  ce7419:	74 09                                           	je     0xce7424
  ce741b:	50                                              	push   eax
  ce741c:	e8 bf d0 7f ff                                  	call   0x4e44e0
  ce7421:	83 c4 04                                        	add    esp,0x4
  ce7424:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce7428:	5e                                              	pop    esi
  ce7429:	5b                                              	pop    ebx
  ce742a:	83 c4 38                                        	add    esp,0x38
  ce742d:	c3                                              	ret
  ce742e:	5e                                              	pop    esi
  ce742f:	33 c0                                           	xor    eax,eax
  ce7431:	5b                                              	pop    ebx
  ce7432:	83 c4 38                                        	add    esp,0x38
  ce7435:	c3                                              	ret
  ce7436:	cc                                              	int3
  ce7437:	cc                                              	int3
  ce7438:	cc                                              	int3
  ce7439:	cc                                              	int3
  ce743a:	cc                                              	int3
  ce743b:	cc                                              	int3
  ce743c:	cc                                              	int3
  ce743d:	cc                                              	int3
  ce743e:	cc                                              	int3
  ce743f:	cc                                              	int3
