# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007854d0 (ScriptCore.World::World_GetLotLocationAtFloorImpl)
Paired Ghidra pseudocode: 007854D0_ScriptCore_World_World_GetLotLocationAtFloorImpl.c
Window: [0x007854d0, 0x007855f0) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x007855f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007854d0: 55 8b ec 83 e4 f0 83 ec 34 8b 0d c4 db 1e 01 f3
007854e0: 0f 10 05 18 b2 fa 00 53 33 db 3b cb 56 57 8b 7d
007854f0: 14 89 5c 24 1c f3 0f 11 44 24 24 f3 0f 11 44 24
00785500: 28 89 5c 24 2c 0f 84 87 00 00 00 d9 45 10 83 ec
00785510: 08 d9 5c 24 04 d9 45 08 d9 1c 24 e8 b0 32 4e 00
00785520: 8b f0 85 f6 74 6c f3 0f 10 4d 10 f3 0f 10 45 08
00785530: 8b 46 4c 8b 5e 48 8d 4c 24 24 f3 0f 11 4c 24 38
00785540: f3 0f 10 4d 0c 51 8d 54 24 34 f3 0f 11 44 24 40
00785550: f3 0f 11 4c 24 38 f3 0f 11 44 24 34 0f 28 44 24
00785560: 34 52 56 89 44 24 28 0f 29 44 24 3c e8 0f 74 35
00785570: 00 8b 8e 98 02 00 00 83 c4 0c 85 c9 74 14 8b 45
00785580: 18 6a 00 50 8d 54 24 2c 52 e8 32 2d 3c 00 66 89
00785590: 47 0a d9 44 24 24 db 54 24 14 db 44 24 14 de e9
007855a0: d9 5c 24 10 81 7c 24 10 01 00 00 80 8b 44 24 14
007855b0: 83 d0 ff 89 07 d9 44 24 28 db 54 24 10 db 44 24
007855c0: 10 de e9 d9 5c 24 14 81 7c 24 14 01 00 00 80 8b
007855d0: 44 24 10 83 d0 ff 8b 54 24 1c 89 47 04 8a 44 24
007855e0: 2c 88 47 08 5f 5e 8b c3 5b 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
007854d0 <.text+0x3844d0>:
  7854d0:	55                                              	push   ebp
  7854d1:	8b ec                                           	mov    ebp,esp
  7854d3:	83 e4 f0                                        	and    esp,0xfffffff0
  7854d6:	83 ec 34                                        	sub    esp,0x34
  7854d9:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7854df:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  7854e7:	53                                              	push   ebx
  7854e8:	33 db                                           	xor    ebx,ebx
  7854ea:	3b cb                                           	cmp    ecx,ebx
  7854ec:	56                                              	push   esi
  7854ed:	57                                              	push   edi
  7854ee:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  7854f1:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  7854f5:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  7854fb:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  785501:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  785505:	0f 84 87 00 00 00                               	je     0x785592
  78550b:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  78550e:	83 ec 08                                        	sub    esp,0x8
  785511:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  785515:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  785518:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78551b:	e8 b0 32 4e 00                                  	call   0xc687d0
  785520:	8b f0                                           	mov    esi,eax
  785522:	85 f6                                           	test   esi,esi
  785524:	74 6c                                           	je     0x785592
  785526:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  78552b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  785530:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
  785533:	8b 5e 48                                        	mov    ebx,DWORD PTR [esi+0x48]
  785536:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  78553a:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  785540:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  785545:	51                                              	push   ecx
  785546:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  78554a:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  785550:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  785556:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  78555c:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
  785561:	52                                              	push   edx
  785562:	56                                              	push   esi
  785563:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  785567:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  78556c:	e8 0f 74 35 00                                  	call   0xadc980
  785571:	8b 8e 98 02 00 00                               	mov    ecx,DWORD PTR [esi+0x298]
  785577:	83 c4 0c                                        	add    esp,0xc
  78557a:	85 c9                                           	test   ecx,ecx
  78557c:	74 14                                           	je     0x785592
  78557e:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  785581:	6a 00                                           	push   0x0
  785583:	50                                              	push   eax
  785584:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  785588:	52                                              	push   edx
  785589:	e8 32 2d 3c 00                                  	call   0xb482c0
  78558e:	66 89 47 0a                                     	mov    WORD PTR [edi+0xa],ax
  785592:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  785596:	db 54 24 14                                     	fist   DWORD PTR [esp+0x14]
  78559a:	db 44 24 14                                     	fild   DWORD PTR [esp+0x14]
  78559e:	de e9                                           	fsubp  st(1),st
  7855a0:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  7855a4:	81 7c 24 10 01 00 00 80                         	cmp    DWORD PTR [esp+0x10],0x80000001
  7855ac:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7855b0:	83 d0 ff                                        	adc    eax,0xffffffff
  7855b3:	89 07                                           	mov    DWORD PTR [edi],eax
  7855b5:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  7855b9:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
  7855bd:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
  7855c1:	de e9                                           	fsubp  st(1),st
  7855c3:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  7855c7:	81 7c 24 14 01 00 00 80                         	cmp    DWORD PTR [esp+0x14],0x80000001
  7855cf:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7855d3:	83 d0 ff                                        	adc    eax,0xffffffff
  7855d6:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  7855da:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  7855dd:	8a 44 24 2c                                     	mov    al,BYTE PTR [esp+0x2c]
  7855e1:	88 47 08                                        	mov    BYTE PTR [edi+0x8],al
  7855e4:	5f                                              	pop    edi
  7855e5:	5e                                              	pop    esi
  7855e6:	8b c3                                           	mov    eax,ebx
  7855e8:	5b                                              	pop    ebx
  7855e9:	8b e5                                           	mov    esp,ebp
  7855eb:	5d                                              	pop    ebp
  7855ec:	c3                                              	ret
  7855ed:	cc                                              	int3
  7855ee:	cc                                              	int3
  7855ef:	cc                                              	int3
