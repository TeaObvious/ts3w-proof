# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990900 (SimBuilderWrap_GetHairBaseColor)
Paired Ghidra pseudocode: 10990900_SimBuilderWrap_GetHairBaseColor.c
Window: [0x10990900, 0x109909a0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x109909a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990900: 55 8b ec 83 e4 f0 83 ec 30 8b 45 08 8b 40 44 f3
10990910: 0f 10 0d 2c 83 ab 10 8b c8 c1 e9 18 f3 0f 2a c1
10990920: f3 0f 11 44 24 0c 0f b6 d0 8b c8 f3 0f 2a c2 f3
10990930: 0f 11 44 24 08 c1 e9 08 c1 e8 10 0f b6 d1 0f b6
10990940: c0 f3 0f 2a c2 f3 0f 11 44 24 04 f3 0f 2a c0 8b
10990950: 45 0c f3 0f 11 04 24 0f 28 04 24 0f c6 c9 00 0f
10990960: 59 c1 0f 29 04 24 0f 29 44 24 10 0f 29 44 24 20
10990970: f3 0f 10 04 24 f3 0f 11 00 f3 0f 10 44 24 14 f3
10990980: 0f 11 40 04 f3 0f 10 44 24 28 f3 0f 11 40 08 8b
10990990: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990900 <.text+0x98f900>:
10990900:	55                                              	push   ebp
10990901:	8b ec                                           	mov    ebp,esp
10990903:	83 e4 f0                                        	and    esp,0xfffffff0
10990906:	83 ec 30                                        	sub    esp,0x30
10990909:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1099090c:	8b 40 44                                        	mov    eax,DWORD PTR [eax+0x44]
1099090f:	f3 0f 10 0d 2c 83 ab 10                         	movss  xmm1,DWORD PTR ds:0x10ab832c
10990917:	8b c8                                           	mov    ecx,eax
10990919:	c1 e9 18                                        	shr    ecx,0x18
1099091c:	f3 0f 2a c1                                     	cvtsi2ss xmm0,ecx
10990920:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990926:	0f b6 d0                                        	movzx  edx,al
10990929:	8b c8                                           	mov    ecx,eax
1099092b:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
1099092f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990935:	c1 e9 08                                        	shr    ecx,0x8
10990938:	c1 e8 10                                        	shr    eax,0x10
1099093b:	0f b6 d1                                        	movzx  edx,cl
1099093e:	0f b6 c0                                        	movzx  eax,al
10990941:	f3 0f 2a c2                                     	cvtsi2ss xmm0,edx
10990945:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1099094b:	f3 0f 2a c0                                     	cvtsi2ss xmm0,eax
1099094f:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10990952:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990957:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099095b:	0f c6 c9 00                                     	shufps xmm1,xmm1,0x0
1099095f:	0f 59 c1                                        	mulps  xmm0,xmm1
10990962:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990966:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1099096b:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
10990970:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990975:	f3 0f 11 00                                     	movss  DWORD PTR [eax],xmm0
10990979:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
1099097f:	f3 0f 11 40 04                                  	movss  DWORD PTR [eax+0x4],xmm0
10990984:	f3 0f 10 44 24 28                               	movss  xmm0,DWORD PTR [esp+0x28]
1099098a:	f3 0f 11 40 08                                  	movss  DWORD PTR [eax+0x8],xmm0
1099098f:	8b e5                                           	mov    esp,ebp
10990991:	5d                                              	pop    ebp
10990992:	c3                                              	ret
10990993:	cc                                              	int3
10990994:	cc                                              	int3
10990995:	cc                                              	int3
10990996:	cc                                              	int3
10990997:	cc                                              	int3
10990998:	cc                                              	int3
10990999:	cc                                              	int3
1099099a:	cc                                              	int3
1099099b:	cc                                              	int3
1099099c:	cc                                              	int3
1099099d:	cc                                              	int3
1099099e:	cc                                              	int3
1099099f:	cc                                              	int3
