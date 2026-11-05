# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109909a0 (SimBuilderWrap_GetHairHaloLowColor)
Paired Ghidra pseudocode: 109909A0_SimBuilderWrap_GetHairHaloLowColor.c
Window: [0x109909a0, 0x10990a40) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990a40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109909a0: 55 8b ec 83 e4 f0 83 ec 30 8b 45 08 8b 40 48 f3
109909b0: 0f 10 0d 2c 83 ab 10 8b c8 c1 e9 18 f3 0f 2a c1
109909c0: f3 0f 11 44 24 0c 0f b6 d0 8b c8 f3 0f 2a c2 f3
109909d0: 0f 11 44 24 08 c1 e9 08 c1 e8 10 0f b6 d1 0f b6
109909e0: c0 f3 0f 2a c2 f3 0f 11 44 24 04 f3 0f 2a c0 8b
109909f0: 45 0c f3 0f 11 04 24 0f 28 04 24 0f c6 c9 00 0f
10990a00: 59 c1 0f 29 04 24 0f 29 44 24 10 0f 29 44 24 20
10990a10: f3 0f 10 04 24 f3 0f 11 00 f3 0f 10 44 24 14 f3
10990a20: 0f 11 40 04 f3 0f 10 44 24 28 f3 0f 11 40 08 8b
10990a30: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109909a0 <.text+0x98f9a0>:
109909a0:	55                                              	push   ebp
109909a1:	8b ec                                           	mov    ebp,esp
109909a3:	83 e4 f0                                        	and    esp,0xfffffff0
109909a6:	83 ec 30                                        	sub    esp,0x30
109909a9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
109909ac:	8b 40 48                                        	mov    eax,DWORD PTR [eax+0x48]
109909af:	f3 0f 10 0d 2c 83 ab 10                         	movss  xmm1,DWORD PTR ds:0x10ab832c
109909b7:	8b c8                                           	mov    ecx,eax
109909b9:	c1 e9 18                                        	shr    ecx,0x18
109909bc:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
109909c0:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109909c6:	0f b6 d0                                        	movzx  edx,al
109909c9:	8b c8                                           	mov    ecx,eax
109909cb:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
109909cf:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109909d5:	c1 e9 08                                        	shr    ecx,0x8
109909d8:	c1 e8 10                                        	shr    eax,0x10
109909db:	0f b6 d1                                        	movzx  edx,cl
109909de:	0f b6 c0                                        	movzx  eax,al
109909e1:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
109909e5:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
109909eb:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
109909ef:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
109909f2:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109909f7:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109909fb:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
109909ff:	0f 59 c1                                        	mulps  xmm0,xmm1
10990a02:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990a06:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990a0b:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10990a10:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990a15:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10990a19:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
10990a1f:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10990a24:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10990a2a:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
10990a2f:	8b e5                                           	mov    esp,ebp
10990a31:	5d                                              	pop    ebp
10990a32:	c3                                              	ret
10990a33:	cc                                              	int3
10990a34:	cc                                              	int3
10990a35:	cc                                              	int3
10990a36:	cc                                              	int3
10990a37:	cc                                              	int3
10990a38:	cc                                              	int3
10990a39:	cc                                              	int3
10990a3a:	cc                                              	int3
10990a3b:	cc                                              	int3
10990a3c:	cc                                              	int3
10990a3d:	cc                                              	int3
10990a3e:	cc                                              	int3
10990a3f:	cc                                              	int3
