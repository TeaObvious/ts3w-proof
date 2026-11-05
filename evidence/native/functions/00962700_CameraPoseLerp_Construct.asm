# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00962700 (CameraPoseLerp_Construct)
Paired Ghidra pseudocode: 00962700_CameraPoseLerp_Construct.c
Window: [0x00962700, 0x00962770) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00962770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00962700: 0f 57 c0 8b c1 f3 0f 11 40 70 f3 0f 10 05 18 b2
00962710: fa 00 f3 0f 11 40 74 c7 00 4c 5b 04 01 0f 57 c0
00962720: 0f 29 40 10 0f 29 40 20 0f 29 40 30 0f 29 40 40
00962730: 0f 29 40 50 c3 cc cc cc cc cc cc cc cc cc cc cc
00962740: f3 0f 10 41 70 f3 0f 58 05 24 5b 04 01 f3 0f 10
00962750: 49 74 0f 2f c8 76 06 b8 01 00 00 00 c3 33 c0 c3
00962760: d9 41 74 d8 61 70 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00962700 <.text+0x561700>:
  962700:	0f 57 c0                                        	xorps  xmm0,xmm0
  962703:	8b c1                                           	mov    eax,ecx
  962705:	f3 0f 11 40 70                                  	movss  DWORD PTR [eax+0x70],xmm0
  96270a:	f3 0f 10 05 18 b2 fa 00                         	movss  xmm0,DWORD PTR ds:0xfab218
  962712:	f3 0f 11 40 74                                  	movss  DWORD PTR [eax+0x74],xmm0
  962717:	c7 00 4c 5b 04 01                               	mov    DWORD PTR [eax],0x1045b4c
  96271d:	0f 57 c0                                        	xorps  xmm0,xmm0
  962720:	0f 29 40 10                                     	movaps XMMWORD PTR [eax+0x10],xmm0
  962724:	0f 29 40 20                                     	movaps XMMWORD PTR [eax+0x20],xmm0
  962728:	0f 29 40 30                                     	movaps XMMWORD PTR [eax+0x30],xmm0
  96272c:	0f 29 40 40                                     	movaps XMMWORD PTR [eax+0x40],xmm0
  962730:	0f 29 40 50                                     	movaps XMMWORD PTR [eax+0x50],xmm0
  962734:	c3                                              	ret
  962735:	cc                                              	int3
  962736:	cc                                              	int3
  962737:	cc                                              	int3
  962738:	cc                                              	int3
  962739:	cc                                              	int3
  96273a:	cc                                              	int3
  96273b:	cc                                              	int3
  96273c:	cc                                              	int3
  96273d:	cc                                              	int3
  96273e:	cc                                              	int3
  96273f:	cc                                              	int3
  962740:	f3 0f 10 41 70                                  	movss  xmm0,DWORD PTR [ecx+0x70]
  962745:	f3 0f 58 05 24 5b 04 01                         	addss  xmm0,DWORD PTR ds:0x1045b24
  96274d:	f3 0f 10 49 74                                  	movss  xmm1,DWORD PTR [ecx+0x74]
  962752:	0f 2f c8                                        	comiss xmm1,xmm0
  962755:	76 06                                           	jbe    0x96275d
  962757:	b8 01 00 00 00                                  	mov    eax,0x1
  96275c:	c3                                              	ret
  96275d:	33 c0                                           	xor    eax,eax
  96275f:	c3                                              	ret
  962760:	d9 41 74                                        	fld    DWORD PTR [ecx+0x74]
  962763:	d8 61 70                                        	fsub   DWORD PTR [ecx+0x70]
  962766:	c3                                              	ret
  962767:	cc                                              	int3
  962768:	cc                                              	int3
  962769:	cc                                              	int3
  96276a:	cc                                              	int3
  96276b:	cc                                              	int3
  96276c:	cc                                              	int3
  96276d:	cc                                              	int3
  96276e:	cc                                              	int3
  96276f:	cc                                              	int3
