# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce71e0 (ScriptCore.UserToolUtils::UserToolUtils_GetFeaturedMainMenuItemsListImpl)
Paired Ghidra pseudocode: 00CE71E0_ScriptCore_UserToolUtils_UserToolUtils_GetFeaturedMainMenuItemsListImpl.c
Window: [0x00ce71e0, 0x00ce7310) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce7310
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce71e0: 83 ec 38 53 56 8b 35 34 e0 1e 01 33 db 3b f3 0f
00ce71f0: 84 09 01 00 00 89 5c 24 08 e8 92 21 a8 ff 3b c3
00ce7200: 89 44 24 0c 0f 84 ea 00 00 00 57 8d 44 24 14 50
00ce7210: 8b ce 89 5c 24 18 89 5c 24 1c 89 5c 24 20 c7 44
00ce7220: 24 24 38 22 05 01 e8 b5 9f fa ff 8b 74 24 18 2b
00ce7230: 74 24 14 53 c1 fe 03 8d 0c f5 00 00 00 00 51 8b
00ce7240: 0d 64 c8 1c 01 e8 d6 fc 7f ff 8b f8 3b fb 0f 84
00ce7250: 8e 00 00 00 33 c0 3b f3 76 1f 8d 9b 00 00 00 00
00ce7260: 8b 4c 24 14 8b 14 c1 89 14 c7 8b 4c c1 04 89 4c
00ce7270: c7 04 83 c0 01 3b c6 72 e7 3b f3 c7 44 24 24 f4
00ce7280: a6 fb 00 66 89 5c 24 2c 66 89 5c 24 2e 8d 4c 24
00ce7290: 24 74 08 56 6a 08 57 6a 18 eb 06 53 6a 08 57 6a
00ce72a0: 20 6a 0c e8 18 e7 80 ff 8b 4c 24 10 8b 11 8b 52
00ce72b0: 50 8d 44 24 0c 50 8d 44 24 28 50 ff d2 8b 0d 64
00ce72c0: c8 1c 01 57 e8 a7 eb 7f ff f6 44 24 2c 04 c7 44
00ce72d0: 24 24 f4 a6 fb 00 74 0a 53 8d 4c 24 28 e8 7e e4
00ce72e0: 80 ff 8b 44 24 14 3b c3 5f 74 09 50 e8 ef d1 7f
00ce72f0: ff 83 c4 04 8b 44 24 08 5e 5b 83 c4 38 c3 5e 33
00ce7300: c0 5b 83 c4 38 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce71e0 <.text+0x8e61e0>:
  ce71e0:	83 ec 38                                        	sub    esp,0x38
  ce71e3:	53                                              	push   ebx
  ce71e4:	56                                              	push   esi
  ce71e5:	8b 35 34 e0 1e 01                               	mov    esi,DWORD PTR ds:0x11ee034
  ce71eb:	33 db                                           	xor    ebx,ebx
  ce71ed:	3b f3                                           	cmp    esi,ebx
  ce71ef:	0f 84 09 01 00 00                               	je     0xce72fe
  ce71f5:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  ce71f9:	e8 92 21 a8 ff                                  	call   0x769390
  ce71fe:	3b c3                                           	cmp    eax,ebx
  ce7200:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce7204:	0f 84 ea 00 00 00                               	je     0xce72f4
  ce720a:	57                                              	push   edi
  ce720b:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ce720f:	50                                              	push   eax
  ce7210:	8b ce                                           	mov    ecx,esi
  ce7212:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  ce7216:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  ce721a:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  ce721e:	c7 44 24 24 38 22 05 01                         	mov    DWORD PTR [esp+0x24],0x1052238
  ce7226:	e8 b5 9f fa ff                                  	call   0xc911e0
  ce722b:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ce722f:	2b 74 24 14                                     	sub    esi,DWORD PTR [esp+0x14]
  ce7233:	53                                              	push   ebx
  ce7234:	c1 fe 03                                        	sar    esi,0x3
  ce7237:	8d 0c f5 00 00 00 00                            	lea    ecx,[esi*8+0x0]
  ce723e:	51                                              	push   ecx
  ce723f:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce7245:	e8 d6 fc 7f ff                                  	call   0x4e6f20
  ce724a:	8b f8                                           	mov    edi,eax
  ce724c:	3b fb                                           	cmp    edi,ebx
  ce724e:	0f 84 8e 00 00 00                               	je     0xce72e2
  ce7254:	33 c0                                           	xor    eax,eax
  ce7256:	3b f3                                           	cmp    esi,ebx
  ce7258:	76 1f                                           	jbe    0xce7279
  ce725a:	8d 9b 00 00 00 00                               	lea    ebx,[ebx+0x0]
  ce7260:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce7264:	8b 14 c1                                        	mov    edx,DWORD PTR [ecx+eax*8]
  ce7267:	89 14 c7                                        	mov    DWORD PTR [edi+eax*8],edx
  ce726a:	8b 4c c1 04                                     	mov    ecx,DWORD PTR [ecx+eax*8+0x4]
  ce726e:	89 4c c7 04                                     	mov    DWORD PTR [edi+eax*8+0x4],ecx
  ce7272:	83 c0 01                                        	add    eax,0x1
  ce7275:	3b c6                                           	cmp    eax,esi
  ce7277:	72 e7                                           	jb     0xce7260
  ce7279:	3b f3                                           	cmp    esi,ebx
  ce727b:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce7283:	66 89 5c 24 2c                                  	mov    WORD PTR [esp+0x2c],bx
  ce7288:	66 89 5c 24 2e                                  	mov    WORD PTR [esp+0x2e],bx
  ce728d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  ce7291:	74 08                                           	je     0xce729b
  ce7293:	56                                              	push   esi
  ce7294:	6a 08                                           	push   0x8
  ce7296:	57                                              	push   edi
  ce7297:	6a 18                                           	push   0x18
  ce7299:	eb 06                                           	jmp    0xce72a1
  ce729b:	53                                              	push   ebx
  ce729c:	6a 08                                           	push   0x8
  ce729e:	57                                              	push   edi
  ce729f:	6a 20                                           	push   0x20
  ce72a1:	6a 0c                                           	push   0xc
  ce72a3:	e8 18 e7 80 ff                                  	call   0x4f59c0
  ce72a8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce72ac:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  ce72ae:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce72b1:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce72b5:	50                                              	push   eax
  ce72b6:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  ce72ba:	50                                              	push   eax
  ce72bb:	ff d2                                           	call   edx
  ce72bd:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce72c3:	57                                              	push   edi
  ce72c4:	e8 a7 eb 7f ff                                  	call   0x4e5e70
  ce72c9:	f6 44 24 2c 04                                  	test   BYTE PTR [esp+0x2c],0x4
  ce72ce:	c7 44 24 24 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x24],0xfba6f4
  ce72d6:	74 0a                                           	je     0xce72e2
  ce72d8:	53                                              	push   ebx
  ce72d9:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  ce72dd:	e8 7e e4 80 ff                                  	call   0x4f5760
  ce72e2:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  ce72e6:	3b c3                                           	cmp    eax,ebx
  ce72e8:	5f                                              	pop    edi
  ce72e9:	74 09                                           	je     0xce72f4
  ce72eb:	50                                              	push   eax
  ce72ec:	e8 ef d1 7f ff                                  	call   0x4e44e0
  ce72f1:	83 c4 04                                        	add    esp,0x4
  ce72f4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce72f8:	5e                                              	pop    esi
  ce72f9:	5b                                              	pop    ebx
  ce72fa:	83 c4 38                                        	add    esp,0x38
  ce72fd:	c3                                              	ret
  ce72fe:	5e                                              	pop    esi
  ce72ff:	33 c0                                           	xor    eax,eax
  ce7301:	5b                                              	pop    ebx
  ce7302:	83 c4 38                                        	add    esp,0x38
  ce7305:	c3                                              	ret
  ce7306:	cc                                              	int3
  ce7307:	cc                                              	int3
  ce7308:	cc                                              	int3
  ce7309:	cc                                              	int3
  ce730a:	cc                                              	int3
  ce730b:	cc                                              	int3
  ce730c:	cc                                              	int3
  ce730d:	cc                                              	int3
  ce730e:	cc                                              	int3
  ce730f:	cc                                              	int3
