# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00963060 (CameraPoseLerp_TickCubicEaseOut)
Paired Ghidra pseudocode: 00963060_CameraPoseLerp_TickCubicEaseOut.c
Window: [0x00963060, 0x00963110) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x00963110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00963060: 55 8b ec 83 e4 f0 0f 57 d2 83 ec 0c 56 8b f1 f3
00963070: 0f 10 4e 74 0f 2f ca 0f 82 8b 00 00 00 f3 0f 10
00963080: 45 08 f3 0f 58 46 70 0f 2f ca f3 0f 10 15 f8 98
00963090: f9 00 f3 0f 11 46 70 76 0f f3 0f 5e c1 0f 2f c2
009630a0: f3 0f 11 44 24 0c 72 13 f3 0f 10 05 18 b2 fa 00
009630b0: f3 0f 11 46 74 f3 0f 11 54 24 0c d9 e8 d8 64 24
009630c0: 0c dd 05 38 e5 fa 00 e8 0a c7 61 00 d9 e8 0f 28
009630d0: 4e 50 de e1 d9 5c 24 0c f3 0f 10 44 24 0c 0f 28
009630e0: 56 30 0f 5c d1 0f c6 c0 00 0f 59 d0 0f 58 d1 0f
009630f0: 29 56 10 0f 28 4e 60 0f 28 56 40 0f 5c d1 0f 59
00963100: d0 0f 58 d1 0f 29 56 20 5e 8b e5 5d c2 04 00 cc

LINEAR DISASSEMBLY
00963060 <.text+0x562060>:
  963060:	55                                              	push   ebp
  963061:	8b ec                                           	mov    ebp,esp
  963063:	83 e4 f0                                        	and    esp,0xfffffff0
  963066:	0f 57 d2                                        	xorps  xmm2,xmm2
  963069:	83 ec 0c                                        	sub    esp,0xc
  96306c:	56                                              	push   esi
  96306d:	8b f1                                           	mov    esi,ecx
  96306f:	f3 0f 10 4e 74                                  	movss  xmm1,DWORD PTR [esi+0x74]
  963074:	0f 2f ca                                        	comiss xmm1,xmm2
  963077:	0f 82 8b 00 00 00                               	jb     0x963108
  96307d:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  963082:	f3 0f 58 46 70                                  	addss  xmm0,DWORD PTR [esi+0x70]
  963087:	0f 2f ca                                        	comiss xmm1,xmm2
  96308a:	f3 0f 10 15 f8 98 f9 00                         	movss  xmm2,DWORD PTR ds:0xf998f8
  963092:	f3 0f 11 46 70                                  	movss  DWORD PTR [esi+0x70],xmm0
  963097:	76 0f                                           	jbe    0x9630a8
  963099:	f3 0f 5e c1                                     	divss  xmm0,xmm1
  96309d:	0f 2f c2                                        	comiss xmm0,xmm2
  9630a0:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
  9630a6:	72 13                                           	jb     0x9630bb
  9630a8:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  9630b0:	f3 0f 11 46 74                                  	movss  DWORD PTR [esi+0x74],xmm0
  9630b5:	f3 0f 11 54 24 0c                               	movss  DWORD PTR [esp+0xc],xmm2
  9630bb:	d9 e8                                           	fld1
  9630bd:	d8 64 24 0c                                     	fsub   DWORD PTR [esp+0xc]
  9630c1:	dd 05 38 e5 fa 00                               	fld    QWORD PTR ds:0xfae538
  9630c7:	e8 0a c7 61 00                                  	call   0xf7f7d6
  9630cc:	d9 e8                                           	fld1
  9630ce:	0f 28 4e 50                                     	movaps xmm1,XMMWORD PTR [esi+0x50]
  9630d2:	de e1                                           	fsubrp st(1),st
  9630d4:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  9630d8:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  9630de:	0f 28 56 30                                     	movaps xmm2,XMMWORD PTR [esi+0x30]
  9630e2:	0f 5c d1                                        	subps  xmm2,xmm1
  9630e5:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  9630e9:	0f 59 d0                                        	mulps  xmm2,xmm0
  9630ec:	0f 58 d1                                        	addps  xmm2,xmm1
  9630ef:	0f 29 56 10                                     	movaps XMMWORD PTR [esi+0x10],xmm2
  9630f3:	0f 28 4e 60                                     	movaps xmm1,XMMWORD PTR [esi+0x60]
  9630f7:	0f 28 56 40                                     	movaps xmm2,XMMWORD PTR [esi+0x40]
  9630fb:	0f 5c d1                                        	subps  xmm2,xmm1
  9630fe:	0f 59 d0                                        	mulps  xmm2,xmm0
  963101:	0f 58 d1                                        	addps  xmm2,xmm1
  963104:	0f 29 56 20                                     	movaps XMMWORD PTR [esi+0x20],xmm2
  963108:	5e                                              	pop    esi
  963109:	8b e5                                           	mov    esp,ebp
  96310b:	5d                                              	pop    ebp
  96310c:	c2 04 00                                        	ret    0x4
  96310f:	cc                                              	int3
