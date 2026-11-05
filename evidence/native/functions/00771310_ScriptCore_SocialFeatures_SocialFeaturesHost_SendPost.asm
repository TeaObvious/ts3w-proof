# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00771310 (ScriptCore.SocialFeatures::SocialFeaturesHost_SendPost)
Paired Ghidra pseudocode: 00771310_ScriptCore_SocialFeatures_SocialFeaturesHost_SendPost.c
Window: [0x00771310, 0x007713e0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007713e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00771310: 83 ec 20 e8 78 80 ff ff 85 c0 0f 84 ab 00 00 00
00771320: 8b 4c 24 2c 8b 10 8b 52 58 53 56 57 51 8b c8 ff
00771330: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
00771340: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
00771350: 1c 89 7c 24 20 89 74 24 24 e8 62 29 d8 ff 8d 4c
00771360: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
00771370: e8 9b 45 c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
00771380: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
00771390: 50 e8 4a 31 d7 ff 83 c4 04 8b 54 24 34 8b 44 24
007713a0: 30 57 52 50 e8 07 24 2b 00 2b f7 83 c4 0c 83 fe
007713b0: 01 8b d8 7e 0d 85 ff 74 09 57 e8 21 31 d7 ff 83
007713c0: c4 04 5f 5e 8b c3 5b 83 c4 20 c3 33 c0 83 c4 20
007713d0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00771310 <.text+0x370310>:
  771310:	83 ec 20                                        	sub    esp,0x20
  771313:	e8 78 80 ff ff                                  	call   0x769390
  771318:	85 c0                                           	test   eax,eax
  77131a:	0f 84 ab 00 00 00                               	je     0x7713cb
  771320:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  771324:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771326:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  771329:	53                                              	push   ebx
  77132a:	56                                              	push   esi
  77132b:	57                                              	push   edi
  77132c:	51                                              	push   ecx
  77132d:	8b c8                                           	mov    ecx,eax
  77132f:	ff d2                                           	call   edx
  771331:	6a 00                                           	push   0x0
  771333:	6a ff                                           	push   0xffffffff
  771335:	50                                              	push   eax
  771336:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  77133a:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  77133f:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771344:	50                                              	push   eax
  771345:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  77134d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  771351:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771355:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  771359:	e8 62 29 d8 ff                                  	call   0x4f3cc0
  77135e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  771362:	83 c4 10                                        	add    esp,0x10
  771365:	3b c1                                           	cmp    eax,ecx
  771367:	74 14                                           	je     0x77137d
  771369:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77136c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77136e:	52                                              	push   edx
  77136f:	50                                              	push   eax
  771370:	e8 9b 45 c9 ff                                  	call   0x405910
  771375:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771379:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  77137d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771381:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771385:	2b c8                                           	sub    ecx,eax
  771387:	83 f9 01                                        	cmp    ecx,0x1
  77138a:	7e 0d                                           	jle    0x771399
  77138c:	85 c0                                           	test   eax,eax
  77138e:	74 09                                           	je     0x771399
  771390:	50                                              	push   eax
  771391:	e8 4a 31 d7 ff                                  	call   0x4e44e0
  771396:	83 c4 04                                        	add    esp,0x4
  771399:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  77139d:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7713a1:	57                                              	push   edi
  7713a2:	52                                              	push   edx
  7713a3:	50                                              	push   eax
  7713a4:	e8 07 24 2b 00                                  	call   0xa237b0
  7713a9:	2b f7                                           	sub    esi,edi
  7713ab:	83 c4 0c                                        	add    esp,0xc
  7713ae:	83 fe 01                                        	cmp    esi,0x1
  7713b1:	8b d8                                           	mov    ebx,eax
  7713b3:	7e 0d                                           	jle    0x7713c2
  7713b5:	85 ff                                           	test   edi,edi
  7713b7:	74 09                                           	je     0x7713c2
  7713b9:	57                                              	push   edi
  7713ba:	e8 21 31 d7 ff                                  	call   0x4e44e0
  7713bf:	83 c4 04                                        	add    esp,0x4
  7713c2:	5f                                              	pop    edi
  7713c3:	5e                                              	pop    esi
  7713c4:	8b c3                                           	mov    eax,ebx
  7713c6:	5b                                              	pop    ebx
  7713c7:	83 c4 20                                        	add    esp,0x20
  7713ca:	c3                                              	ret
  7713cb:	33 c0                                           	xor    eax,eax
  7713cd:	83 c4 20                                        	add    esp,0x20
  7713d0:	c3                                              	ret
  7713d1:	cc                                              	int3
  7713d2:	cc                                              	int3
  7713d3:	cc                                              	int3
  7713d4:	cc                                              	int3
  7713d5:	cc                                              	int3
  7713d6:	cc                                              	int3
  7713d7:	cc                                              	int3
  7713d8:	cc                                              	int3
  7713d9:	cc                                              	int3
  7713da:	cc                                              	int3
  7713db:	cc                                              	int3
  7713dc:	cc                                              	int3
  7713dd:	cc                                              	int3
  7713de:	cc                                              	int3
  7713df:	cc                                              	int3
