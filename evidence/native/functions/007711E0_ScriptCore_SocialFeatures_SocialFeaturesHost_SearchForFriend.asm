# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007711e0 (ScriptCore.SocialFeatures::SocialFeaturesHost_SearchForFriend)
Paired Ghidra pseudocode: 007711E0_ScriptCore_SocialFeatures_SocialFeaturesHost_SearchForFriend.c
Window: [0x007711e0, 0x00771310) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00771310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007711e0: 83 ec 20 e8 a8 81 ff ff 85 c0 0f 84 da 00 00 00
007711f0: 8b 4c 24 2c 85 c9 0f 84 ce 00 00 00 8b 10 53 56
00771200: 57 51 bf 54 8e 1c 01 8b c8 8b 42 58 be 55 8e 1c
00771210: 01 c7 44 24 1c 80 9c 00 01 89 7c 24 10 89 7c 24
00771220: 14 89 74 24 18 ff d0 6a 00 6a ff 50 8d 4c 24 28
00771230: 51 e8 8a 2a d8 ff 8d 54 24 1c 83 c4 10 3b c2 74
00771240: 18 8b 48 04 8b 10 51 52 8d 4c 24 14 e8 bf 46 c9
00771250: ff 8b 74 24 14 8b 7c 24 0c 8b 4c 24 24 8b 44 24
00771260: 1c 2b c8 83 f9 01 7e 0d 85 c0 74 09 50 e8 6e 32
00771270: d7 ff 83 c4 04 8b 54 24 54 8b 44 24 50 8b 4c 24
00771280: 4c 52 8b 54 24 4c 50 8b 44 24 4c 51 8b 4c 24 4c
00771290: 52 8b 54 24 4c 50 8b 44 24 48 51 8b 4c 24 48 52
007712a0: 57 50 51 e8 38 15 2b 00 2b f7 83 c4 28 83 fe 01
007712b0: 8b d8 7e 0d 85 ff 74 09 57 e8 22 32 d7 ff 83 c4
007712c0: 04 5f 5e 8b c3 5b 83 c4 20 c3 8b 54 24 48 8b 44
007712d0: 24 44 8b 4c 24 40 52 8b 54 24 40 50 8b 44 24 40
007712e0: 51 8b 4c 24 40 52 8b 54 24 40 50 8b 44 24 3c 51
007712f0: 8b 4c 24 3c 52 6a 00 50 51 e8 e2 14 2b 00 83 c4
00771300: 28 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007711e0 <.text+0x3701e0>:
  7711e0:	83 ec 20                                        	sub    esp,0x20
  7711e3:	e8 a8 81 ff ff                                  	call   0x769390
  7711e8:	85 c0                                           	test   eax,eax
  7711ea:	0f 84 da 00 00 00                               	je     0x7712ca
  7711f0:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  7711f4:	85 c9                                           	test   ecx,ecx
  7711f6:	0f 84 ce 00 00 00                               	je     0x7712ca
  7711fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7711fe:	53                                              	push   ebx
  7711ff:	56                                              	push   esi
  771200:	57                                              	push   edi
  771201:	51                                              	push   ecx
  771202:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  771207:	8b c8                                           	mov    ecx,eax
  771209:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  77120c:	be 55 8e 1c 01                                  	mov    esi,0x11c8e55
  771211:	c7 44 24 1c 80 9c 00 01                         	mov    DWORD PTR [esp+0x1c],0x1009c80
  771219:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  77121d:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  771221:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  771225:	ff d0                                           	call   eax
  771227:	6a 00                                           	push   0x0
  771229:	6a ff                                           	push   0xffffffff
  77122b:	50                                              	push   eax
  77122c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  771230:	51                                              	push   ecx
  771231:	e8 8a 2a d8 ff                                  	call   0x4f3cc0
  771236:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  77123a:	83 c4 10                                        	add    esp,0x10
  77123d:	3b c2                                           	cmp    eax,edx
  77123f:	74 18                                           	je     0x771259
  771241:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  771244:	8b 10                                           	mov    edx,DWORD PTR [eax]
  771246:	51                                              	push   ecx
  771247:	52                                              	push   edx
  771248:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77124c:	e8 bf 46 c9 ff                                  	call   0x405910
  771251:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  771255:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  771259:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  77125d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  771261:	2b c8                                           	sub    ecx,eax
  771263:	83 f9 01                                        	cmp    ecx,0x1
  771266:	7e 0d                                           	jle    0x771275
  771268:	85 c0                                           	test   eax,eax
  77126a:	74 09                                           	je     0x771275
  77126c:	50                                              	push   eax
  77126d:	e8 6e 32 d7 ff                                  	call   0x4e44e0
  771272:	83 c4 04                                        	add    esp,0x4
  771275:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  771279:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  77127d:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  771281:	52                                              	push   edx
  771282:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  771286:	50                                              	push   eax
  771287:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  77128b:	51                                              	push   ecx
  77128c:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
  771290:	52                                              	push   edx
  771291:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  771295:	50                                              	push   eax
  771296:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  77129a:	51                                              	push   ecx
  77129b:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  77129f:	52                                              	push   edx
  7712a0:	57                                              	push   edi
  7712a1:	50                                              	push   eax
  7712a2:	51                                              	push   ecx
  7712a3:	e8 38 15 2b 00                                  	call   0xa227e0
  7712a8:	2b f7                                           	sub    esi,edi
  7712aa:	83 c4 28                                        	add    esp,0x28
  7712ad:	83 fe 01                                        	cmp    esi,0x1
  7712b0:	8b d8                                           	mov    ebx,eax
  7712b2:	7e 0d                                           	jle    0x7712c1
  7712b4:	85 ff                                           	test   edi,edi
  7712b6:	74 09                                           	je     0x7712c1
  7712b8:	57                                              	push   edi
  7712b9:	e8 22 32 d7 ff                                  	call   0x4e44e0
  7712be:	83 c4 04                                        	add    esp,0x4
  7712c1:	5f                                              	pop    edi
  7712c2:	5e                                              	pop    esi
  7712c3:	8b c3                                           	mov    eax,ebx
  7712c5:	5b                                              	pop    ebx
  7712c6:	83 c4 20                                        	add    esp,0x20
  7712c9:	c3                                              	ret
  7712ca:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  7712ce:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7712d2:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7712d6:	52                                              	push   edx
  7712d7:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  7712db:	50                                              	push   eax
  7712dc:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  7712e0:	51                                              	push   ecx
  7712e1:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  7712e5:	52                                              	push   edx
  7712e6:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  7712ea:	50                                              	push   eax
  7712eb:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  7712ef:	51                                              	push   ecx
  7712f0:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7712f4:	52                                              	push   edx
  7712f5:	6a 00                                           	push   0x0
  7712f7:	50                                              	push   eax
  7712f8:	51                                              	push   ecx
  7712f9:	e8 e2 14 2b 00                                  	call   0xa227e0
  7712fe:	83 c4 28                                        	add    esp,0x28
  771301:	83 c4 20                                        	add    esp,0x20
  771304:	c3                                              	ret
  771305:	cc                                              	int3
  771306:	cc                                              	int3
  771307:	cc                                              	int3
  771308:	cc                                              	int3
  771309:	cc                                              	int3
  77130a:	cc                                              	int3
  77130b:	cc                                              	int3
  77130c:	cc                                              	int3
  77130d:	cc                                              	int3
  77130e:	cc                                              	int3
  77130f:	cc                                              	int3
