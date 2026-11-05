# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00747420 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_OverrideInGameBrowserUrl)
Paired Ghidra pseudocode: 00747420_ScriptCore_OnlineFeatures_OnlineFeaturesHost_OverrideInGameBrowserUrl.c
Window: [0x00747420, 0x007474c0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x007474c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00747420: 83 ec 10 e8 68 1f 02 00 85 c0 0f 84 83 00 00 00
00747430: 8b 4c 24 14 85 c9 74 7b 8b 10 56 51 8b c8 8b 42
00747440: 58 ff d0 50 8d 4c 24 08 c7 44 24 08 00 00 00 00
00747450: c7 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00
00747460: c7 44 24 14 04 3c 00 01 e8 23 41 cc ff 68 10 b2
00747470: 1e 01 ff 15 2c 61 f9 00 8b 4c 24 08 8b 74 24 04
00747480: 51 56 b9 cc 28 18 01 e8 d4 18 cc ff 68 10 b2 1e
00747490: 01 ff 15 30 61 f9 00 8b 54 24 0c 2b d6 83 e2 fe
007474a0: 83 fa 02 7e 0d 85 f6 74 09 56 e8 31 d0 d9 ff 83
007474b0: c4 04 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00747420 <.text+0x346420>:
  747420:	83 ec 10                                        	sub    esp,0x10
  747423:	e8 68 1f 02 00                                  	call   0x769390
  747428:	85 c0                                           	test   eax,eax
  74742a:	0f 84 83 00 00 00                               	je     0x7474b3
  747430:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  747434:	85 c9                                           	test   ecx,ecx
  747436:	74 7b                                           	je     0x7474b3
  747438:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74743a:	56                                              	push   esi
  74743b:	51                                              	push   ecx
  74743c:	8b c8                                           	mov    ecx,eax
  74743e:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  747441:	ff d0                                           	call   eax
  747443:	50                                              	push   eax
  747444:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  747448:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  747450:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  747458:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  747460:	c7 44 24 14 04 3c 00 01                         	mov    DWORD PTR [esp+0x14],0x1003c04
  747468:	e8 23 41 cc ff                                  	call   0x40b590
  74746d:	68 10 b2 1e 01                                  	push   0x11eb210
  747472:	ff 15 2c 61 f9 00                               	call   DWORD PTR ds:0xf9612c
  747478:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74747c:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  747480:	51                                              	push   ecx
  747481:	56                                              	push   esi
  747482:	b9 cc 28 18 01                                  	mov    ecx,0x11828cc
  747487:	e8 d4 18 cc ff                                  	call   0x408d60
  74748c:	68 10 b2 1e 01                                  	push   0x11eb210
  747491:	ff 15 30 61 f9 00                               	call   DWORD PTR ds:0xf96130
  747497:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  74749b:	2b d6                                           	sub    edx,esi
  74749d:	83 e2 fe                                        	and    edx,0xfffffffe
  7474a0:	83 fa 02                                        	cmp    edx,0x2
  7474a3:	7e 0d                                           	jle    0x7474b2
  7474a5:	85 f6                                           	test   esi,esi
  7474a7:	74 09                                           	je     0x7474b2
  7474a9:	56                                              	push   esi
  7474aa:	e8 31 d0 d9 ff                                  	call   0x4e44e0
  7474af:	83 c4 04                                        	add    esp,0x4
  7474b2:	5e                                              	pop    esi
  7474b3:	83 c4 10                                        	add    esp,0x10
  7474b6:	c3                                              	ret
  7474b7:	cc                                              	int3
  7474b8:	cc                                              	int3
  7474b9:	cc                                              	int3
  7474ba:	cc                                              	int3
  7474bb:	cc                                              	int3
  7474bc:	cc                                              	int3
  7474bd:	cc                                              	int3
  7474be:	cc                                              	int3
  7474bf:	cc                                              	int3
