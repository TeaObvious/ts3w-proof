# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999da0 (WorldWrap_IsValidLotLocation)
Paired Ghidra pseudocode: 10999DA0_WorldWrap_IsValidLotLocation.c
Window: [0x10999da0, 0x10999ef0) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999da0: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 40 85 c9 75 06
10999db0: 32 c0 8b e5 5d c3 8b 45 0c f3 0f 10 00 f3 0f 10
10999dc0: 48 04 8b 45 10 f3 0f 11 44 24 0c f3 0f 11 44 24
10999dd0: 08 f3 0f 11 04 24 f3 0f 11 4c 24 04 0f 28 04 24
10999de0: f3 0f 10 48 04 0f 29 04 24 0f 29 44 24 10 f3 0f
10999df0: 10 04 24 f3 0f 11 44 24 20 f3 0f 10 44 24 14 f3
10999e00: 0f 11 44 24 24 f3 0f 10 00 8b 45 14 f3 0f 11 44
10999e10: 24 0c f3 0f 11 44 24 08 f3 0f 11 04 24 f3 0f 11
10999e20: 4c 24 04 0f 28 04 24 f3 0f 10 48 04 0f 29 04 24
10999e30: 0f 29 44 24 10 f3 0f 10 44 24 10 f3 0f 11 44 24
10999e40: 28 f3 0f 10 44 24 04 f3 0f 11 44 24 2c f3 0f 10
10999e50: 00 8b 45 18 f3 0f 11 44 24 0c f3 0f 11 44 24 08
10999e60: f3 0f 11 04 24 f3 0f 11 4c 24 04 0f 28 04 24 f3
10999e70: 0f 10 48 04 0f 29 04 24 0f 29 44 24 10 f3 0f 10
10999e80: 44 24 10 f3 0f 11 44 24 30 f3 0f 10 44 24 04 f3
10999e90: 0f 11 44 24 34 f3 0f 10 00 f3 0f 11 44 24 0c f3
10999ea0: 0f 11 44 24 08 f3 0f 11 04 24 f3 0f 11 4c 24 04
10999eb0: 0f 28 04 24 0f 29 44 24 10 0f 29 04 24 f3 0f 10
10999ec0: 44 24 10 8d 44 24 20 f3 0f 11 44 24 38 f3 0f 10
10999ed0: 44 24 04 50 f3 0f 11 44 24 40 e8 71 63 8a ff 8b
10999ee0: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999da0 <.text+0x998da0>:
10999da0:	55                                              	push   ebp
10999da1:	8b ec                                           	mov    ebp,esp
10999da3:	83 e4 f0                                        	and    esp,0xfffffff0
10999da6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10999da9:	83 ec 40                                        	sub    esp,0x40
10999dac:	85 c9                                           	test   ecx,ecx
10999dae:	75 06                                           	jne    0x10999db6
10999db0:	32 c0                                           	xor    al,al
10999db2:	8b e5                                           	mov    esp,ebp
10999db4:	5d                                              	pop    ebp
10999db5:	c3                                              	ret
10999db6:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10999db9:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10999dbd:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10999dc2:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
10999dc5:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10999dcb:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10999dd1:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10999dd6:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10999ddc:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10999de0:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10999de5:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10999de9:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999dee:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10999df3:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10999df9:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
10999dff:	f3 0f 11 44 24 24                               	movss  DWORD PTR [esp+0x24],xmm0
10999e05:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10999e09:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
10999e0c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10999e12:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10999e18:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10999e1d:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10999e23:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10999e27:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10999e2c:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10999e30:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999e35:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10999e3b:	f3 0f 11 44 24 28                               	movss  DWORD PTR [esp+0x28],xmm0
10999e41:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
10999e47:	f3 0f 11 44 24 2c                               	movss  DWORD PTR [esp+0x2c],xmm0
10999e4d:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10999e51:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
10999e54:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10999e5a:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10999e60:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10999e65:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10999e6b:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10999e6f:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10999e74:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10999e78:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999e7d:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10999e83:	f3 0f 11 44 24 30                               	movss  DWORD PTR [esp+0x30],xmm0
10999e89:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
10999e8f:	f3 0f 11 44 24 34                               	movss  DWORD PTR [esp+0x34],xmm0
10999e95:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10999e99:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10999e9f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10999ea5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10999eaa:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10999eb0:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10999eb4:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10999eb9:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10999ebd:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
10999ec3:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10999ec7:	f3 0f 11 44 24 38                               	movss  DWORD PTR [esp+0x38],xmm0
10999ecd:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
10999ed3:	50                                              	push   eax
10999ed4:	f3 0f 11 44 24 40                               	movss  DWORD PTR [esp+0x40],xmm0
10999eda:	e8 71 63 8a ff                                  	call   0x10240250
10999edf:	8b e5                                           	mov    esp,ebp
10999ee1:	5d                                              	pop    ebp
10999ee2:	c3                                              	ret
10999ee3:	cc                                              	int3
10999ee4:	cc                                              	int3
10999ee5:	cc                                              	int3
10999ee6:	cc                                              	int3
10999ee7:	cc                                              	int3
10999ee8:	cc                                              	int3
10999ee9:	cc                                              	int3
10999eea:	cc                                              	int3
10999eeb:	cc                                              	int3
10999eec:	cc                                              	int3
10999eed:	cc                                              	int3
10999eee:	cc                                              	int3
10999eef:	cc                                              	int3
