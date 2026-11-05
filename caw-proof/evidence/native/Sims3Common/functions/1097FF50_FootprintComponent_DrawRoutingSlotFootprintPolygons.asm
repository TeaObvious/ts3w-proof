# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ff50 (FootprintComponent_DrawRoutingSlotFootprintPolygons)
Paired Ghidra pseudocode: 1097FF50_FootprintComponent_DrawRoutingSlotFootprintPolygons.c
Window: [0x1097ff50, 0x10980020) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ff50: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 50 85 c9 0f 84
1097ff60: ac 00 00 00 8b 45 0c 85 c0 0f 84 a1 00 00 00 0f
1097ff70: 57 c0 f3 0f 10 0d d4 b0 ac 10 8b 55 10 f3 0f 11
1097ff80: 44 24 0c f3 0f 11 44 24 08 f3 0f 11 44 24 04 f3
1097ff90: 0f 11 0c 24 0f 28 14 24 f3 0f 11 44 24 0c f3 0f
1097ffa0: 11 44 24 08 f3 0f 11 4c 24 04 f3 0f 11 04 24 6a
1097ffb0: 01 0f 29 54 24 14 0f 28 54 24 04 f3 0f 11 44 24
1097ffc0: 10 f3 0f 11 4c 24 0c f3 0f 11 44 24 08 f3 0f 11
1097ffd0: 44 24 04 52 0f 29 54 24 28 0f 28 54 24 08 8d 54
1097ffe0: 24 18 f3 0f 11 4c 24 14 f3 0f 11 44 24 10 f3 0f
1097fff0: 11 44 24 0c f3 0f 11 44 24 08 0f 28 44 24 08 52
10980000: 50 0f 29 54 24 40 0f 29 44 24 50 e8 10 93 db ff
10980010: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ff50 <.text+0x97ef50>:
1097ff50:	55                                              	push   ebp
1097ff51:	8b ec                                           	mov    ebp,esp
1097ff53:	83 e4 f0                                        	and    esp,0xfffffff0
1097ff56:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1097ff59:	83 ec 50                                        	sub    esp,0x50
1097ff5c:	85 c9                                           	test   ecx,ecx
1097ff5e:	0f 84 ac 00 00 00                               	je     0x10980010
1097ff64:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1097ff67:	85 c0                                           	test   eax,eax
1097ff69:	0f 84 a1 00 00 00                               	je     0x10980010
1097ff6f:	0f 57 c0                                        	xorps  xmm0,xmm0
1097ff72:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1097ff7a:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
1097ff7d:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097ff83:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097ff89:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1097ff8f:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1097ff94:	0f 28 14 24                                     	movaps xmm2,XMMWORD PTR [esp]
1097ff98:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097ff9e:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097ffa4:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1097ffaa:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1097ffaf:	6a 01                                           	push   0x1
1097ffb1:	0f 29 54 24 14                                  	movaps XMMWORD PTR [esp+0x14],xmm2
1097ffb6:	0f 28 54 24 04                                  	movaps xmm2,XMMWORD PTR [esp+0x4]
1097ffbb:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1097ffc1:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1097ffc7:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097ffcd:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
1097ffd3:	52                                              	push   edx
1097ffd4:	0f 29 54 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm2
1097ffd9:	0f 28 54 24 08                                  	movaps xmm2,XMMWORD PTR [esp+0x8]
1097ffde:	8d 54 24 18                                     	lea    edx,[esp+0x18]
1097ffe2:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
1097ffe8:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1097ffee:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097fff4:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097fffa:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1097ffff:	52                                              	push   edx
10980000:	50                                              	push   eax
10980001:	0f 29 54 24 40                                  	movaps XMMWORD PTR [esp+0x40],xmm2
10980006:	0f 29 44 24 50                                  	movaps XMMWORD PTR [esp+0x50],xmm0
1098000b:	e8 10 93 db ff                                  	call   0x10739320
10980010:	8b e5                                           	mov    esp,ebp
10980012:	5d                                              	pop    ebp
10980013:	c3                                              	ret
10980014:	cc                                              	int3
10980015:	cc                                              	int3
10980016:	cc                                              	int3
10980017:	cc                                              	int3
10980018:	cc                                              	int3
10980019:	cc                                              	int3
1098001a:	cc                                              	int3
1098001b:	cc                                              	int3
1098001c:	cc                                              	int3
1098001d:	cc                                              	int3
1098001e:	cc                                              	int3
1098001f:	cc                                              	int3
