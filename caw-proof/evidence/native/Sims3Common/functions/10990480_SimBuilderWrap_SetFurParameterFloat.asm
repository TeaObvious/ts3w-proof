# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990480 (SimBuilderWrap_SetFurParameterFloat)
Paired Ghidra pseudocode: 10990480_SimBuilderWrap_SetFurParameterFloat.c
Window: [0x10990480, 0x10990500) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990500
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990480: 55 8b ec 83 e4 f0 8b 4d 08 33 c0 83 ec 50 3b c8
10990490: 74 6a f3 0f 10 45 10 8b 55 0c f3 0f 11 44 24 0c
109904a0: f3 0f 11 44 24 08 f3 0f 11 44 24 04 f3 0f 11 04
109904b0: 24 0f 28 04 24 0f 29 44 24 10 0f 28 44 24 30 89
109904c0: 44 24 40 89 44 24 44 89 44 24 48 89 44 24 4c 0f
109904d0: 29 04 24 f3 0f 10 44 24 10 8d 44 24 20 50 f3 0f
109904e0: 11 44 24 04 0f 28 44 24 04 52 c7 44 24 28 01 00
109904f0: 00 00 0f 29 44 24 38 e8 c4 b0 a4 ff 8b e5 5d c3

LINEAR DISASSEMBLY
10990480 <.text+0x98f480>:
10990480:	55                                              	push   ebp
10990481:	8b ec                                           	mov    ebp,esp
10990483:	83 e4 f0                                        	and    esp,0xfffffff0
10990486:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10990489:	33 c0                                           	xor    eax,eax
1099048b:	83 ec 50                                        	sub    esp,0x50
1099048e:	3b c8                                           	cmp    ecx,eax
10990490:	74 6a                                           	je     0x109904fc
10990492:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
10990497:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
1099049a:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109904a0:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109904a6:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
109904ac:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109904b1:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109904b5:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109904ba:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
109904bf:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
109904c3:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
109904c7:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
109904cb:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
109904cf:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109904d3:	f3 0f 10 44 24 10                               	movss  xmm0,DWORD PTR [esp+0x10]
109904d9:	8d 44 24 20                                     	lea    eax,[esp+0x20]
109904dd:	50                                              	push   eax
109904de:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
109904e4:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
109904e9:	52                                              	push   edx
109904ea:	c7 44 24 28 01 00 00 00                         	mov    DWORD PTR [esp+0x28],0x1
109904f2:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
109904f7:	e8 c4 b0 a4 ff                                  	call   0x103db5c0
109904fc:	8b e5                                           	mov    esp,ebp
109904fe:	5d                                              	pop    ebp
109904ff:	c3                                              	ret
