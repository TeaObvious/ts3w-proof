# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986210 (GraphicsUtilWrap_DrawWorldLine)
Paired Ghidra pseudocode: 10986210_GraphicsUtilWrap_DrawWorldLine.c
Window: [0x10986210, 0x109862a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x109862a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986210: 55 8b ec 83 e4 f0 83 ec 20 8b 45 0c f3 0f 10 48
10986220: 08 f3 0f 10 00 83 7d 14 00 8b 4d 10 f3 0f 11 4c
10986230: 24 08 f3 0f 10 48 04 8b 45 08 f3 0f 11 4c 24 04
10986240: f3 0f 10 48 08 f3 0f 11 44 24 0c f3 0f 11 04 24
10986250: 0f 28 04 24 f3 0f 11 4c 24 08 f3 0f 10 48 04 0f
10986260: 29 44 24 10 f3 0f 10 00 0f 95 c0 8d 54 24 10 f3
10986270: 0f 11 44 24 0c f3 0f 11 4c 24 04 f3 0f 11 04 24
10986280: 0f 28 04 24 0f 29 04 24 50 51 6a 00 52 8d 44 24
10986290: 10 50 e8 e9 c6 c3 ff 83 c4 14 8b e5 5d c3 cc cc

LINEAR DISASSEMBLY
10986210 <.text+0x985210>:
10986210:	55                                              	push   ebp
10986211:	8b ec                                           	mov    ebp,esp
10986213:	83 e4 f0                                        	and    esp,0xfffffff0
10986216:	83 ec 20                                        	sub    esp,0x20
10986219:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098621c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10986221:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10986225:	83 7d 14 00                                     	cmp    DWORD PTR [ebp+0x14],0x0
10986229:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
1098622c:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10986232:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10986237:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
1098623a:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10986240:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10986245:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098624b:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10986250:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10986254:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098625a:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098625f:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10986264:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10986268:	0f 95 c0                                        	setne  al
1098626b:	8d 54 24 10                                     	lea    edx,[esp+0x10]
1098626f:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10986275:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098627b:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10986280:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10986284:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10986288:	50                                              	push   eax
10986289:	51                                              	push   ecx
1098628a:	6a 00                                           	push   0x0
1098628c:	52                                              	push   edx
1098628d:	8d 44 24 10                                     	lea    eax,[esp+0x10]
10986291:	50                                              	push   eax
10986292:	e8 e9 c6 c3 ff                                  	call   0x105c2980
10986297:	83 c4 14                                        	add    esp,0x14
1098629a:	8b e5                                           	mov    esp,ebp
1098629c:	5d                                              	pop    ebp
1098629d:	c3                                              	ret
1098629e:	cc                                              	int3
1098629f:	cc                                              	int3
