# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787570 (ScriptCore.World::World_GetPondAtPoint)
Paired Ghidra pseudocode: 00787570_ScriptCore_World_World_GetPondAtPoint.c
Window: [0x00787570, 0x00787620) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787620
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787570: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 1c 85
00787580: c9 56 0f 84 88 00 00 00 8b 45 08 8b 55 0c 8b f0
00787590: 0b f2 75 23 d9 45 18 6a 01 83 ec 08 d9 5c 24 04
007875a0: d9 45 10 d9 1c 24 e8 45 93 4d 00 85 c0 7c 61 83
007875b0: c0 01 5e 8b e5 5d c3 6a 00 52 50 e8 50 b2 4d 00
007875c0: 85 c0 74 4c 8b 80 c8 02 00 00 85 c0 74 42 f3 0f
007875d0: 10 4d 18 f3 0f 10 45 10 f3 0f 11 4c 24 18 f3 0f
007875e0: 10 4d 14 8d 4c 24 10 f3 0f 11 44 24 1c f3 0f 11
007875f0: 4c 24 14 f3 0f 11 44 24 10 0f 28 44 24 10 51 8b
00787600: c8 0f 29 44 24 14 e8 e5 c0 3d 00 5e 8b e5 5d c3
00787610: 33 c0 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787570 <.text+0x386570>:
  787570:	55                                              	push   ebp
  787571:	8b ec                                           	mov    ebp,esp
  787573:	83 e4 f0                                        	and    esp,0xfffffff0
  787576:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78757c:	83 ec 1c                                        	sub    esp,0x1c
  78757f:	85 c9                                           	test   ecx,ecx
  787581:	56                                              	push   esi
  787582:	0f 84 88 00 00 00                               	je     0x787610
  787588:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  78758b:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  78758e:	8b f0                                           	mov    esi,eax
  787590:	0b f2                                           	or     esi,edx
  787592:	75 23                                           	jne    0x7875b7
  787594:	d9 45 18                                        	fld    DWORD PTR [ebp+0x18]
  787597:	6a 01                                           	push   0x1
  787599:	83 ec 08                                        	sub    esp,0x8
  78759c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7875a0:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  7875a3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7875a6:	e8 45 93 4d 00                                  	call   0xc608f0
  7875ab:	85 c0                                           	test   eax,eax
  7875ad:	7c 61                                           	jl     0x787610
  7875af:	83 c0 01                                        	add    eax,0x1
  7875b2:	5e                                              	pop    esi
  7875b3:	8b e5                                           	mov    esp,ebp
  7875b5:	5d                                              	pop    ebp
  7875b6:	c3                                              	ret
  7875b7:	6a 00                                           	push   0x0
  7875b9:	52                                              	push   edx
  7875ba:	50                                              	push   eax
  7875bb:	e8 50 b2 4d 00                                  	call   0xc62810
  7875c0:	85 c0                                           	test   eax,eax
  7875c2:	74 4c                                           	je     0x787610
  7875c4:	8b 80 c8 02 00 00                               	mov    eax,DWORD PTR [eax+0x2c8]
  7875ca:	85 c0                                           	test   eax,eax
  7875cc:	74 42                                           	je     0x787610
  7875ce:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  7875d3:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
  7875d8:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  7875de:	f3 0f 10 4d 14                                  	movss  xmm1,DWORD PTR [ebp+0x14]
  7875e3:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7875e7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7875ed:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  7875f3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7875f9:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  7875fe:	51                                              	push   ecx
  7875ff:	8b c8                                           	mov    ecx,eax
  787601:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
  787606:	e8 e5 c0 3d 00                                  	call   0xb636f0
  78760b:	5e                                              	pop    esi
  78760c:	8b e5                                           	mov    esp,ebp
  78760e:	5d                                              	pop    ebp
  78760f:	c3                                              	ret
  787610:	33 c0                                           	xor    eax,eax
  787612:	5e                                              	pop    esi
  787613:	8b e5                                           	mov    esp,ebp
  787615:	5d                                              	pop    ebp
  787616:	c3                                              	ret
  787617:	cc                                              	int3
  787618:	cc                                              	int3
  787619:	cc                                              	int3
  78761a:	cc                                              	int3
  78761b:	cc                                              	int3
  78761c:	cc                                              	int3
  78761d:	cc                                              	int3
  78761e:	cc                                              	int3
  78761f:	cc                                              	int3
