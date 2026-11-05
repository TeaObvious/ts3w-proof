# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00783290 (ScriptCore.UIManager::UIManager_GetCASThumbnailImageImpl)
Paired Ghidra pseudocode: 00783290_ScriptCore_UIManager_UIManager_GetCASThumbnailImageImpl.c
Window: [0x00783290, 0x007833c0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x007833c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00783290: 55 8b ec 83 e4 f8 81 ec 3c 01 00 00 56 8b 35 30
007832a0: ec 1e 01 85 f6 0f 84 9d 00 00 00 8d 44 24 08 50
007832b0: 8d 4d 08 e8 28 8e fe ff 8b 4d 28 8b 55 24 6a 00
007832c0: 51 8b 4d 20 52 8b 55 1c 51 8b 4d 18 52 8b 10 51
007832d0: 83 ec 10 8b cc 89 11 8b 50 04 89 51 04 8b 50 08
007832e0: 8b 40 0c 89 51 08 89 41 0c 8d 4c 24 40 e8 8e 44
007832f0: e6 ff 6a 00 8d 4c 24 08 51 8d 54 24 20 52 8b ce
00783300: c7 44 24 10 00 00 00 00 e8 63 96 5d 00 83 7c 24
00783310: 04 00 75 3b 8b 84 24 a8 00 00 00 85 c0 74 12 3b
00783320: 84 24 b8 00 00 00 74 09 50 e8 b2 11 d6 ff 83 c4
00783330: 04 8b 44 24 18 85 c0 74 0f 3b 44 24 28 74 09 50
00783340: e8 9b 11 d6 ff 83 c4 04 33 c0 5e 8b e5 5d c3 e8
00783350: 3c 60 fe ff 8b 4c 24 04 6a 30 c7 44 24 08 00 00
00783360: 00 00 8b 10 51 8b c8 8b 82 c8 00 00 00 ff d0 8b
00783370: 4c 24 04 85 c9 8b f0 74 07 8b 11 8b 42 04 ff d0
00783380: 8b 84 24 a8 00 00 00 85 c0 74 12 3b 84 24 b8 00
00783390: 00 00 74 09 50 e8 46 11 d6 ff 83 c4 04 8b 44 24
007833a0: 18 85 c0 74 0f 3b 44 24 28 74 09 50 e8 2f 11 d6
007833b0: ff 83 c4 04 8b c6 5e 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00783290 <.text+0x382290>:
  783290:	55                                              	push   ebp
  783291:	8b ec                                           	mov    ebp,esp
  783293:	83 e4 f8                                        	and    esp,0xfffffff8
  783296:	81 ec 3c 01 00 00                               	sub    esp,0x13c
  78329c:	56                                              	push   esi
  78329d:	8b 35 30 ec 1e 01                               	mov    esi,DWORD PTR ds:0x11eec30
  7832a3:	85 f6                                           	test   esi,esi
  7832a5:	0f 84 9d 00 00 00                               	je     0x783348
  7832ab:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7832af:	50                                              	push   eax
  7832b0:	8d 4d 08                                        	lea    ecx,[ebp+0x8]
  7832b3:	e8 28 8e fe ff                                  	call   0x76c0e0
  7832b8:	8b 4d 28                                        	mov    ecx,DWORD PTR [ebp+0x28]
  7832bb:	8b 55 24                                        	mov    edx,DWORD PTR [ebp+0x24]
  7832be:	6a 00                                           	push   0x0
  7832c0:	51                                              	push   ecx
  7832c1:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
  7832c4:	52                                              	push   edx
  7832c5:	8b 55 1c                                        	mov    edx,DWORD PTR [ebp+0x1c]
  7832c8:	51                                              	push   ecx
  7832c9:	8b 4d 18                                        	mov    ecx,DWORD PTR [ebp+0x18]
  7832cc:	52                                              	push   edx
  7832cd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7832cf:	51                                              	push   ecx
  7832d0:	83 ec 10                                        	sub    esp,0x10
  7832d3:	8b cc                                           	mov    ecx,esp
  7832d5:	89 11                                           	mov    DWORD PTR [ecx],edx
  7832d7:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7832da:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7832dd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7832e0:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7832e3:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7832e6:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  7832e9:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7832ed:	e8 8e 44 e6 ff                                  	call   0x5e7780
  7832f2:	6a 00                                           	push   0x0
  7832f4:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7832f8:	51                                              	push   ecx
  7832f9:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  7832fd:	52                                              	push   edx
  7832fe:	8b ce                                           	mov    ecx,esi
  783300:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  783308:	e8 63 96 5d 00                                  	call   0xd5c970
  78330d:	83 7c 24 04 00                                  	cmp    DWORD PTR [esp+0x4],0x0
  783312:	75 3b                                           	jne    0x78334f
  783314:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
  78331b:	85 c0                                           	test   eax,eax
  78331d:	74 12                                           	je     0x783331
  78331f:	3b 84 24 b8 00 00 00                            	cmp    eax,DWORD PTR [esp+0xb8]
  783326:	74 09                                           	je     0x783331
  783328:	50                                              	push   eax
  783329:	e8 b2 11 d6 ff                                  	call   0x4e44e0
  78332e:	83 c4 04                                        	add    esp,0x4
  783331:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  783335:	85 c0                                           	test   eax,eax
  783337:	74 0f                                           	je     0x783348
  783339:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  78333d:	74 09                                           	je     0x783348
  78333f:	50                                              	push   eax
  783340:	e8 9b 11 d6 ff                                  	call   0x4e44e0
  783345:	83 c4 04                                        	add    esp,0x4
  783348:	33 c0                                           	xor    eax,eax
  78334a:	5e                                              	pop    esi
  78334b:	8b e5                                           	mov    esp,ebp
  78334d:	5d                                              	pop    ebp
  78334e:	c3                                              	ret
  78334f:	e8 3c 60 fe ff                                  	call   0x769390
  783354:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  783358:	6a 30                                           	push   0x30
  78335a:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  783362:	8b 10                                           	mov    edx,DWORD PTR [eax]
  783364:	51                                              	push   ecx
  783365:	8b c8                                           	mov    ecx,eax
  783367:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  78336d:	ff d0                                           	call   eax
  78336f:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  783373:	85 c9                                           	test   ecx,ecx
  783375:	8b f0                                           	mov    esi,eax
  783377:	74 07                                           	je     0x783380
  783379:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  78337b:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78337e:	ff d0                                           	call   eax
  783380:	8b 84 24 a8 00 00 00                            	mov    eax,DWORD PTR [esp+0xa8]
  783387:	85 c0                                           	test   eax,eax
  783389:	74 12                                           	je     0x78339d
  78338b:	3b 84 24 b8 00 00 00                            	cmp    eax,DWORD PTR [esp+0xb8]
  783392:	74 09                                           	je     0x78339d
  783394:	50                                              	push   eax
  783395:	e8 46 11 d6 ff                                  	call   0x4e44e0
  78339a:	83 c4 04                                        	add    esp,0x4
  78339d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7833a1:	85 c0                                           	test   eax,eax
  7833a3:	74 0f                                           	je     0x7833b4
  7833a5:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  7833a9:	74 09                                           	je     0x7833b4
  7833ab:	50                                              	push   eax
  7833ac:	e8 2f 11 d6 ff                                  	call   0x4e44e0
  7833b1:	83 c4 04                                        	add    esp,0x4
  7833b4:	8b c6                                           	mov    eax,esi
  7833b6:	5e                                              	pop    esi
  7833b7:	8b e5                                           	mov    esp,ebp
  7833b9:	5d                                              	pop    ebp
  7833ba:	c3                                              	ret
  7833bb:	cc                                              	int3
  7833bc:	cc                                              	int3
  7833bd:	cc                                              	int3
  7833be:	cc                                              	int3
  7833bf:	cc                                              	int3
