# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996dc0 (WorldTerrainWrap_CreateSticker)
Paired Ghidra pseudocode: 10996DC0_WorldTerrainWrap_CreateSticker.c
Window: [0x10996dc0, 0x10996e20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996dc0: 55 8b ec 83 e4 f0 83 ec 10 a1 c4 00 c7 10 d9 45
10996dd0: 14 8b 48 5c f3 0f 10 45 0c f3 0f 10 4d 10 51 f3
10996de0: 0f 11 44 24 10 d9 1c 24 f3 0f 11 44 24 0c f3 0f
10996df0: 11 4c 24 08 f3 0f 11 44 24 04 0f 28 44 24 04 8d
10996e00: 54 24 04 52 0f 29 44 24 08 e8 72 fd 7a ff 8b e5
10996e10: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996dc0 <.text+0x995dc0>:
10996dc0:	55                                              	push   ebp
10996dc1:	8b ec                                           	mov    ebp,esp
10996dc3:	83 e4 f0                                        	and    esp,0xfffffff0
10996dc6:	83 ec 10                                        	sub    esp,0x10
10996dc9:	a1 c4 00 c7 10                                  	mov    eax,ds:0x10c700c4
10996dce:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10996dd1:	8b 48 5c                                        	mov    ecx,DWORD PTR [eax+0x5c]
10996dd4:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10996dd9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10996dde:	51                                              	push   ecx
10996ddf:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10996de5:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10996de8:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996dee:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10996df4:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10996dfa:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
10996dff:	8d 54 24 04                                     	lea    edx,[esp+0x4]
10996e03:	52                                              	push   edx
10996e04:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
10996e09:	e8 72 fd 7a ff                                  	call   0x10146b80
10996e0e:	8b e5                                           	mov    esp,ebp
10996e10:	5d                                              	pop    ebp
10996e11:	c3                                              	ret
10996e12:	cc                                              	int3
10996e13:	cc                                              	int3
10996e14:	cc                                              	int3
10996e15:	cc                                              	int3
10996e16:	cc                                              	int3
10996e17:	cc                                              	int3
10996e18:	cc                                              	int3
10996e19:	cc                                              	int3
10996e1a:	cc                                              	int3
10996e1b:	cc                                              	int3
10996e1c:	cc                                              	int3
10996e1d:	cc                                              	int3
10996e1e:	cc                                              	int3
10996e1f:	cc                                              	int3
