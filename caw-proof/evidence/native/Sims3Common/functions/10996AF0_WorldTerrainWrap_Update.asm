# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10996af0 (WorldTerrainWrap_Update)
Paired Ghidra pseudocode: 10996AF0_WorldTerrainWrap_Update.c
Window: [0x10996af0, 0x10996b40) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10996b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10996af0: 55 8b ec 83 e4 f0 83 ec 10 f3 0f 10 4d 10 f3 0f
10996b00: 10 45 0c 8b 4d 08 f3 0f 11 4c 24 08 0f 57 c9 f3
10996b10: 0f 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11 04 24
10996b20: 0f 28 04 24 6a 00 8d 44 24 04 50 0f 29 44 24 08
10996b30: e8 7b 35 8c ff 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10996af0 <.text+0x995af0>:
10996af0:	55                                              	push   ebp
10996af1:	8b ec                                           	mov    ebp,esp
10996af3:	83 e4 f0                                        	and    esp,0xfffffff0
10996af6:	83 ec 10                                        	sub    esp,0x10
10996af9:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10996afe:	f3 0f 10 45 0c                                  	movss  xmm0,DWORD PTR [ebp+0xc]
10996b03:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10996b06:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10996b0c:	0f 57 c9                                        	xorps  xmm1,xmm1
10996b0f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10996b15:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10996b1b:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10996b20:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10996b24:	6a 00                                           	push   0x0
10996b26:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10996b2a:	50                                              	push   eax
10996b2b:	0f 29 44 24 08                                  	movaps XMMWORD PTR [esp+0x8],xmm0
10996b30:	e8 7b 35 8c ff                                  	call   0x1025a0b0
10996b35:	8b e5                                           	mov    esp,ebp
10996b37:	5d                                              	pop    ebp
10996b38:	c3                                              	ret
10996b39:	cc                                              	int3
10996b3a:	cc                                              	int3
10996b3b:	cc                                              	int3
10996b3c:	cc                                              	int3
10996b3d:	cc                                              	int3
10996b3e:	cc                                              	int3
10996b3f:	cc                                              	int3
