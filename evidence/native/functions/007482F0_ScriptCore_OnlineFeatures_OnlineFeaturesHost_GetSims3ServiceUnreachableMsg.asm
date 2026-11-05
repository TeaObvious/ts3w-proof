# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007482f0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableMsg)
Paired Ghidra pseudocode: 007482F0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetSims3ServiceUnreachableMsg.c
Window: [0x007482f0, 0x00748410) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00748410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007482f0: 83 ec 34 57 e8 97 10 02 00 8b f8 a1 68 50 1d 01
00748300: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 ff 89
00748310: 44 24 04 0f 84 f1 00 00 00 85 c9 0f 84 e9 00 00
00748320: 00 83 c1 28 56 b8 54 8e 1c 01 51 8d 4c 24 20 c7
00748330: 44 24 1c ec 3f 00 01 89 44 24 10 89 44 24 14 c7
00748340: 44 24 18 56 8e 1c 01 e8 a4 0a cc ff 8b 44 24 20
00748350: 8b 74 24 1c 50 56 8d 4c 24 14 e8 01 0a cc ff 8b
00748360: 4c 24 24 2b ce 83 e1 fe 83 f9 02 7e 0d 85 f6 74
00748370: 09 56 e8 69 c1 d9 ff 83 c4 04 8b 44 24 0c 8b 4c
00748380: 24 10 3b c1 74 64 2b c8 f7 c1 fe ff ff ff 74 5a
00748390: 6a 01 6a 10 8d 54 24 14 52 6a 09 be f4 a6 fb 00
007483a0: 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44 24 38 00
007483b0: 00 66 c7 44 24 3a 00 00 e8 03 d6 da ff 8b 07 8b
007483c0: 40 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0
007483d0: f6 44 24 24 04 89 74 24 1c 74 0b 6a 00 8d 4c 24
007483e0: 20 e8 7a d3 da ff 8b 44 24 0c 8b 4c 24 14 2b c8
007483f0: 83 e1 fe 83 f9 02 5e 7e 0d 85 c0 74 09 50 e8 dd
00748400: c0 d9 ff 83 c4 04 8b 44 24 04 5f 83 c4 34 c3 cc

LINEAR DISASSEMBLY
007482f0 <.text+0x3472f0>:
  7482f0:	83 ec 34                                        	sub    esp,0x34
  7482f3:	57                                              	push   edi
  7482f4:	e8 97 10 02 00                                  	call   0x769390
  7482f9:	8b f8                                           	mov    edi,eax
  7482fb:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  748300:	85 c0                                           	test   eax,eax
  748302:	74 05                                           	je     0x748309
  748304:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  748307:	eb 02                                           	jmp    0x74830b
  748309:	33 c9                                           	xor    ecx,ecx
  74830b:	33 c0                                           	xor    eax,eax
  74830d:	85 ff                                           	test   edi,edi
  74830f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  748313:	0f 84 f1 00 00 00                               	je     0x74840a
  748319:	85 c9                                           	test   ecx,ecx
  74831b:	0f 84 e9 00 00 00                               	je     0x74840a
  748321:	83 c1 28                                        	add    ecx,0x28
  748324:	56                                              	push   esi
  748325:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  74832a:	51                                              	push   ecx
  74832b:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  74832f:	c7 44 24 1c ec 3f 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003fec
  748337:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  74833b:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  74833f:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  748347:	e8 a4 0a cc ff                                  	call   0x408df0
  74834c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  748350:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  748354:	50                                              	push   eax
  748355:	56                                              	push   esi
  748356:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  74835a:	e8 01 0a cc ff                                  	call   0x408d60
  74835f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  748363:	2b ce                                           	sub    ecx,esi
  748365:	83 e1 fe                                        	and    ecx,0xfffffffe
  748368:	83 f9 02                                        	cmp    ecx,0x2
  74836b:	7e 0d                                           	jle    0x74837a
  74836d:	85 f6                                           	test   esi,esi
  74836f:	74 09                                           	je     0x74837a
  748371:	56                                              	push   esi
  748372:	e8 69 c1 d9 ff                                  	call   0x4e44e0
  748377:	83 c4 04                                        	add    esp,0x4
  74837a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74837e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  748382:	3b c1                                           	cmp    eax,ecx
  748384:	74 64                                           	je     0x7483ea
  748386:	2b c8                                           	sub    ecx,eax
  748388:	f7 c1 fe ff ff ff                               	test   ecx,0xfffffffe
  74838e:	74 5a                                           	je     0x7483ea
  748390:	6a 01                                           	push   0x1
  748392:	6a 10                                           	push   0x10
  748394:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  748398:	52                                              	push   edx
  748399:	6a 09                                           	push   0x9
  74839b:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  7483a0:	6a 13                                           	push   0x13
  7483a2:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7483a6:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  7483aa:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  7483b1:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  7483b8:	e8 03 d6 da ff                                  	call   0x4f59c0
  7483bd:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7483bf:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7483c2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7483c6:	51                                              	push   ecx
  7483c7:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7483cb:	52                                              	push   edx
  7483cc:	8b cf                                           	mov    ecx,edi
  7483ce:	ff d0                                           	call   eax
  7483d0:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7483d5:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  7483d9:	74 0b                                           	je     0x7483e6
  7483db:	6a 00                                           	push   0x0
  7483dd:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7483e1:	e8 7a d3 da ff                                  	call   0x4f5760
  7483e6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7483ea:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7483ee:	2b c8                                           	sub    ecx,eax
  7483f0:	83 e1 fe                                        	and    ecx,0xfffffffe
  7483f3:	83 f9 02                                        	cmp    ecx,0x2
  7483f6:	5e                                              	pop    esi
  7483f7:	7e 0d                                           	jle    0x748406
  7483f9:	85 c0                                           	test   eax,eax
  7483fb:	74 09                                           	je     0x748406
  7483fd:	50                                              	push   eax
  7483fe:	e8 dd c0 d9 ff                                  	call   0x4e44e0
  748403:	83 c4 04                                        	add    esp,0x4
  748406:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  74840a:	5f                                              	pop    edi
  74840b:	83 c4 34                                        	add    esp,0x34
  74840e:	c3                                              	ret
  74840f:	cc                                              	int3
