# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007714d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_SendComment)
Paired Ghidra pseudocode: 007714D0_ScriptCore_SocialFeatures_SocialFeaturesHost_SendComment.c
Window: [0x007714d0, 0x007715a0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007715a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007714d0: 83 ec 20 e8 b8 7e ff ff 85 c0 0f 84 b5 00 00 00
007714e0: 8b 4c 24 34 8b 10 8b 52 58 53 56 57 51 8b c8 ff
007714f0: d2 6a 00 6a ff 50 8d 44 24 28 bf 54 8e 1c 01 be
00771500: 55 8e 1c 01 50 c7 44 24 28 bc 9c 00 01 89 7c 24
00771510: 1c 89 7c 24 20 89 74 24 24 e8 a2 27 d8 ff 8d 4c
00771520: 24 1c 83 c4 10 3b c1 74 14 8b 50 04 8b 00 52 50
00771530: e8 db 43 c9 ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24
00771540: 24 8b 44 24 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09
00771550: 50 e8 8a 2f d7 ff 83 c4 04 8b 54 24 3c 8b 44 24
00771560: 38 8b 4c 24 34 57 52 8b 54 24 38 50 51 52 e8 3d
00771570: 23 2b 00 2b f7 83 c4 14 83 fe 01 8b d8 7e 0d 85
00771580: ff 74 09 57 e8 57 2f d7 ff 83 c4 04 5f 5e 8b c3
00771590: 5b 83 c4 20 c3 33 c0 83 c4 20 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007714d0 <.text+0x3704d0>:
  7714d0:	83 ec 20                                        	sub    esp,0x20
  7714d3:	e8 b8 7e ff ff                                  	call   0x769390
  7714d8:	85 c0                                           	test   eax,eax
  7714da:	0f 84 b5 00 00 00                               	je     0x771595
  7714e0:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  7714e4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7714e6:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7714e9:	53                                              	push   ebx
  7714ea:	56                                              	push   esi
  7714eb:	57                                              	push   edi
  7714ec:	51                                              	push   ecx
  7714ed:	8b c8                                           	mov    ecx,eax
  7714ef:	ff d2                                           	call   edx
  7714f1:	6a 00                                           	push   0x0
  7714f3:	6a ff                                           	push   0xffffffff
  7714f5:	50                                              	push   eax
  7714f6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  7714fa:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  7714ff:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771504:	50                                              	push   eax
  771505:	c7 44 24 28 bc 9c 00 01                         	mov    DWORD PTR [esp+0x28],0x1009cbc
  77150d:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  771511:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  771515:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  771519:	e8 a2 27 d8 ff                                  	call   0x4f3cc0
  77151e:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  771522:	83 c4 10                                        	add    esp,0x10
  771525:	3b c1                                           	cmp    eax,ecx
  771527:	74 14                                           	je     0x77153d
  771529:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  77152c:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77152e:	52                                              	push   edx
  77152f:	50                                              	push   eax
  771530:	e8 db 43 c9 ff                                  	call   0x405910
  771535:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771539:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  77153d:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  771541:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771545:	2b c8                                           	sub    ecx,eax
  771547:	83 f9 01                                        	cmp    ecx,0x1
  77154a:	7e 0d                                           	jle    0x771559
  77154c:	85 c0                                           	test   eax,eax
  77154e:	74 09                                           	je     0x771559
  771550:	50                                              	push   eax
  771551:	e8 8a 2f d7 ff                                  	call   0x4e44e0
  771556:	83 c4 04                                        	add    esp,0x4
  771559:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  77155d:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  771561:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  771565:	57                                              	push   edi
  771566:	52                                              	push   edx
  771567:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  77156b:	50                                              	push   eax
  77156c:	51                                              	push   ecx
  77156d:	52                                              	push   edx
  77156e:	e8 3d 23 2b 00                                  	call   0xa238b0
  771573:	2b f7                                           	sub    esi,edi
  771575:	83 c4 14                                        	add    esp,0x14
  771578:	83 fe 01                                        	cmp    esi,0x1
  77157b:	8b d8                                           	mov    ebx,eax
  77157d:	7e 0d                                           	jle    0x77158c
  77157f:	85 ff                                           	test   edi,edi
  771581:	74 09                                           	je     0x77158c
  771583:	57                                              	push   edi
  771584:	e8 57 2f d7 ff                                  	call   0x4e44e0
  771589:	83 c4 04                                        	add    esp,0x4
  77158c:	5f                                              	pop    edi
  77158d:	5e                                              	pop    esi
  77158e:	8b c3                                           	mov    eax,ebx
  771590:	5b                                              	pop    ebx
  771591:	83 c4 20                                        	add    esp,0x20
  771594:	c3                                              	ret
  771595:	33 c0                                           	xor    eax,eax
  771597:	83 c4 20                                        	add    esp,0x20
  77159a:	c3                                              	ret
  77159b:	cc                                              	int3
  77159c:	cc                                              	int3
  77159d:	cc                                              	int3
  77159e:	cc                                              	int3
  77159f:	cc                                              	int3
