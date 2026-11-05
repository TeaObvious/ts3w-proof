# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00960b80 (Camera_SetZoomAndDerivedTarget)
Paired Ghidra pseudocode: 00960B80_Camera_SetZoomAndDerivedTarget.c
Window: [0x00960b80, 0x00960bc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00960bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00960b80: 55 8b ec 83 e4 f0 f3 0f 10 45 08 0f 28 49 50 f3
00960b90: 0f 11 81 70 02 00 00 0f 57 d2 f3 0f 10 c0 0f 5c
00960ba0: d1 0f c6 c0 00 0f 59 d0 0f 28 41 60 0f 58 d0 0f
00960bb0: 29 91 00 02 00 00 8b e5 5d c2 04 00 cc cc cc cc

LINEAR DISASSEMBLY
00960b80 <.text+0x55fb80>:
  960b80:	55                                              	push   ebp
  960b81:	8b ec                                           	mov    ebp,esp
  960b83:	83 e4 f0                                        	and    esp,0xfffffff0
  960b86:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  960b8b:	0f 28 49 50                                     	movaps xmm1,XMMWORD PTR [ecx+0x50]
  960b8f:	f3 0f 11 81 70 02 00 00                         	movss  DWORD PTR [ecx+0x270],xmm0
  960b97:	0f 57 d2                                        	xorps  xmm2,xmm2
  960b9a:	f3 0f 10 c0                                     	movss  xmm0,xmm0
  960b9e:	0f 5c d1                                        	subps  xmm2,xmm1
  960ba1:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
  960ba5:	0f 59 d0                                        	mulps  xmm2,xmm0
  960ba8:	0f 28 41 60                                     	movaps xmm0,XMMWORD PTR [ecx+0x60]
  960bac:	0f 58 d0                                        	addps  xmm2,xmm0
  960baf:	0f 29 91 00 02 00 00                            	movaps XMMWORD PTR [ecx+0x200],xmm2
  960bb6:	8b e5                                           	mov    esp,ebp
  960bb8:	5d                                              	pop    ebp
  960bb9:	c2 04 00                                        	ret    0x4
  960bbc:	cc                                              	int3
  960bbd:	cc                                              	int3
  960bbe:	cc                                              	int3
  960bbf:	cc                                              	int3
