# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceb1e0 (ScriptCore.UserToolUtils::UserToolUtils_CheckDeleteObjectImpl)
Paired Ghidra pseudocode: 00CEB1E0_ScriptCore_UserToolUtils_UserToolUtils_CheckDeleteObjectImpl.c
Window: [0x00ceb1e0, 0x00ceb400) (544 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceb400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceb1e0: 55 8b ec 83 e4 f0 81 ec 0c 01 00 00 56 c7 44 24
00ceb1f0: 08 00 00 00 00 e8 76 c3 c4 ff 85 c0 0f 84 e6 01
00ceb200: 00 00 8b 4d 0c 8b 55 08 51 52 8b c8 e8 6f cd c4
00ceb210: ff 8b f0 85 f6 0f 84 cd 01 00 00 8d 4c 24 50 e8
00ceb220: 1c c5 de ff 56 e8 26 8b 82 ff 6a 00 6a 00 84 c0
00ceb230: 6a 00 0f 94 c0 6a 00 88 44 24 20 8b 54 24 20 8d
00ceb240: 4c 24 64 51 52 56 e8 45 24 fe ff 83 c4 20 84 c0
00ceb250: 74 33 56 e8 b8 30 01 00 83 c4 04 84 c0 74 26 a1
00ceb260: f8 a0 1e 01 85 46 2c 0f 84 37 01 00 00 8b 46 08
00ceb270: 8b 76 0c 56 50 e8 b6 4a aa ff 83 c4 08 84 c0 0f
00ceb280: 85 1f 01 00 00 68 28 18 08 01 6a ff 8d 4c 24 18
00ceb290: 68 00 18 08 01 51 e8 b5 88 80 ff 83 c4 10 50 8d
00ceb2a0: 4c 24 24 e8 48 db 71 ff 8b 54 24 18 8b 44 24 10
00ceb2b0: 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8
00ceb2c0: 1c 92 7f ff 83 c4 04 8d 4c 24 50 e8 40 bc de ff
00ceb2d0: 84 c0 74 53 8d 84 24 d0 00 00 00 50 8d 4c 24 54
00ceb2e0: e8 3b c2 de ff 83 bc 24 d0 00 00 00 61 75 2c 68
00ceb2f0: 28 18 08 01 6a ff 8d 4c 24 18 68 d4 17 08 01 51
00ceb300: e8 4b 88 80 ff 83 c4 10 50 8d 4c 24 24 e8 3e db
00ceb310: 71 ff 8d 4c 24 10 e8 d5 45 80 ff 8d 8c 24 d0 00
00ceb320: 00 00 e8 a9 bd de ff 6a 01 6a 10 8d 54 24 28 52
00ceb330: 6a 09 6a 13 8d 4c 24 44 c7 44 24 44 6c 88 00 01
00ceb340: 66 c7 44 24 4e 13 00 66 c7 44 24 4c 0b 00 e8 6d
00ceb350: a6 80 ff e8 38 e0 a7 ff 8b 10 8b 52 50 8d 4c 24
00ceb360: 08 51 8d 4c 24 34 51 8b c8 ff d2 f6 44 24 38 04
00ceb370: c7 44 24 30 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 34
00ceb380: e8 db a3 80 ff 8b 4c 24 28 8b 44 24 20 2b c8 83
00ceb390: e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 3f 91 7f
00ceb3a0: ff 83 c4 04 8b 94 24 b0 00 00 00 52 8d 8c 24 a8
00ceb3b0: 00 00 00 e8 08 74 d6 ff 8b 84 24 94 00 00 00 50
00ceb3c0: 8d 8c 24 8c 00 00 00 e8 f4 73 d6 ff 8b 4c 24 78
00ceb3d0: 51 8d 4c 24 70 e8 e6 73 d6 ff 8b 54 24 5c 52 8d
00ceb3e0: 4c 24 54 e8 98 73 d6 ff 8b 44 24 08 5e 8b e5 5d
00ceb3f0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ceb1e0 <.text+0x8ea1e0>:
  ceb1e0:	55                                              	push   ebp
  ceb1e1:	8b ec                                           	mov    ebp,esp
  ceb1e3:	83 e4 f0                                        	and    esp,0xfffffff0
  ceb1e6:	81 ec 0c 01 00 00                               	sub    esp,0x10c
  ceb1ec:	56                                              	push   esi
  ceb1ed:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  ceb1f5:	e8 76 c3 c4 ff                                  	call   0x937570
  ceb1fa:	85 c0                                           	test   eax,eax
  ceb1fc:	0f 84 e6 01 00 00                               	je     0xceb3e8
  ceb202:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  ceb205:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  ceb208:	51                                              	push   ecx
  ceb209:	52                                              	push   edx
  ceb20a:	8b c8                                           	mov    ecx,eax
  ceb20c:	e8 6f cd c4 ff                                  	call   0x937f80
  ceb211:	8b f0                                           	mov    esi,eax
  ceb213:	85 f6                                           	test   esi,esi
  ceb215:	0f 84 cd 01 00 00                               	je     0xceb3e8
  ceb21b:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  ceb21f:	e8 1c c5 de ff                                  	call   0xad7740
  ceb224:	56                                              	push   esi
  ceb225:	e8 26 8b 82 ff                                  	call   0x513d50
  ceb22a:	6a 00                                           	push   0x0
  ceb22c:	6a 00                                           	push   0x0
  ceb22e:	84 c0                                           	test   al,al
  ceb230:	6a 00                                           	push   0x0
  ceb232:	0f 94 c0                                        	sete   al
  ceb235:	6a 00                                           	push   0x0
  ceb237:	88 44 24 20                                     	mov    BYTE PTR [esp+0x20],al
  ceb23b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  ceb23f:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  ceb243:	51                                              	push   ecx
  ceb244:	52                                              	push   edx
  ceb245:	56                                              	push   esi
  ceb246:	e8 45 24 fe ff                                  	call   0xccd690
  ceb24b:	83 c4 20                                        	add    esp,0x20
  ceb24e:	84 c0                                           	test   al,al
  ceb250:	74 33                                           	je     0xceb285
  ceb252:	56                                              	push   esi
  ceb253:	e8 b8 30 01 00                                  	call   0xcfe310
  ceb258:	83 c4 04                                        	add    esp,0x4
  ceb25b:	84 c0                                           	test   al,al
  ceb25d:	74 26                                           	je     0xceb285
  ceb25f:	a1 f8 a0 1e 01                                  	mov    eax,ds:0x11ea0f8
  ceb264:	85 46 2c                                        	test   DWORD PTR [esi+0x2c],eax
  ceb267:	0f 84 37 01 00 00                               	je     0xceb3a4
  ceb26d:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  ceb270:	8b 76 0c                                        	mov    esi,DWORD PTR [esi+0xc]
  ceb273:	56                                              	push   esi
  ceb274:	50                                              	push   eax
  ceb275:	e8 b6 4a aa ff                                  	call   0x78fd30
  ceb27a:	83 c4 08                                        	add    esp,0x8
  ceb27d:	84 c0                                           	test   al,al
  ceb27f:	0f 85 1f 01 00 00                               	jne    0xceb3a4
  ceb285:	68 28 18 08 01                                  	push   0x1081828
  ceb28a:	6a ff                                           	push   0xffffffff
  ceb28c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ceb290:	68 00 18 08 01                                  	push   0x1081800
  ceb295:	51                                              	push   ecx
  ceb296:	e8 b5 88 80 ff                                  	call   0x4f3b50
  ceb29b:	83 c4 10                                        	add    esp,0x10
  ceb29e:	50                                              	push   eax
  ceb29f:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ceb2a3:	e8 48 db 71 ff                                  	call   0x408df0
  ceb2a8:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ceb2ac:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ceb2b0:	2b d0                                           	sub    edx,eax
  ceb2b2:	83 e2 fe                                        	and    edx,0xfffffffe
  ceb2b5:	83 fa 02                                        	cmp    edx,0x2
  ceb2b8:	7e 0d                                           	jle    0xceb2c7
  ceb2ba:	85 c0                                           	test   eax,eax
  ceb2bc:	74 09                                           	je     0xceb2c7
  ceb2be:	50                                              	push   eax
  ceb2bf:	e8 1c 92 7f ff                                  	call   0x4e44e0
  ceb2c4:	83 c4 04                                        	add    esp,0x4
  ceb2c7:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
  ceb2cb:	e8 40 bc de ff                                  	call   0xad6f10
  ceb2d0:	84 c0                                           	test   al,al
  ceb2d2:	74 53                                           	je     0xceb327
  ceb2d4:	8d 84 24 d0 00 00 00                            	lea    eax,[esp+0xd0]
  ceb2db:	50                                              	push   eax
  ceb2dc:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ceb2e0:	e8 3b c2 de ff                                  	call   0xad7520
  ceb2e5:	83 bc 24 d0 00 00 00 61                         	cmp    DWORD PTR [esp+0xd0],0x61
  ceb2ed:	75 2c                                           	jne    0xceb31b
  ceb2ef:	68 28 18 08 01                                  	push   0x1081828
  ceb2f4:	6a ff                                           	push   0xffffffff
  ceb2f6:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  ceb2fa:	68 d4 17 08 01                                  	push   0x10817d4
  ceb2ff:	51                                              	push   ecx
  ceb300:	e8 4b 88 80 ff                                  	call   0x4f3b50
  ceb305:	83 c4 10                                        	add    esp,0x10
  ceb308:	50                                              	push   eax
  ceb309:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ceb30d:	e8 3e db 71 ff                                  	call   0x408e50
  ceb312:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ceb316:	e8 d5 45 80 ff                                  	call   0x4ef8f0
  ceb31b:	8d 8c 24 d0 00 00 00                            	lea    ecx,[esp+0xd0]
  ceb322:	e8 a9 bd de ff                                  	call   0xad70d0
  ceb327:	6a 01                                           	push   0x1
  ceb329:	6a 10                                           	push   0x10
  ceb32b:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  ceb32f:	52                                              	push   edx
  ceb330:	6a 09                                           	push   0x9
  ceb332:	6a 13                                           	push   0x13
  ceb334:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ceb338:	c7 44 24 44 6c 88 00 01                         	mov    DWORD PTR [esp+0x44],0x100886c
  ceb340:	66 c7 44 24 4e 13 00                            	mov    WORD PTR [esp+0x4e],0x13
  ceb347:	66 c7 44 24 4c 0b 00                            	mov    WORD PTR [esp+0x4c],0xb
  ceb34e:	e8 6d a6 80 ff                                  	call   0x4f59c0
  ceb353:	e8 38 e0 a7 ff                                  	call   0x769390
  ceb358:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ceb35a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ceb35d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  ceb361:	51                                              	push   ecx
  ceb362:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ceb366:	51                                              	push   ecx
  ceb367:	8b c8                                           	mov    ecx,eax
  ceb369:	ff d2                                           	call   edx
  ceb36b:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ceb370:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  ceb378:	74 0b                                           	je     0xceb385
  ceb37a:	6a 00                                           	push   0x0
  ceb37c:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ceb380:	e8 db a3 80 ff                                  	call   0x4f5760
  ceb385:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ceb389:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ceb38d:	2b c8                                           	sub    ecx,eax
  ceb38f:	83 e1 fe                                        	and    ecx,0xfffffffe
  ceb392:	83 f9 02                                        	cmp    ecx,0x2
  ceb395:	7e 0d                                           	jle    0xceb3a4
  ceb397:	85 c0                                           	test   eax,eax
  ceb399:	74 09                                           	je     0xceb3a4
  ceb39b:	50                                              	push   eax
  ceb39c:	e8 3f 91 7f ff                                  	call   0x4e44e0
  ceb3a1:	83 c4 04                                        	add    esp,0x4
  ceb3a4:	8b 94 24 b0 00 00 00                            	mov    edx,DWORD PTR [esp+0xb0]
  ceb3ab:	52                                              	push   edx
  ceb3ac:	8d 8c 24 a8 00 00 00                            	lea    ecx,[esp+0xa8]
  ceb3b3:	e8 08 74 d6 ff                                  	call   0xa527c0
  ceb3b8:	8b 84 24 94 00 00 00                            	mov    eax,DWORD PTR [esp+0x94]
  ceb3bf:	50                                              	push   eax
  ceb3c0:	8d 8c 24 8c 00 00 00                            	lea    ecx,[esp+0x8c]
  ceb3c7:	e8 f4 73 d6 ff                                  	call   0xa527c0
  ceb3cc:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
  ceb3d0:	51                                              	push   ecx
  ceb3d1:	8d 4c 24 70                                     	lea    ecx,[esp+0x70]
  ceb3d5:	e8 e6 73 d6 ff                                  	call   0xa527c0
  ceb3da:	8b 54 24 5c                                     	mov    edx,DWORD PTR [esp+0x5c]
  ceb3de:	52                                              	push   edx
  ceb3df:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  ceb3e3:	e8 98 73 d6 ff                                  	call   0xa52780
  ceb3e8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ceb3ec:	5e                                              	pop    esi
  ceb3ed:	8b e5                                           	mov    esp,ebp
  ceb3ef:	5d                                              	pop    ebp
  ceb3f0:	c3                                              	ret
  ceb3f1:	cc                                              	int3
  ceb3f2:	cc                                              	int3
  ceb3f3:	cc                                              	int3
  ceb3f4:	cc                                              	int3
  ceb3f5:	cc                                              	int3
  ceb3f6:	cc                                              	int3
  ceb3f7:	cc                                              	int3
  ceb3f8:	cc                                              	int3
  ceb3f9:	cc                                              	int3
  ceb3fa:	cc                                              	int3
  ceb3fb:	cc                                              	int3
  ceb3fc:	cc                                              	int3
  ceb3fd:	cc                                              	int3
  ceb3fe:	cc                                              	int3
  ceb3ff:	cc                                              	int3
