# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073c5d0 (ScriptCore.AutomationUtils::Automation_GetNextScript)
Paired Ghidra pseudocode: 0073C5D0_ScriptCore_AutomationUtils_Automation_GetNextScript.c
Window: [0x0073c5d0, 0x0073c6d0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073c6d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073c5d0: a1 38 4e 1d 01 81 ec 34 04 00 00 56 8b 70 04 8b
0073c5e0: 16 8b 42 64 6a 00 8b ce ff d0 84 c0 0f 84 cb 00
0073c5f0: 00 00 8b 56 7c 8b 52 40 6a 00 8d 4e 7c 68 00 04
0073c600: 00 00 8d 44 24 40 50 ff d2 85 c0 0f 8e ac 00 00
0073c610: 00 68 04 9a fb 00 c6 44 04 3c 00 68 00 04 00 00
0073c620: 8d 44 24 40 50 8d 4c 24 14 51 e8 21 75 db ff 83
0073c630: c4 10 6a 01 6a 10 8d 54 24 10 52 6a 09 6a 13 8d
0073c640: 4c 24 2c c7 44 24 2c 6c 88 00 01 66 c7 44 24 36
0073c650: 13 00 66 c7 44 24 34 0b 00 e8 62 93 db ff e8 2d
0073c660: cd 02 00 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24
0073c670: 1c 51 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7
0073c680: 44 24 18 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 1c e8
0073c690: cc 90 db ff 8b 4c 24 10 8b 44 24 08 2b c8 83 e1
0073c6a0: fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 30 7e da ff
0073c6b0: 83 c4 04 8b c6 5e 81 c4 34 04 00 00 c3 33 c0 5e
0073c6c0: 81 c4 34 04 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073c5d0 <.text+0x33b5d0>:
  73c5d0:	a1 38 4e 1d 01                                  	mov    eax,ds:0x11d4e38
  73c5d5:	81 ec 34 04 00 00                               	sub    esp,0x434
  73c5db:	56                                              	push   esi
  73c5dc:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  73c5df:	8b 16                                           	mov    edx,DWORD PTR [esi]
  73c5e1:	8b 42 64                                        	mov    eax,DWORD PTR [edx+0x64]
  73c5e4:	6a 00                                           	push   0x0
  73c5e6:	8b ce                                           	mov    ecx,esi
  73c5e8:	ff d0                                           	call   eax
  73c5ea:	84 c0                                           	test   al,al
  73c5ec:	0f 84 cb 00 00 00                               	je     0x73c6bd
  73c5f2:	8b 56 7c                                        	mov    edx,DWORD PTR [esi+0x7c]
  73c5f5:	8b 52 40                                        	mov    edx,DWORD PTR [edx+0x40]
  73c5f8:	6a 00                                           	push   0x0
  73c5fa:	8d 4e 7c                                        	lea    ecx,[esi+0x7c]
  73c5fd:	68 00 04 00 00                                  	push   0x400
  73c602:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  73c606:	50                                              	push   eax
  73c607:	ff d2                                           	call   edx
  73c609:	85 c0                                           	test   eax,eax
  73c60b:	0f 8e ac 00 00 00                               	jle    0x73c6bd
  73c611:	68 04 9a fb 00                                  	push   0xfb9a04
  73c616:	c6 44 04 3c 00                                  	mov    BYTE PTR [esp+eax*1+0x3c],0x0
  73c61b:	68 00 04 00 00                                  	push   0x400
  73c620:	8d 44 24 40                                     	lea    eax,[esp+0x40]
  73c624:	50                                              	push   eax
  73c625:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  73c629:	51                                              	push   ecx
  73c62a:	e8 21 75 db ff                                  	call   0x4f3b50
  73c62f:	83 c4 10                                        	add    esp,0x10
  73c632:	6a 01                                           	push   0x1
  73c634:	6a 10                                           	push   0x10
  73c636:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  73c63a:	52                                              	push   edx
  73c63b:	6a 09                                           	push   0x9
  73c63d:	6a 13                                           	push   0x13
  73c63f:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  73c643:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  73c64b:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  73c652:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  73c659:	e8 62 93 db ff                                  	call   0x4f59c0
  73c65e:	e8 2d cd 02 00                                  	call   0x769390
  73c663:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73c665:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  73c668:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  73c66c:	51                                              	push   ecx
  73c66d:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  73c671:	51                                              	push   ecx
  73c672:	8b c8                                           	mov    ecx,eax
  73c674:	ff d2                                           	call   edx
  73c676:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  73c67b:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  73c67f:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  73c687:	74 0b                                           	je     0x73c694
  73c689:	6a 00                                           	push   0x0
  73c68b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  73c68f:	e8 cc 90 db ff                                  	call   0x4f5760
  73c694:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  73c698:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  73c69c:	2b c8                                           	sub    ecx,eax
  73c69e:	83 e1 fe                                        	and    ecx,0xfffffffe
  73c6a1:	83 f9 02                                        	cmp    ecx,0x2
  73c6a4:	7e 0d                                           	jle    0x73c6b3
  73c6a6:	85 c0                                           	test   eax,eax
  73c6a8:	74 09                                           	je     0x73c6b3
  73c6aa:	50                                              	push   eax
  73c6ab:	e8 30 7e da ff                                  	call   0x4e44e0
  73c6b0:	83 c4 04                                        	add    esp,0x4
  73c6b3:	8b c6                                           	mov    eax,esi
  73c6b5:	5e                                              	pop    esi
  73c6b6:	81 c4 34 04 00 00                               	add    esp,0x434
  73c6bc:	c3                                              	ret
  73c6bd:	33 c0                                           	xor    eax,eax
  73c6bf:	5e                                              	pop    esi
  73c6c0:	81 c4 34 04 00 00                               	add    esp,0x434
  73c6c6:	c3                                              	ret
  73c6c7:	cc                                              	int3
  73c6c8:	cc                                              	int3
  73c6c9:	cc                                              	int3
  73c6ca:	cc                                              	int3
  73c6cb:	cc                                              	int3
  73c6cc:	cc                                              	int3
  73c6cd:	cc                                              	int3
  73c6ce:	cc                                              	int3
  73c6cf:	cc                                              	int3
