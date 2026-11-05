# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532770 (DebugDraw_DrawLineTimed)
Paired Ghidra pseudocode: 10532770_DebugDraw_DrawLineTimed.c
Window: [0x10532770, 0x10532800) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532770: 55 8b ec 83 e4 f0 83 ec 20 f3 0f 10 4d 1c d9 45
10532780: 24 f3 0f 10 45 14 8b 45 20 f3 0f 11 4c 24 08 f3
10532790: 0f 10 4d 18 51 f3 0f 11 4c 24 08 d9 1c 24 f3 0f
105327a0: 10 4d 10 f3 0f 11 44 24 10 f3 0f 11 44 24 04 0f
105327b0: 28 44 24 04 f3 0f 11 4c 24 0c f3 0f 10 4d 0c 50
105327c0: 0f 29 44 24 18 f3 0f 10 45 08 8d 4c 24 18 f3 0f
105327d0: 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44 24 08
105327e0: 0f 28 44 24 08 51 8d 54 24 0c 52 0f 29 44 24 10
105327f0: e8 bb fd ff ff 83 c4 10 8b e5 5d c3 cc cc cc cc

LINEAR DISASSEMBLY
10532770 <.text+0x531770>:
10532770:	55                                              	push   ebp
10532771:	8b ec                                           	mov    ebp,esp
10532773:	83 e4 f0                                        	and    esp,0xfffffff0
10532776:	83 ec 20                                        	sub    esp,0x20
10532779:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
1053277e:	d9 45 24                                        	fld    DWORD PTR [ebp+0x24]
10532781:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
10532786:	8b 45 20                                        	mov    eax,DWORD PTR [ebp+0x20]
10532789:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1053278f:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
10532794:	51                                              	push   ecx
10532795:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
1053279b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053279e:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
105327a3:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
105327a9:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
105327af:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
105327b4:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
105327ba:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
105327bf:	50                                              	push   eax
105327c0:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
105327c5:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
105327ca:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
105327ce:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
105327d4:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
105327da:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
105327e0:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
105327e5:	51                                              	push   ecx
105327e6:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
105327ea:	52                                              	push   edx
105327eb:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
105327f0:	e8 bb fd ff ff                                  	call   0x105325b0
105327f5:	83 c4 10                                        	add    esp,0x10
105327f8:	8b e5                                           	mov    esp,ebp
105327fa:	5d                                              	pop    ebp
105327fb:	c3                                              	ret
105327fc:	cc                                              	int3
105327fd:	cc                                              	int3
105327fe:	cc                                              	int3
105327ff:	cc                                              	int3
