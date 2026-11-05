# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10980310 (TransformComponent_SetAbsolutePosition)
Paired Ghidra pseudocode: 10980310_TransformComponent_SetAbsolutePosition.c
Window: [0x10980310, 0x10980360) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10980360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10980310: 55 8b ec 83 e4 f0 83 ec 10 8b 45 0c f3 0f 10 48
10980320: 08 f3 0f 10 00 8b 4d 08 f3 0f 11 4c 24 08 f3 0f
10980330: 10 48 04 f3 0f 11 44 24 0c f3 0f 11 4c 24 04 f3
10980340: 0f 11 04 24 0f 28 04 24 8d 04 24 50 0f 29 44 24
10980350: 04 e8 da a8 dc ff 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
10980310 <.text+0x97f310>:
10980310:	55                                              	push   ebp
10980311:	8b ec                                           	mov    ebp,esp
10980313:	83 e4 f0                                        	and    esp,0xfffffff0
10980316:	83 ec 10                                        	sub    esp,0x10
10980319:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098031c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10980321:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10980325:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
10980328:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098032e:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10980333:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10980339:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098033f:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10980344:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10980348:	8d 04 24                                        	lea    eax,[esp]
1098034b:	50                                              	push   eax
1098034c:	0f 29 44 24 04                                  	movaps XMMWORD PTR [esp+0x4],xmm0
10980351:	e8 da a8 dc ff                                  	call   0x1074ac30
10980356:	8b e5                                           	mov    esp,ebp
10980358:	5d                                              	pop    ebp
10980359:	c3                                              	ret
1098035a:	cc                                              	int3
1098035b:	cc                                              	int3
1098035c:	cc                                              	int3
1098035d:	cc                                              	int3
1098035e:	cc                                              	int3
1098035f:	cc                                              	int3
