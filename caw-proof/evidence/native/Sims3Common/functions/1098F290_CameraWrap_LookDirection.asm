# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f290 (CameraWrap_LookDirection)
Paired Ghidra pseudocode: 1098F290_CameraWrap_LookDirection.c
Window: [0x1098f290, 0x1098f350) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f290: 55 8b ec 83 e4 f0 83 ec 30 8b 45 14 f3 0f 10 48
1098f2a0: 08 f3 0f 10 00 f3 0f 11 4c 24 08 f3 0f 10 48 04
1098f2b0: 8b 45 10 f3 0f 11 4c 24 04 f3 0f 10 48 08 f3 0f
1098f2c0: 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f 11
1098f2d0: 4c 24 08 f3 0f 10 48 04 0f 29 44 24 10 f3 0f 10
1098f2e0: 00 8b 45 0c f3 0f 11 4c 24 04 f3 0f 10 48 08 f3
1098f2f0: 0f 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f
1098f300: 11 4c 24 08 f3 0f 10 48 04 0f 29 44 24 20 f3 0f
1098f310: 10 00 8d 44 24 10 50 8d 4c 24 24 51 8b 4d 08 f3
1098f320: 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24
1098f330: 08 0f 28 44 24 08 8d 54 24 08 52 0f 29 44 24 0c
1098f340: e8 bb 51 dc ff 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f290 <.text+0x98e290>:
1098f290:	55                                              	push   ebp
1098f291:	8b ec                                           	mov    ebp,esp
1098f293:	83 e4 f0                                        	and    esp,0xfffffff0
1098f296:	83 ec 30                                        	sub    esp,0x30
1098f299:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
1098f29c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f2a1:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f2a5:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f2ab:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f2b0:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098f2b3:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098f2b9:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f2be:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098f2c4:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098f2c9:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098f2cd:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f2d3:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f2d8:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098f2dd:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f2e1:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098f2e4:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098f2ea:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f2ef:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098f2f5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098f2fa:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098f2fe:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f304:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f309:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1098f30e:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f312:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098f316:	50                                              	push   eax
1098f317:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098f31b:	51                                              	push   ecx
1098f31c:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098f31f:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098f325:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1098f32b:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098f331:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1098f336:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1098f33a:	52                                              	push   edx
1098f33b:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
1098f340:	e8 bb 51 dc ff                                  	call   0x10754500
1098f345:	8b e5                                           	mov    esp,ebp
1098f347:	5d                                              	pop    ebp
1098f348:	c3                                              	ret
1098f349:	cc                                              	int3
1098f34a:	cc                                              	int3
1098f34b:	cc                                              	int3
1098f34c:	cc                                              	int3
1098f34d:	cc                                              	int3
1098f34e:	cc                                              	int3
1098f34f:	cc                                              	int3
