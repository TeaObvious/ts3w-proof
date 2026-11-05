TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: ScriptCore.UIManager::UIManager_FrameDrawableGenericImpl.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; consult the machine instructions.

TS3W.exe PC1.67 registered FrameDrawable dispatch — QUALIFIED original-byte CFG
Paired actual Ghidra decompilation: 0077D320_ScriptCore_UIManager_UIManager_FrameDrawableGenericImpl.c
Current Ghidra body singleton[[0077D320,0077D320]]; zero owned Listing instructions.
No function/instruction definition or body repair is inferred from this export.
Originalbyte code candidate:[0077D320,0077D39C),124bytes40instructions.
Required branch table:[0077D39C,0077D3AC),16bytes4DWORDs; no instructions here.
Padding:[0077D3AC,0077D3B0),4CCbytes. Legacy144byte window already covered all three.
Separate root live-memory capture equals all144 pristine-PE bytes.
No original runtime execution claimed; external host/queried-interface targets open.

ORIGINAL BYTES (code,data,padding separated above)
0077D320: e8 6b c0 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077D330: ff 81 fa 00 00 00 30 75 60 8b 10 51 8b c8 8b 82
0077D340: cc 00 00 00 ff d0 85 c0 74 4f 8b 10 8b c8 8b 42
0077D350: 0c 68 ac 54 0d 03 ff d0 85 c0 74 3d 8b 4c 24 08
0077D360: 83 f9 03 77 34 ff 24 8d 9c d3 77 00 8b 4c 24 0c
0077D370: 8b 44 c8 0c c3 8b 54 24 10 8b 4c 24 0c 89 54 c8
0077D380: 0c 33 c0 c3 8b 54 24 0c 8b 44 d0 10 c3 8b 4c 24
0077D390: 10 8b 54 24 0c 89 4c d0 10 33 c0 c3 6c d3 77 00
0077D3A0: 75 d3 77 00 84 d3 77 00 8d d3 77 00 cc cc cc cc

CURRENT SAVED GHIDRA LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: ScriptCore.UIManager::UIManager_FrameDrawableGenericImpl
Entry Point: 0077d320


Total instructions: 0

INDEPENDENT PE CODE DISASSEMBLY (no data decoding)
  77d320:	e8 6b c0 fe ff                                  	call   0x769390
  77d325:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d329:	8b d1                                           	mov    edx,ecx
  77d32b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77d331:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77d337:	75 60                                           	jne    0x77d399
  77d339:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d33b:	51                                              	push   ecx
  77d33c:	8b c8                                           	mov    ecx,eax
  77d33e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77d344:	ff d0                                           	call   eax
  77d346:	85 c0                                           	test   eax,eax
  77d348:	74 4f                                           	je     0x77d399
  77d34a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d34c:	8b c8                                           	mov    ecx,eax
  77d34e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d351:	68 ac 54 0d 03                                  	push   0x30d54ac
  77d356:	ff d0                                           	call   eax
  77d358:	85 c0                                           	test   eax,eax
  77d35a:	74 3d                                           	je     0x77d399
  77d35c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77d360:	83 f9 03                                        	cmp    ecx,0x3
  77d363:	77 34                                           	ja     0x77d399
  77d365:	ff 24 8d 9c d3 77 00                            	jmp    DWORD PTR [ecx*4+0x77d39c]
  77d36c:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77d370:	8b 44 c8 0c                                     	mov    eax,DWORD PTR [eax+ecx*8+0xc]
  77d374:	c3                                              	ret
  77d375:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77d379:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77d37d:	89 54 c8 0c                                     	mov    DWORD PTR [eax+ecx*8+0xc],edx
  77d381:	33 c0                                           	xor    eax,eax
  77d383:	c3                                              	ret
  77d384:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77d388:	8b 44 d0 10                                     	mov    eax,DWORD PTR [eax+edx*8+0x10]
  77d38c:	c3                                              	ret
  77d38d:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77d391:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  77d395:	89 4c d0 10                                     	mov    DWORD PTR [eax+edx*8+0x10],ecx
  77d399:	33 c0                                           	xor    eax,eax
  77d39b:	c3                                              	ret

ORIGINAL JUMP TABLE
0077D39C: DWORD 0077D36C ; funcID0
0077D3A0: DWORD 0077D375 ; funcID1
0077D3A4: DWORD 0077D384 ; funcID2
0077D3A8: DWORD 0077D38D ; funcID3
