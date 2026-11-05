# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10986350 (LineSet_AddSegment)
Paired Ghidra pseudocode: 10986350_LineSet_AddSegment.c
Window: [0x10986350, 0x109863e0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x109863e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10986350: 55 8b ec 83 e4 f0 83 ec 20 8b 45 10 f3 0f 10 48
10986360: 08 f3 0f 10 00 f3 0f 11 4c 24 08 f3 0f 10 48 04
10986370: 8b 45 0c f3 0f 11 4c 24 04 f3 0f 10 48 08 f3 0f
10986380: 11 44 24 0c f3 0f 11 04 24 0f 28 04 24 f3 0f 11
10986390: 4c 24 08 f3 0f 10 48 04 0f 29 44 24 10 f3 0f 10
109863a0: 00 8b 45 14 50 50 8d 44 24 18 50 8d 4c 24 0c f3
109863b0: 0f 11 44 24 18 f3 0f 11 4c 24 10 f3 0f 11 44 24
109863c0: 0c 0f 28 44 24 0c 51 8b 4d 08 0f 29 44 24 10 e8
109863d0: 0c 90 b3 ff 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10986350 <.text+0x985350>:
10986350:	55                                              	push   ebp
10986351:	8b ec                                           	mov    ebp,esp
10986353:	83 e4 f0                                        	and    esp,0xfffffff0
10986356:	83 ec 20                                        	sub    esp,0x20
10986359:	8b 45 10                                        	mov    eax,DWORD PTR [ebp+0x10]
1098635c:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
10986361:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
10986365:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1098636b:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10986370:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
10986373:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
10986379:	f3 0f 10 48 08                                  	movss  xmm1,DWORD PTR [eax+0x8]
1098637e:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10986384:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
10986389:	0f 28 04 24                                     	movaps xmm0,XMMWORD PTR [esp]
1098638d:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
10986393:	f3 0f 10 48 04                                  	movss  xmm1,DWORD PTR [eax+0x4]
10986398:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
1098639d:	f3 0f 10 00                                     	movss  xmm0,DWORD PTR [eax]
109863a1:	8b 45 14                                        	mov    eax,DWORD PTR [ebp+0x14]
109863a4:	50                                              	push   eax
109863a5:	50                                              	push   eax
109863a6:	8d 44 24 18                                     	lea    eax,[esp+0x18]
109863aa:	50                                              	push   eax
109863ab:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
109863af:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
109863b5:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
109863bb:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
109863c1:	0f 28 44 24 0c                                  	movaps xmm0,XMMWORD PTR [esp+0xc]
109863c6:	51                                              	push   ecx
109863c7:	8b 4d 08                                        	mov    ecx,DWORD PTR [ebp+0x8]
109863ca:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
109863cf:	e8 0c 90 b3 ff                                  	call   0x104bf3e0
109863d4:	8b e5                                           	mov    esp,ebp
109863d6:	5d                                              	pop    ebp
109863d7:	c3                                              	ret
109863d8:	cc                                              	int3
109863d9:	cc                                              	int3
109863da:	cc                                              	int3
109863db:	cc                                              	int3
109863dc:	cc                                              	int3
109863dd:	cc                                              	int3
109863de:	cc                                              	int3
109863df:	cc                                              	int3
