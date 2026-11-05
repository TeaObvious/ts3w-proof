# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990a40 (SimBuilderWrap_GetHairHaloHighColor)
Paired Ghidra pseudocode: 10990A40_SimBuilderWrap_GetHairHaloHighColor.c
Window: [0x10990a40, 0x10990ae0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990a40: 55 8b ec 83 e4 f0 83 ec 30 8b 45 08 8b 40 4c f3
10990a50: 0f 10 0d 2c 83 ab 10 8b c8 c1 e9 18 f3 0f 2a c1
10990a60: f3 0f 11 44 24 0c 0f b6 d0 8b c8 f3 0f 2a c2 f3
10990a70: 0f 11 44 24 08 c1 e9 08 c1 e8 10 0f b6 d1 0f b6
10990a80: c0 f3 0f 2a c2 f3 0f 11 44 24 04 f3 0f 2a c0 8b
10990a90: 45 0c f3 0f 11 04 24 0f 28 04 24 0f c6 c9 00 0f
10990aa0: 59 c1 0f 29 04 24 0f 29 44 24 10 0f 29 44 24 20
10990ab0: f3 0f 10 04 24 f3 0f 11 00 f3 0f 10 44 24 14 f3
10990ac0: 0f 11 40 04 f3 0f 10 44 24 28 f3 0f 11 40 08 8b
10990ad0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990a40 <.text+0x98fa40>:
10990a40:	55                                              	push   ebp
10990a41:	8b ec                                           	mov    ebp,esp
10990a43:	83 e4 f0                                        	and    esp,0xfffffff0
10990a46:	83 ec 30                                        	sub    esp,0x30
10990a49:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
10990a4c:	8b 40 4c                                        	mov    eax,DWORD PTR [eax+0x4c]
10990a4f:	f3 0f 10 0d 2c 83 ab 10                         	movss  xmm1,DWORD PTR ds:0x10ab832c
10990a57:	8b c8                                           	mov    ecx,eax
10990a59:	c1 e9 18                                        	shr    ecx,0x18
10990a5c:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
10990a60:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990a66:	0f b6 d0                                        	movzx  edx,al
10990a69:	8b c8                                           	mov    ecx,eax
10990a6b:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
10990a6f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990a75:	c1 e9 08                                        	shr    ecx,0x8
10990a78:	c1 e8 10                                        	shr    eax,0x10
10990a7b:	0f b6 d1                                        	movzx  edx,cl
10990a7e:	0f b6 c0                                        	movzx  eax,al
10990a81:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
10990a85:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990a8b:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
10990a8f:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10990a92:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990a97:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10990a9b:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
10990a9f:	0f 59 c1                                        	mulps  xmm0,xmm1
10990aa2:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990aa6:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990aab:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10990ab0:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990ab5:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10990ab9:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
10990abf:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10990ac4:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
10990aca:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
10990acf:	8b e5                                           	mov    esp,ebp
10990ad1:	5d                                              	pop    ebp
10990ad2:	c3                                              	ret
10990ad3:	cc                                              	int3
10990ad4:	cc                                              	int3
10990ad5:	cc                                              	int3
10990ad6:	cc                                              	int3
10990ad7:	cc                                              	int3
10990ad8:	cc                                              	int3
10990ad9:	cc                                              	int3
10990ada:	cc                                              	int3
10990adb:	cc                                              	int3
10990adc:	cc                                              	int3
10990add:	cc                                              	int3
10990ade:	cc                                              	int3
10990adf:	cc                                              	int3
