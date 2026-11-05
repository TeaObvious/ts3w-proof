# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785370 (ScriptCore.World::World_GetLotLocationImpl)
Paired Ghidra pseudocode: 00785370_ScriptCore_World_World_GetLotLocationImpl.c
Window: [0x00785370, 0x00785490) (288 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785370: 55 8b ec 83 e4 f0 83 ec 34 8b 0d c4 db 1e 01 f3
00785380: 0f 10 05 18 b2 fa 00 53 33 db 3b cb 56 57 8b 7d
00785390: 14 89 5c 24 1c f3 0f 11 44 24 24 f3 0f 11 44 24
007853a0: 28 89 5c 24 2c 0f 84 85 00 00 00 d9 45 10 83 ec
007853b0: 08 d9 5c 24 04 d9 45 08 d9 1c 24 e8 10 34 4e 00
007853c0: 8b f0 85 f6 74 6a f3 0f 10 4d 10 f3 0f 10 45 08
007853d0: 8b 46 4c 8b 5e 48 8d 4c 24 24 f3 0f 11 4c 24 38
007853e0: f3 0f 10 4d 0c 51 8d 54 24 34 f3 0f 11 44 24 40
007853f0: f3 0f 11 4c 24 38 f3 0f 11 44 24 34 0f 28 44 24
00785400: 34 52 56 89 44 24 28 0f 29 44 24 3c e8 4f 74 35
00785410: 00 8b 45 18 8b b6 98 02 00 00 83 c4 0c 6a 00 50
00785420: 8d 4c 24 2c 51 8b ce e8 94 2e 3c 00 66 89 47 0a
00785430: d9 44 24 24 db 54 24 14 db 44 24 14 de e9 d9 5c
00785440: 24 10 81 7c 24 10 01 00 00 80 8b 44 24 14 83 d0
00785450: ff 89 07 d9 44 24 28 db 54 24 10 db 44 24 10 de
00785460: e9 d9 5c 24 14 81 7c 24 14 01 00 00 80 8b 44 24
00785470: 10 83 d0 ff 8a 54 24 2c 89 47 04 88 57 08 8b 54
00785480: 24 1c 5f 5e 8b c3 5b 8b e5 5d c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00785370 <.text+0x384370>:
  785370:	55                                              	push   ebp
  785371:	8b ec                                           	mov    ebp,esp
  785373:	83 e4 f0                                        	and    esp,0xfffffff0
  785376:	83 ec 34                                        	sub    esp,0x34
  785379:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78537f:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  785387:	53                                              	push   ebx
  785388:	33 db                                           	xor    ebx,ebx
  78538a:	3b cb                                           	cmp    ecx,ebx
  78538c:	56                                              	push   esi
  78538d:	57                                              	push   edi
  78538e:	8b 7d 14                                        	mov    edi,DWORD PTR [ebp+0x14]
  785391:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  785395:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
  78539b:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
  7853a1:	89 5c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebx
  7853a5:	0f 84 85 00 00 00                               	je     0x785430
  7853ab:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  7853ae:	83 ec 08                                        	sub    esp,0x8
  7853b1:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7853b5:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  7853b8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7853bb:	e8 10 34 4e 00                                  	call   0xc687d0
  7853c0:	8b f0                                           	mov    esi,eax
  7853c2:	85 f6                                           	test   esi,esi
  7853c4:	74 6a                                           	je     0x785430
  7853c6:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  7853cb:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  7853d0:	8b 46 4c                                        	mov    eax,DWORD PTR [esi+0x4c]
  7853d3:	8b 5e 48                                        	mov    ebx,DWORD PTR [esi+0x48]
  7853d6:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  7853da:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  7853e0:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  7853e5:	51                                              	push   ecx
  7853e6:	8d 54 24 34                                     	lea    edx,[esp+0x34]
  7853ea:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
  7853f0:	f3 0f 11 4c 24 38                               	movss  DWORD PTR [esp+0x38],xmm1
  7853f6:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
  7853fc:	0f 28 44 24 34                                  	movaps xmm0,XMMWORD PTR [esp+0x34]
  785401:	52                                              	push   edx
  785402:	56                                              	push   esi
  785403:	89 44 24 28                                     	mov    DWORD PTR [esp+0x28],eax
  785407:	0f 29 44 24 3c                                  	movaps XMMWORD PTR [esp+0x3c],xmm0
  78540c:	e8 4f 74 35 00                                  	call   0xadc860
  785411:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
  785414:	8b b6 98 02 00 00                               	mov    esi,DWORD PTR [esi+0x298]
  78541a:	83 c4 0c                                        	add    esp,0xc
  78541d:	6a 00                                           	push   0x0
  78541f:	50                                              	push   eax
  785420:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  785424:	51                                              	push   ecx
  785425:	8b ce                                           	mov    ecx,esi
  785427:	e8 94 2e 3c 00                                  	call   0xb482c0
  78542c:	66 89 47 0a                                     	mov    WORD PTR [edi+0xa],ax
  785430:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  785434:	db 54 24 14                                     	fist   DWORD PTR [esp+0x14]
  785438:	db 44 24 14                                     	fild   DWORD PTR [esp+0x14]
  78543c:	de e9                                           	fsubp  st(1),st
  78543e:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  785442:	81 7c 24 10 01 00 00 80                         	cmp    DWORD PTR [esp+0x10],0x80000001
  78544a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  78544e:	83 d0 ff                                        	adc    eax,0xffffffff
  785451:	89 07                                           	mov    DWORD PTR [edi],eax
  785453:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  785457:	db 54 24 10                                     	fist   DWORD PTR [esp+0x10]
  78545b:	db 44 24 10                                     	fild   DWORD PTR [esp+0x10]
  78545f:	de e9                                           	fsubp  st(1),st
  785461:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
  785465:	81 7c 24 14 01 00 00 80                         	cmp    DWORD PTR [esp+0x14],0x80000001
  78546d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  785471:	83 d0 ff                                        	adc    eax,0xffffffff
  785474:	8a 54 24 2c                                     	mov    dl,BYTE PTR [esp+0x2c]
  785478:	89 47 04                                        	mov    DWORD PTR [edi+0x4],eax
  78547b:	88 57 08                                        	mov    BYTE PTR [edi+0x8],dl
  78547e:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  785482:	5f                                              	pop    edi
  785483:	5e                                              	pop    esi
  785484:	8b c3                                           	mov    eax,ebx
  785486:	5b                                              	pop    ebx
  785487:	8b e5                                           	mov    esp,ebp
  785489:	5d                                              	pop    ebp
  78548a:	c3                                              	ret
  78548b:	cc                                              	int3
  78548c:	cc                                              	int3
  78548d:	cc                                              	int3
  78548e:	cc                                              	int3
  78548f:	cc                                              	int3
