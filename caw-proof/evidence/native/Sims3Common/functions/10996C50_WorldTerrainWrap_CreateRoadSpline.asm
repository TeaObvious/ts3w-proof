# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996c50 (WorldTerrainWrap_CreateRoadSpline)
Paired Ghidra pseudocode: 10996C50_WorldTerrainWrap_CreateRoadSpline.c
Window: [0x10996c50, 0x10996d50) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996d50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996c50: 55 8b ec 83 e4 f0 83 ec 40 a1 c4 00 c7 10 8b 48
10996c60: 5c f3 0f 10 45 24 f3 0f 10 4d 28 b8 01 00 00 00
10996c70: 39 45 34 f3 0f 11 44 24 0c 0f 94 c2 39 45 30 f3
10996c80: 0f 11 44 24 08 f3 0f 11 4c 24 04 f3 0f 10 4d 20
10996c90: f3 0f 11 04 24 0f 28 04 24 52 0f 94 c2 39 45 2c
10996ca0: 0f 29 44 24 14 f3 0f 10 45 1c 0f 94 c0 f3 0f 11
10996cb0: 44 24 10 f3 0f 11 44 24 0c 52 f3 0f 11 4c 24 0c
10996cc0: f3 0f 10 4d 18 f3 0f 11 44 24 08 0f 28 44 24 08
10996cd0: 50 0f 29 44 24 2c f3 0f 10 45 14 f3 0f 11 44 24
10996ce0: 18 f3 0f 11 44 24 14 f3 0f 11 4c 24 10 f3 0f 10
10996cf0: 4d 10 f3 0f 11 44 24 0c 0f 28 44 24 0c 8d 54 24
10996d00: 1c 52 8d 44 24 30 50 0f 29 44 24 44 f3 0f 10 45
10996d10: 0c 8d 54 24 44 f3 0f 11 44 24 20 f3 0f 11 44 24
10996d20: 1c f3 0f 11 4c 24 18 f3 0f 11 44 24 14 0f 28 44
10996d30: 24 14 52 8d 44 24 18 50 0f 29 44 24 1c e8 de fc
10996d40: 7a ff 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996c50 <.text+0x995c50>:
10996c50:	55                                              	push   ebp
10996c51:	8b ec                                           	mov    ebp,esp
10996c53:	83 e4 f0                                        	and    esp,0xfffffff0
10996c56:	83 ec 40                                        	sub    esp,0x40
10996c59:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996c5e:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
10996c61:	f3 0f 10 45 24                                  	movss  xmm0,DWORD PTR [ebp+0x24]
10996c66:	f3 0f 10 4d 28                                  	movss  xmm1,DWORD PTR [ebp+0x28]
10996c6b:	b8 01 00 00 00                                  	mov    eax,0x1
10996c70:	39 45 34                                        	cmp    DWORD PTR [ebp+0x34],eax
10996c73:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996c79:	0f 94 c2                                        	sete   dl
10996c7c:	39 45 30                                        	cmp    DWORD PTR [ebp+0x30],eax
10996c7f:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10996c85:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10996c8b:	f3 0f 10 4d 20                                  	movss  xmm1,DWORD PTR [ebp+0x20]
10996c90:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10996c95:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10996c99:	52                                              	push   edx
10996c9a:	0f 94 c2                                        	sete   dl
10996c9d:	39 45 2c                                        	cmp    DWORD PTR [ebp+0x2c],eax
10996ca0:	0f 29 44 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm0
10996ca5:	f3 0f 10 45 1c                                  	movss  xmm0,DWORD PTR [ebp+0x1c]
10996caa:	0f 94 c0                                        	sete   al
10996cad:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10996cb3:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996cb9:	52                                              	push   edx
10996cba:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
10996cc0:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10996cc5:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10996ccb:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
10996cd0:	50                                              	push   eax
10996cd1:	0f 29 44 24 2c                                  	movaps XMMWORD PTR [esp+0x2c],xmm0
10996cd6:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10996cdb:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10996ce1:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10996ce7:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10996ced:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10996cf2:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996cf8:	0f 28 44 24 0c                                  	movaps xmm0,XMMWORD PTR [esp+0xc]
10996cfd:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
10996d01:	52                                              	push   edx
10996d02:	8d 44 24 30                                     	lea    eax,[esp+0x30]
10996d06:	50                                              	push   eax
10996d07:	0f 29 44 24 44                                  	movaps XMMWORD PTR [esp+0x44],xmm0
10996d0c:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10996d11:	8d 54 24 44                                     	lea    edx,[esp+0x44]
10996d15:	f3 0f 11 44 24 20                               	movss  DWORD PTR [esp+0x20],xmm0
10996d1b:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10996d21:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
10996d27:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
10996d2d:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
10996d32:	52                                              	push   edx
10996d33:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10996d37:	50                                              	push   eax
10996d38:	0f 29 44 24 1c                                  	movaps XMMWORD PTR [esp+0x1c],xmm0
10996d3d:	e8 de fc 7a ff                                  	call   0x10146a20
10996d42:	8b e5                                           	mov    esp,ebp
10996d44:	5d                                              	pop    ebp
10996d45:	c3                                              	ret
10996d46:	cc                                              	int3
10996d47:	cc                                              	int3
10996d48:	cc                                              	int3
10996d49:	cc                                              	int3
10996d4a:	cc                                              	int3
10996d4b:	cc                                              	int3
10996d4c:	cc                                              	int3
10996d4d:	cc                                              	int3
10996d4e:	cc                                              	int3
10996d4f:	cc                                              	int3
