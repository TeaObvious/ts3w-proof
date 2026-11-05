# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00960ae0 (Camera_GetZoomDistance)
Paired Ghidra pseudocode: 00960AE0_Camera_GetZoomDistance.c
Window: [0x00960ae0, 0x00960b40) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00960b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00960ae0: 55 8b ec 83 e4 f0 83 ec 10 80 b9 e0 06 00 00 00
00960af0: 74 37 0f 28 49 60 0f 28 81 00 02 00 00 0f 5c c1
00960b00: 0f 59 c0 0f 28 c8 0f c6 c1 02 0f 28 d1 0f c6 d1
00960b10: 01 0f 58 c2 0f 58 c1 0f c6 c0 00 0f 51 c0 0f 29
00960b20: 04 24 d9 04 24 8b e5 5d c3 d9 81 70 02 00 00 8b
00960b30: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00960ae0 <.text+0x55fae0>:
  960ae0:	55                                              	push   ebp
  960ae1:	8b ec                                           	mov    ebp,esp
  960ae3:	83 e4 f0                                        	and    esp,0xfffffff0
  960ae6:	83 ec 10                                        	sub    esp,0x10
  960ae9:	80 b9 e0 06 00 00 00                            	cmp    BYTE PTR [ecx+0x6e0],0x0
  960af0:	74 37                                           	je     0x960b29
  960af2:	0f 28 49 60                                     	movaps xmm1,XMMWORD PTR [ecx+0x60]
  960af6:	0f 28 81 00 02 00 00                            	movaps xmm0,XMMWORD PTR [ecx+0x200]
  960afd:	0f 5c c1                                        	subps  xmm0,xmm1
  960b00:	0f 59 c0                                        	mulps  xmm0,xmm0
  960b03:	0f 28 c8                                        	movaps xmm1,xmm0
  960b06:	0f c6 c1 02                                     	shufps xmm0,xmm1,0x2
  960b0a:	0f 28 d1                                        	movaps xmm2,xmm1
  960b0d:	0f c6 d1 01                                     	shufps xmm2,xmm1,0x1
  960b11:	0f 58 c2                                        	addps  xmm0,xmm2
  960b14:	0f 58 c1                                        	addps  xmm0,xmm1
  960b17:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  960b1b:	0f 51 c0                                        	sqrtps xmm0,xmm0
  960b1e:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
  960b22:	d9 04 24                                        	fld    DWORD PTR [esp]
  960b25:	8b e5                                           	mov    esp,ebp
  960b27:	5d                                              	pop    ebp
  960b28:	c3                                              	ret
  960b29:	d9 81 70 02 00 00                               	fld    DWORD PTR [ecx+0x270]
  960b2f:	8b e5                                           	mov    esp,ebp
  960b31:	5d                                              	pop    ebp
  960b32:	c3                                              	ret
  960b33:	cc                                              	int3
  960b34:	cc                                              	int3
  960b35:	cc                                              	int3
  960b36:	cc                                              	int3
  960b37:	cc                                              	int3
  960b38:	cc                                              	int3
  960b39:	cc                                              	int3
  960b3a:	cc                                              	int3
  960b3b:	cc                                              	int3
  960b3c:	cc                                              	int3
  960b3d:	cc                                              	int3
  960b3e:	cc                                              	int3
  960b3f:	cc                                              	int3
