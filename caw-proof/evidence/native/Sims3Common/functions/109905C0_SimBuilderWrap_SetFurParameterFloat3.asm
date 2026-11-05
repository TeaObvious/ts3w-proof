# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109905c0 (SimBuilderWrap_SetFurParameterFloat3)
Paired Ghidra pseudocode: 109905C0_SimBuilderWrap_SetFurParameterFloat3.c
Window: [0x109905c0, 0x109906c0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x109906c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109905c0: 55 8b ec 83 e4 f0 8b 4d 08 33 c0 83 ec 50 3b c8
109905d0: 0f 84 db 00 00 00 f3 0f 10 45 10 f3 0f 11 44 24
109905e0: 0c f3 0f 11 44 24 08 f3 0f 11 44 24 04 f3 0f 11
109905f0: 04 24 0f 28 04 24 0f 29 04 24 0f 28 44 24 30 8b
10990600: 55 0c 0f 29 44 24 10 f3 0f 10 04 24 f3 0f 11 44
10990610: 24 10 f3 0f 10 45 14 f3 0f 11 44 24 0c f3 0f 11
10990620: 44 24 08 f3 0f 11 44 24 04 f3 0f 11 04 24 0f 28
10990630: 04 24 0f 29 04 24 0f 28 44 24 10 0f 29 44 24 10
10990640: f3 0f 10 04 24 f3 0f 11 44 24 14 f3 0f 10 45 18
10990650: f3 0f 11 44 24 0c f3 0f 11 44 24 08 f3 0f 11 44
10990660: 24 04 f3 0f 11 04 24 0f 28 04 24 0f 29 04 24 0f
10990670: 28 44 24 10 89 44 24 40 89 44 24 44 89 44 24 48
10990680: 89 44 24 4c 0f 29 44 24 10 f3 0f 10 04 24 8d 44
10990690: 24 20 50 f3 0f 11 44 24 1c 0f 28 44 24 14 52 c7
109906a0: 44 24 28 03 00 00 00 0f 29 44 24 38 e8 0f af a4
109906b0: ff 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109905c0 <.text+0x98f5c0>:
109905c0:	55                                              	push   ebp
109905c1:	8b ec                                           	mov    ebp,esp
109905c3:	83 e4 f0                                        	and    esp,0xfffffff0
109905c6:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109905c9:	33 c0                                           	xor    eax,eax
109905cb:	83 ec 50                                        	sub    esp,0x50
109905ce:	3b c8                                           	cmp    ecx,eax
109905d0:	0f 84 db 00 00 00                               	je     0x109906b1
109905d6:	f3 0f 10 45 10                                  	movss  xmm0,DWORD PTR [ebp+0x10]
109905db:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109905e1:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
109905e7:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
109905ed:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
109905f2:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
109905f6:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
109905fa:	0f 28 44 24 30                                  	movaps xmm0,XMMWORD PTR [esp+0x30]
109905ff:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
10990602:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990607:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
1099060c:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
10990612:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10990617:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
1099061d:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
10990623:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990629:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1099062e:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
10990632:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
10990636:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
1099063b:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990640:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
10990645:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
1099064b:	f3 0f 10 45 18                                  	movss  xmm0,DWORD PTR [ebp+0x18]
10990650:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10990656:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
1099065c:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
10990662:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10990667:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1099066b:	0f 29 04 24                                     	movaps XMMWORD PTR [esp],xmm0
1099066f:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
10990674:	89 44 24 40                                     	mov    DWORD PTR [esp+0x40],eax
10990678:	89 44 24 44                                     	mov    DWORD PTR [esp+0x44],eax
1099067c:	89 44 24 48                                     	mov    DWORD PTR [esp+0x48],eax
10990680:	89 44 24 4c                                     	mov    DWORD PTR [esp+0x4c],eax
10990684:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10990689:	f3 0f 10 04 24                                  	movss  xmm0,DWORD PTR [esp]
1099068e:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10990692:	50                                              	push   eax
10990693:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
10990699:	0f 28 44 24 14                                  	movaps xmm0,XMMWORD PTR [esp+0x14]
1099069e:	52                                              	push   edx
1099069f:	c7 44 24 28 03 00 00 00                         	mov    DWORD PTR [esp+0x28],0x3
109906a7:	0f 29 44 24 38                                  	movaps XMMWORD PTR [esp+0x38],xmm0
109906ac:	e8 0f af a4 ff                                  	call   0x103db5c0
109906b1:	8b e5                                           	mov    esp,ebp
109906b3:	5d                                              	pop    ebp
109906b4:	c3                                              	ret
109906b5:	cc                                              	int3
109906b6:	cc                                              	int3
109906b7:	cc                                              	int3
109906b8:	cc                                              	int3
109906b9:	cc                                              	int3
109906ba:	cc                                              	int3
109906bb:	cc                                              	int3
109906bc:	cc                                              	int3
109906bd:	cc                                              	int3
109906be:	cc                                              	int3
109906bf:	cc                                              	int3
