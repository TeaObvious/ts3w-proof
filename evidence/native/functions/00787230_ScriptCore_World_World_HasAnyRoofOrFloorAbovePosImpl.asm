# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787230 (ScriptCore.World::World_HasAnyRoofOrFloorAbovePosImpl)
Paired Ghidra pseudocode: 00787230_ScriptCore_World_World_HasAnyRoofOrFloorAbovePosImpl.c
Window: [0x00787230, 0x007872e0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x007872e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787230: 55 8b ec 83 e4 f0 8b 0d c4 db 1e 01 83 ec 1c 85
00787240: c9 56 0f 84 90 00 00 00 d9 45 10 83 ec 08 d9 5c
00787250: 24 04 d9 45 08 d9 1c 24 e8 73 15 4e 00 8b f0 85
00787260: f6 74 75 f3 0f 10 05 18 b2 fa 00 f3 0f 10 4d 10
00787270: 8d 44 24 04 f3 0f 11 4c 24 18 f3 0f 10 4d 0c 50
00787280: f3 0f 11 44 24 08 f3 0f 11 44 24 0c f3 0f 10 45
00787290: 08 8d 4c 24 14 f3 0f 11 44 24 20 f3 0f 11 4c 24
007872a0: 18 f3 0f 11 44 24 14 0f 28 44 24 14 51 56 c7 44
007872b0: 24 18 00 00 00 00 0f 29 44 24 1c e8 a0 55 35 00
007872c0: 83 c4 0c 6a 01 6a 01 8d 54 24 0c 52 8b ce e8 fd
007872d0: 2d 33 00 5e 8b e5 5d c3 32 c0 5e 8b e5 5d c3 cc

LINEAR DISASSEMBLY
00787230 <.text+0x386230>:
  787230:	55                                              	push   ebp
  787231:	8b ec                                           	mov    ebp,esp
  787233:	83 e4 f0                                        	and    esp,0xfffffff0
  787236:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78723c:	83 ec 1c                                        	sub    esp,0x1c
  78723f:	85 c9                                           	test   ecx,ecx
  787241:	56                                              	push   esi
  787242:	0f 84 90 00 00 00                               	je     0x7872d8
  787248:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  78724b:	83 ec 08                                        	sub    esp,0x8
  78724e:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  787252:	d9 45 08                                        	fld    DWORD PTR [ebp+0x8]
  787255:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  787258:	e8 73 15 4e 00                                  	call   0xc687d0
  78725d:	8b f0                                           	mov    esi,eax
  78725f:	85 f6                                           	test   esi,esi
  787261:	74 75                                           	je     0x7872d8
  787263:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  78726b:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  787270:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  787274:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  78727a:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  78727f:	50                                              	push   eax
  787280:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  787286:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  78728c:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  787291:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  787295:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
  78729b:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  7872a1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  7872a7:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
  7872ac:	51                                              	push   ecx
  7872ad:	56                                              	push   esi
  7872ae:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  7872b6:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
  7872bb:	e8 a0 55 35 00                                  	call   0xadc860
  7872c0:	83 c4 0c                                        	add    esp,0xc
  7872c3:	6a 01                                           	push   0x1
  7872c5:	6a 01                                           	push   0x1
  7872c7:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  7872cb:	52                                              	push   edx
  7872cc:	8b ce                                           	mov    ecx,esi
  7872ce:	e8 fd 2d 33 00                                  	call   0xaba0d0
  7872d3:	5e                                              	pop    esi
  7872d4:	8b e5                                           	mov    esp,ebp
  7872d6:	5d                                              	pop    ebp
  7872d7:	c3                                              	ret
  7872d8:	32 c0                                           	xor    al,al
  7872da:	5e                                              	pop    esi
  7872db:	8b e5                                           	mov    esp,ebp
  7872dd:	5d                                              	pop    ebp
  7872de:	c3                                              	ret
  7872df:	cc                                              	int3
