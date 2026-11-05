# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00cea5a0 (ScriptCore.UserToolUtils::UserToolUtils_GetCollectionListImpl)
Paired Ghidra pseudocode: 00CEA5A0_ScriptCore_UserToolUtils_UserToolUtils_GetCollectionListImpl.c
Window: [0x00cea5a0, 0x00cea670) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00cea670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00cea5a0: 83 ec 34 56 8b 35 c8 9a 1d 01 85 f6 0f 84 b6 00
00cea5b0: 00 00 e8 d9 ed a7 ff b8 54 8e 1c 01 89 44 24 08
00cea5c0: 89 44 24 0c 8d 44 24 08 50 8b ce c7 44 24 18 dc
00cea5d0: 16 08 01 c7 44 24 14 56 8e 1c 01 e8 e0 5a af ff
00cea5e0: 6a 01 6a 10 8d 4c 24 10 51 6a 09 6a 13 8d 4c 24
00cea5f0: 2c c7 44 24 2c 6c 88 00 01 66 c7 44 24 36 13 00
00cea600: 66 c7 44 24 34 0b 00 e8 b4 b3 80 ff e8 7f ed a7
00cea610: ff 8b 10 8b 52 50 8d 4c 24 04 51 8d 4c 24 1c 51
00cea620: 8b c8 ff d2 f6 44 24 20 04 8b 74 24 04 c7 44 24
00cea630: 18 f4 a6 fb 00 74 0b 6a 00 8d 4c 24 1c e8 1e b1
00cea640: 80 ff 8b 4c 24 10 8b 44 24 08 2b c8 83 e1 fe 83
00cea650: f9 02 7e 0d 85 c0 74 09 50 e8 82 9e 7f ff 83 c4
00cea660: 04 8b c6 5e 83 c4 34 c3 33 c0 5e 83 c4 34 c3 cc

LINEAR DISASSEMBLY
00cea5a0 <.text+0x8e95a0>:
  cea5a0:	83 ec 34                                        	sub    esp,0x34
  cea5a3:	56                                              	push   esi
  cea5a4:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  cea5aa:	85 f6                                           	test   esi,esi
  cea5ac:	0f 84 b6 00 00 00                               	je     0xcea668
  cea5b2:	e8 d9 ed a7 ff                                  	call   0x769390
  cea5b7:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  cea5bc:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  cea5c0:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  cea5c4:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  cea5c8:	50                                              	push   eax
  cea5c9:	8b ce                                           	mov    ecx,esi
  cea5cb:	c7 44 24 18 dc 16 08 01                         	mov    DWORD PTR [esp+0x18],0x10816dc
  cea5d3:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  cea5db:	e8 e0 5a af ff                                  	call   0x7e00c0
  cea5e0:	6a 01                                           	push   0x1
  cea5e2:	6a 10                                           	push   0x10
  cea5e4:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  cea5e8:	51                                              	push   ecx
  cea5e9:	6a 09                                           	push   0x9
  cea5eb:	6a 13                                           	push   0x13
  cea5ed:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  cea5f1:	c7 44 24 2c 6c 88 00 01                         	mov    DWORD PTR [esp+0x2c],0x100886c
  cea5f9:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
  cea600:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
  cea607:	e8 b4 b3 80 ff                                  	call   0x4f59c0
  cea60c:	e8 7f ed a7 ff                                  	call   0x769390
  cea611:	8b 10                                           	mov    edx,DWORD PTR [eax]
  cea613:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  cea616:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  cea61a:	51                                              	push   ecx
  cea61b:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  cea61f:	51                                              	push   ecx
  cea620:	8b c8                                           	mov    ecx,eax
  cea622:	ff d2                                           	call   edx
  cea624:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
  cea629:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
  cea62d:	c7 44 24 18 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x18],0xfba6f4
  cea635:	74 0b                                           	je     0xcea642
  cea637:	6a 00                                           	push   0x0
  cea639:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  cea63d:	e8 1e b1 80 ff                                  	call   0x4f5760
  cea642:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  cea646:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  cea64a:	2b c8                                           	sub    ecx,eax
  cea64c:	83 e1 fe                                        	and    ecx,0xfffffffe
  cea64f:	83 f9 02                                        	cmp    ecx,0x2
  cea652:	7e 0d                                           	jle    0xcea661
  cea654:	85 c0                                           	test   eax,eax
  cea656:	74 09                                           	je     0xcea661
  cea658:	50                                              	push   eax
  cea659:	e8 82 9e 7f ff                                  	call   0x4e44e0
  cea65e:	83 c4 04                                        	add    esp,0x4
  cea661:	8b c6                                           	mov    eax,esi
  cea663:	5e                                              	pop    esi
  cea664:	83 c4 34                                        	add    esp,0x34
  cea667:	c3                                              	ret
  cea668:	33 c0                                           	xor    eax,eax
  cea66a:	5e                                              	pop    esi
  cea66b:	83 c4 34                                        	add    esp,0x34
  cea66e:	c3                                              	ret
  cea66f:	cc                                              	int3
