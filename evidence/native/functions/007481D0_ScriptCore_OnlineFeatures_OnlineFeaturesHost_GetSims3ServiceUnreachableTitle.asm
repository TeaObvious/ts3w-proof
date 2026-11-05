# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007481d0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_GetSims3ServiceUnreachableTitle)
Paired Ghidra pseudocode: 007481D0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_GetSims3ServiceUnreachableTitle.c
Window: [0x007481d0, 0x007482f0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x007482f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007481d0: 83 ec 34 57 e8 b7 11 02 00 8b f8 a1 68 50 1d 01
007481e0: 85 c0 74 05 8d 48 f8 eb 02 33 c9 33 c0 85 ff 89
007481f0: 44 24 04 0f 84 f1 00 00 00 85 c9 0f 84 e9 00 00
00748200: 00 83 c1 18 56 b8 54 8e 1c 01 51 8d 4c 24 20 c7
00748210: 44 24 1c c4 3f 00 01 89 44 24 10 89 44 24 14 c7
00748220: 44 24 18 56 8e 1c 01 e8 c4 0b cc ff 8b 44 24 20
00748230: 8b 74 24 1c 50 56 8d 4c 24 14 e8 21 0b cc ff 8b
00748240: 4c 24 24 2b ce 83 e1 fe 83 f9 02 7e 0d 85 f6 74
00748250: 09 56 e8 89 c2 d9 ff 83 c4 04 8b 44 24 0c 8b 4c
00748260: 24 10 3b c1 74 64 2b c8 f7 c1 fe ff ff ff 74 5a
00748270: 6a 01 6a 10 8d 54 24 14 52 6a 09 be f4 a6 fb 00
00748280: 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44 24 38 00
00748290: 00 66 c7 44 24 3a 00 00 e8 23 d7 da ff 8b 07 8b
007482a0: 40 50 8d 4c 24 08 51 8d 54 24 20 52 8b cf ff d0
007482b0: f6 44 24 24 04 89 74 24 1c 74 0b 6a 00 8d 4c 24
007482c0: 20 e8 9a d4 da ff 8b 44 24 0c 8b 4c 24 14 2b c8
007482d0: 83 e1 fe 83 f9 02 5e 7e 0d 85 c0 74 09 50 e8 fd
007482e0: c1 d9 ff 83 c4 04 8b 44 24 04 5f 83 c4 34 c3 cc

LINEAR DISASSEMBLY
007481d0 <.text+0x3471d0>:
  7481d0:	83 ec 34                                        	sub    esp,0x34
  7481d3:	57                                              	push   edi
  7481d4:	e8 b7 11 02 00                                  	call   0x769390
  7481d9:	8b f8                                           	mov    edi,eax
  7481db:	a1 68 50 1d 01                                  	mov    eax,ds:0x11d5068
  7481e0:	85 c0                                           	test   eax,eax
  7481e2:	74 05                                           	je     0x7481e9
  7481e4:	8d 48 f8                                        	lea    ecx,[eax-0x8]
  7481e7:	eb 02                                           	jmp    0x7481eb
  7481e9:	33 c9                                           	xor    ecx,ecx
  7481eb:	33 c0                                           	xor    eax,eax
  7481ed:	85 ff                                           	test   edi,edi
  7481ef:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  7481f3:	0f 84 f1 00 00 00                               	je     0x7482ea
  7481f9:	85 c9                                           	test   ecx,ecx
  7481fb:	0f 84 e9 00 00 00                               	je     0x7482ea
  748201:	83 c1 18                                        	add    ecx,0x18
  748204:	56                                              	push   esi
  748205:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  74820a:	51                                              	push   ecx
  74820b:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  74820f:	c7 44 24 1c c4 3f 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003fc4
  748217:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  74821b:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  74821f:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  748227:	e8 c4 0b cc ff                                  	call   0x408df0
  74822c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  748230:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  748234:	50                                              	push   eax
  748235:	56                                              	push   esi
  748236:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  74823a:	e8 21 0b cc ff                                  	call   0x408d60
  74823f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  748243:	2b ce                                           	sub    ecx,esi
  748245:	83 e1 fe                                        	and    ecx,0xfffffffe
  748248:	83 f9 02                                        	cmp    ecx,0x2
  74824b:	7e 0d                                           	jle    0x74825a
  74824d:	85 f6                                           	test   esi,esi
  74824f:	74 09                                           	je     0x74825a
  748251:	56                                              	push   esi
  748252:	e8 89 c2 d9 ff                                  	call   0x4e44e0
  748257:	83 c4 04                                        	add    esp,0x4
  74825a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74825e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  748262:	3b c1                                           	cmp    eax,ecx
  748264:	74 64                                           	je     0x7482ca
  748266:	2b c8                                           	sub    ecx,eax
  748268:	f7 c1 fe ff ff ff                               	test   ecx,0xfffffffe
  74826e:	74 5a                                           	je     0x7482ca
  748270:	6a 01                                           	push   0x1
  748272:	6a 10                                           	push   0x10
  748274:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  748278:	52                                              	push   edx
  748279:	6a 09                                           	push   0x9
  74827b:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  748280:	6a 13                                           	push   0x13
  748282:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  748286:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  74828a:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  748291:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  748298:	e8 23 d7 da ff                                  	call   0x4f59c0
  74829d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  74829f:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7482a2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7482a6:	51                                              	push   ecx
  7482a7:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7482ab:	52                                              	push   edx
  7482ac:	8b cf                                           	mov    ecx,edi
  7482ae:	ff d0                                           	call   eax
  7482b0:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7482b5:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  7482b9:	74 0b                                           	je     0x7482c6
  7482bb:	6a 00                                           	push   0x0
  7482bd:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7482c1:	e8 9a d4 da ff                                  	call   0x4f5760
  7482c6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7482ca:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7482ce:	2b c8                                           	sub    ecx,eax
  7482d0:	83 e1 fe                                        	and    ecx,0xfffffffe
  7482d3:	83 f9 02                                        	cmp    ecx,0x2
  7482d6:	5e                                              	pop    esi
  7482d7:	7e 0d                                           	jle    0x7482e6
  7482d9:	85 c0                                           	test   eax,eax
  7482db:	74 09                                           	je     0x7482e6
  7482dd:	50                                              	push   eax
  7482de:	e8 fd c1 d9 ff                                  	call   0x4e44e0
  7482e3:	83 c4 04                                        	add    esp,0x4
  7482e6:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7482ea:	5f                                              	pop    edi
  7482eb:	83 c4 34                                        	add    esp,0x34
  7482ee:	c3                                              	ret
  7482ef:	cc                                              	int3
