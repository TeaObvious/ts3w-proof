# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fe80 (FootprintComponent_DrawFootprintPolygons)
Paired Ghidra pseudocode: 1097FE80_FootprintComponent_DrawFootprintPolygons.c
Window: [0x1097fe80, 0x1097ff50) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097ff50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fe80: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 50 85 c9 0f 84
1097fe90: b8 00 00 00 8b 45 0c 85 c0 0f 84 ad 00 00 00 0f
1097fea0: 57 c0 f3 0f 10 0d d4 b0 ac 10 8b 55 10 6a 01 f3
1097feb0: 0f 11 44 24 10 f3 0f 11 44 24 0c f3 0f 11 44 24
1097fec0: 08 f3 0f 11 4c 24 04 0f 28 54 24 04 6a 00 6a 00
1097fed0: f3 0f 11 44 24 18 f3 0f 11 44 24 14 f3 0f 11 4c
1097fee0: 24 10 f3 0f 11 44 24 0c 68 00 ff 00 ff 0f 29 54
1097fef0: 24 20 0f 28 54 24 10 f3 0f 11 44 24 1c f3 0f 11
1097ff00: 4c 24 18 f3 0f 11 44 24 14 f3 0f 11 44 24 10 52
1097ff10: 0f 29 54 24 34 0f 28 54 24 14 8d 54 24 24 f3 0f
1097ff20: 11 4c 24 20 f3 0f 11 44 24 1c f3 0f 11 44 24 18
1097ff30: f3 0f 11 44 24 14 0f 28 44 24 14 52 50 0f 29 54
1097ff40: 24 4c 0f 29 44 24 5c e8 64 9a db ff 8b e5 5d c3

LINEAR DISASSEMBLY
1097fe80 <.text+0x97ee80>:
1097fe80:	55                                              	push   ebp
1097fe81:	8b ec                                           	mov    ebp,esp
1097fe83:	83 e4 f0                                        	and    esp,0xfffffff0
1097fe86:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1097fe89:	83 ec 50                                        	sub    esp,0x50
1097fe8c:	85 c9                                           	test   ecx,ecx
1097fe8e:	0f 84 b8 00 00 00                               	je     0x1097ff4c
1097fe94:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1097fe97:	85 c0                                           	test   eax,eax
1097fe99:	0f 84 ad 00 00 00                               	je     0x1097ff4c
1097fe9f:	0f 57 c0                                        	xorps  xmm0,xmm0
1097fea2:	f3 0f 10 0d d4 b0 ac 10                         	movss  xmm1,DWORD PTR ds:0x10acb0d4
1097feaa:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
1097fead:	6a 01                                           	push   0x1
1097feaf:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1097feb5:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097febb:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1097fec1:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1097fec7:	0f 28 54 24 04                                  	movaps xmm2,XMMWORD PTR [esp+0x4]
1097fecc:	6a 00                                           	push   0x0
1097fece:	6a 00                                           	push   0x0
1097fed0:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1097fed6:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1097fedc:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1097fee2:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1097fee8:	68 00 ff 00 ff                                  	push   0xff00ff00
1097feed:	0f 29 54 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm2
1097fef2:	0f 28 54 24 10                                  	movaps xmm2,XMMWORD PTR [esp+0x10]
1097fef7:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1097fefd:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
1097ff03:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1097ff09:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
1097ff0f:	52                                              	push   edx
1097ff10:	0f 29 54 24 34                                  	movaps XMMWORD PTR [esp+0x34],xmm2
1097ff15:	0f 28 54 24 14                                  	movaps xmm2,XMMWORD PTR [esp+0x14]
1097ff1a:	8d 54 24 24                                     	lea    edx,[esp+0x24]
1097ff1e:	f3 0f 11 4c 24 20                               	movss  DWORD PTR [esp+0x20],xmm1
1097ff24:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
1097ff2a:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
1097ff30:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1097ff36:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
1097ff3b:	52                                              	push   edx
1097ff3c:	50                                              	push   eax
1097ff3d:	0f 29 54 24 4c                                  	movaps XMMWORD PTR [esp+0x4c],xmm2
1097ff42:	0f 29 44 24 5c                                  	movaps XMMWORD PTR [esp+0x5c],xmm0
1097ff47:	e8 64 9a db ff                                  	call   0x107399b0
1097ff4c:	8b e5                                           	mov    esp,ebp
1097ff4e:	5d                                              	pop    ebp
1097ff4f:	c3                                              	ret
