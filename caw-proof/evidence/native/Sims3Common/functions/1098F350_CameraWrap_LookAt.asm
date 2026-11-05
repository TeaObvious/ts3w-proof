# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f350 (CameraWrap_LookAt)
Paired Ghidra pseudocode: 1098F350_CameraWrap_LookAt.c
Window: [0x1098f350, 0x1098f410) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f410
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f350: 55 8b ec 83 e4 f0 83 ec 30 8b 45 14 f3 0f 10 48
1098f360: 08 f3 0f 10 00 f3 0f 11 4c 24 08 f3 0f 10 48 04
1098f370: 8b 45 10 f3 0f 11 4c 24 04 f3 0f 10 48 08 f3 0f
1098f380: 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f 11
1098f390: 4c 24 08 f3 0f 10 48 04 0f 29 44 24 10 f3 0f 10
1098f3a0: 00 8b 45 0c f3 0f 11 4c 24 04 f3 0f 10 48 08 f3
1098f3b0: 0f 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f
1098f3c0: 11 4c 24 08 f3 0f 10 48 04 0f 29 44 24 20 f3 0f
1098f3d0: 10 00 8d 44 24 10 50 8d 4c 24 24 51 8b 4d 08 f3
1098f3e0: 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24
1098f3f0: 08 0f 28 44 24 08 8d 54 24 08 52 0f 29 44 24 0c
1098f400: e8 bb 53 dc ff 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f350 <.text+0x98e350>:
1098f350:	55                                              	push   ebp
1098f351:	8b ec                                           	mov    ebp,esp
1098f353:	83 e4 f0                                        	and    esp,0xfffffff0
1098f356:	83 ec 30                                        	sub    esp,0x30
1098f359:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
1098f35c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f361:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f365:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f36b:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f370:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098f373:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098f379:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f37e:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098f384:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098f389:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098f38d:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f393:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f398:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098f39d:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f3a1:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098f3a4:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1098f3aa:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098f3af:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1098f3b5:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1098f3ba:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098f3be:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098f3c4:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
1098f3c9:	0f 29 44 24 20                                  	movaps XMMWORD PTR [esp+0x20],xmm0
1098f3ce:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
1098f3d2:	8d 44 24 10                                     	lea    eax,[esp+0x10]
1098f3d6:	50                                              	push   eax
1098f3d7:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098f3db:	51                                              	push   ecx
1098f3dc:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
1098f3df:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1098f3e5:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
1098f3eb:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098f3f1:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
1098f3f6:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1098f3fa:	52                                              	push   edx
1098f3fb:	0f 29 44 24 0c                                  	movaps XMMWORD PTR [esp+0xc],xmm0
1098f400:	e8 bb 53 dc ff                                  	call   0x107547c0
1098f405:	8b e5                                           	mov    esp,ebp
1098f407:	5d                                              	pop    ebp
1098f408:	c3                                              	ret
1098f409:	cc                                              	int3
1098f40a:	cc                                              	int3
1098f40b:	cc                                              	int3
1098f40c:	cc                                              	int3
1098f40d:	cc                                              	int3
1098f40e:	cc                                              	int3
1098f40f:	cc                                              	int3
