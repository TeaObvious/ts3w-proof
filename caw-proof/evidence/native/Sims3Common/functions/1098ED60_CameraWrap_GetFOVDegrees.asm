# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ed60 (CameraWrap_GetFOVDegrees)
Paired Ghidra pseudocode: 1098ED60_CameraWrap_GetFOVDegrees.c
Window: [0x1098ed60, 0x1098ed90) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ed90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ed60: 55 8b ec 83 e4 f0 83 ec 10 8b 45 08 f3 0f 10 40
1098ed70: 14 f3 0f 10 0d d0 71 b9 10 0f c6 c0 00 0f c6 c9
1098ed80: 00 0f 59 c1 0f 29 04 24 d9 04 24 8b e5 5d c3 cc

LINEAR DISASSEMBLY
1098ed60 <.text+0x98dd60>:
1098ed60:	55                                              	push   ebp
1098ed61:	8b ec                                           	mov    ebp,esp
1098ed63:	83 e4 f0                                        	and    esp,0xfffffff0
1098ed66:	83 ec 10                                        	sub    esp,0x10
1098ed69:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098ed6c:	f3 0f 10 40 14                                  	movss  xmm0,DWORD PTR [eax+0x14]
1098ed71:	f3 0f 10 0d d0 71 b9 10                         	movss  xmm1,DWORD PTR ds:0x10b971d0
1098ed79:	0f c6 c0 00                                     	shufps xmm0,xmm0,0x0
1098ed7d:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
1098ed81:	0f 59 c1                                        	mulps  xmm0,xmm1
1098ed84:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1098ed88:	d9 04 24                                        	fld    DWORD PTR [esp]
1098ed8b:	8b e5                                           	mov    esp,ebp
1098ed8d:	5d                                              	pop    ebp
1098ed8e:	c3                                              	ret
1098ed8f:	cc                                              	int3
