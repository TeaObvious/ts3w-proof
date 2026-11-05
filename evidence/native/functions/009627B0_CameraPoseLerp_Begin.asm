# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009627b0 (CameraPoseLerp_Begin)
Paired Ghidra pseudocode: 009627B0_CameraPoseLerp_Begin.c
Window: [0x009627b0, 0x00962800) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00962800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009627b0: 55 8b ec 83 e4 f0 8b 45 08 0f 28 00 8b 55 10 8b
009627c0: 45 0c 0f 29 41 50 0f 29 41 10 0f 28 02 8b 55 14
009627d0: 0f 29 41 60 0f 29 41 20 0f 28 00 0f 29 41 30 0f
009627e0: 28 02 0f 29 41 40 0f 57 c0 f3 0f 11 41 70 f3 0f
009627f0: 10 45 18 f3 0f 11 41 74 8b e5 5d c2 14 00 cc cc

LINEAR DISASSEMBLY
009627b0 <.text+0x5617b0>:
  9627b0:	55                                              	push   ebp
  9627b1:	8b ec                                           	mov    ebp,esp
  9627b3:	83 e4 f0                                        	and    esp,0xfffffff0
  9627b6:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  9627b9:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  9627bc:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  9627bf:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
  9627c2:	0f 29 41 50                                     	movaps XMMWORD PTR [ecx+0x50],xmm0
  9627c6:	0f 29 41 10                                     	movaps XMMWORD PTR [ecx+0x10],xmm0
  9627ca:	0f 28 02                                        	movaps xmm0,XMMWORD PTR [edx]
  9627cd:	8b 55 14                                        	mov    edx,DWORD PTR [ebp+0x14]
  9627d0:	0f 29 41 60                                     	movaps XMMWORD PTR [ecx+0x60],xmm0
  9627d4:	0f 29 41 20                                     	movaps XMMWORD PTR [ecx+0x20],xmm0
  9627d8:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
  9627db:	0f 29 41 30                                     	movaps XMMWORD PTR [ecx+0x30],xmm0
  9627df:	0f 28 02                                        	movaps xmm0,XMMWORD PTR [edx]
  9627e2:	0f 29 41 40                                     	movaps XMMWORD PTR [ecx+0x40],xmm0
  9627e6:	0f 57 c0                                        	xorps  xmm0,xmm0
  9627e9:	f3 0f 11 41 70                                  	movss  DWORD PTR [ecx+0x70],xmm0
  9627ee:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
  9627f3:	f3 0f 11 41 74                                  	movss  DWORD PTR [ecx+0x74],xmm0
  9627f8:	8b e5                                           	mov    esp,ebp
  9627fa:	5d                                              	pop    ebp
  9627fb:	c2 14 00                                        	ret    0x14
  9627fe:	cc                                              	int3
  9627ff:	cc                                              	int3
