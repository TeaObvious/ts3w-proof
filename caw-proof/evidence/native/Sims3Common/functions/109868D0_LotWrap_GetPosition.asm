# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109868d0 (LotWrap_GetPosition)
Paired Ghidra pseudocode: 109868D0_LotWrap_GetPosition.c
Window: [0x109868d0, 0x10986940) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10986940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109868d0: 55 8b ec 83 e4 f0 8b 4d 08 83 ec 20 85 c9 74 55
109868e0: 8b 01 8b 40 64 8d 54 24 10 52 ff d0 0f 28 00 8b
109868f0: 45 0c 0f 29 04 24 f3 0f 10 0c 24 0f 29 44 24 10
10986900: f3 0f 11 0c 24 f3 0f 10 4c 24 14 8b 0c 24 0f 29
10986910: 44 24 10 f3 0f 10 44 24 18 89 08 f3 0f 11 4c 24
10986920: 04 8b 54 24 04 f3 0f 11 44 24 08 8b 4c 24 08 89
10986930: 50 04 89 48 08 8b e5 5d c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109868d0 <.text+0x9858d0>:
109868d0:	55                                              	push   ebp
109868d1:	8b ec                                           	mov    ebp,esp
109868d3:	83 e4 f0                                        	and    esp,0xfffffff0
109868d6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109868d9:	83 ec 20                                        	sub    esp,0x20
109868dc:	85 c9                                           	test   ecx,ecx
109868de:	74 55                                           	je     0x10986935
109868e0:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109868e2:	8b 40 64                                        	mov    eax,DWORD PTR [eax+0x64]
109868e5:	8d 54 24 10                                     	lea    edx,[esp+0x10]
109868e9:	52                                              	push   edx
109868ea:	ff d0                                           	call   eax
109868ec:	0f 28 00                                        	movaps xmm0,XMMWORD PTR [eax]
109868ef:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
109868f2:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109868f6:	f3 0f 10 0c 24                                  	movss  xmm1,DWORD PTR [esp]
109868fb:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10986900:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
10986905:	f3 0f 10 4c 24 14                               	movss  xmm1,DWORD PTR [esp+0x14]
1098690b:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
1098690e:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10986913:	f3 0f 10 44 24 18                               	movss  xmm0,DWORD PTR [esp+0x18]
10986919:	89 08                                           	mov    DWORD PTR [eax],ecx
1098691b:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10986921:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10986925:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1098692b:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1098692f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10986932:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10986935:	8b e5                                           	mov    esp,ebp
10986937:	5d                                              	pop    ebp
10986938:	c3                                              	ret
10986939:	cc                                              	int3
1098693a:	cc                                              	int3
1098693b:	cc                                              	int3
1098693c:	cc                                              	int3
1098693d:	cc                                              	int3
1098693e:	cc                                              	int3
1098693f:	cc                                              	int3
