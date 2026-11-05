# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00b027a0 (DirectTargetOf_World_World_GetRoofSlopeAngleImpl)
Paired Ghidra pseudocode: 00B027A0_DirectTargetOf_World_World_GetRoofSlopeAngleImpl.c
Window: [0x00b027a0, 0x00b02820) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00b02820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00b027a0: 55 8b ec 83 e4 f8 83 ec 0c 56 8b 35 c4 db 1e 01
00b027b0: 85 f6 74 54 6a 00 8b ce e8 a3 cd 15 00 52 50 8b
00b027c0: ce e8 4a 00 16 00 85 c0 74 3e 8b 80 ac 02 00 00
00b027d0: 85 c0 74 34 8b c8 e8 75 1d 09 00 dc c0 d9 e8 51
00b027e0: d9 f3 d8 0d b0 b7 06 01 d9 1c 24 e8 40 fe ff ff
00b027f0: d9 5c 24 08 83 c4 04 d9 44 24 04 df 7c 24 08 8b
00b02800: 44 24 08 5e 8b e5 5d c3 b8 2d 00 00 00 5e 8b e5
00b02810: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00b027a0 <.text+0x7017a0>:
  b027a0:	55                                              	push   ebp
  b027a1:	8b ec                                           	mov    ebp,esp
  b027a3:	83 e4 f8                                        	and    esp,0xfffffff8
  b027a6:	83 ec 0c                                        	sub    esp,0xc
  b027a9:	56                                              	push   esi
  b027aa:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  b027b0:	85 f6                                           	test   esi,esi
  b027b2:	74 54                                           	je     0xb02808
  b027b4:	6a 00                                           	push   0x0
  b027b6:	8b ce                                           	mov    ecx,esi
  b027b8:	e8 a3 cd 15 00                                  	call   0xc5f560
  b027bd:	52                                              	push   edx
  b027be:	50                                              	push   eax
  b027bf:	8b ce                                           	mov    ecx,esi
  b027c1:	e8 4a 00 16 00                                  	call   0xc62810
  b027c6:	85 c0                                           	test   eax,eax
  b027c8:	74 3e                                           	je     0xb02808
  b027ca:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  b027d0:	85 c0                                           	test   eax,eax
  b027d2:	74 34                                           	je     0xb02808
  b027d4:	8b c8                                           	mov    ecx,eax
  b027d6:	e8 75 1d 09 00                                  	call   0xb94550
  b027db:	dc c0                                           	fadd   st(0),st
  b027dd:	d9 e8                                           	fld1
  b027df:	51                                              	push   ecx
  b027e0:	d9 f3                                           	fpatan
  b027e2:	d8 0d b0 b7 06 01                               	fmul   DWORD PTR ds:0x106b7b0
  b027e8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  b027eb:	e8 40 fe ff ff                                  	call   0xb02630
  b027f0:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  b027f4:	83 c4 04                                        	add    esp,0x4
  b027f7:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  b027fb:	df 7c 24 08                                     	fistp  QWORD PTR [esp+0x8]
  b027ff:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  b02803:	5e                                              	pop    esi
  b02804:	8b e5                                           	mov    esp,ebp
  b02806:	5d                                              	pop    ebp
  b02807:	c3                                              	ret
  b02808:	b8 2d 00 00 00                                  	mov    eax,0x2d
  b0280d:	5e                                              	pop    esi
  b0280e:	8b e5                                           	mov    esp,ebp
  b02810:	5d                                              	pop    ebp
  b02811:	c3                                              	ret
  b02812:	cc                                              	int3
  b02813:	cc                                              	int3
  b02814:	cc                                              	int3
  b02815:	cc                                              	int3
  b02816:	cc                                              	int3
  b02817:	cc                                              	int3
  b02818:	cc                                              	int3
  b02819:	cc                                              	int3
  b0281a:	cc                                              	int3
  b0281b:	cc                                              	int3
  b0281c:	cc                                              	int3
  b0281d:	cc                                              	int3
  b0281e:	cc                                              	int3
  b0281f:	cc                                              	int3
