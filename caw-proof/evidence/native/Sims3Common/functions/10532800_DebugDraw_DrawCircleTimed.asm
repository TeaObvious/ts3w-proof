# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10532800 (DebugDraw_DrawCircleTimed)
Paired Ghidra pseudocode: 10532800_DebugDraw_DrawCircleTimed.c
Window: [0x10532800, 0x10532860) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10532860
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10532800: 55 8b ec 83 e4 f0 83 ec 10 d9 45 1c 8b 45 18 f3
10532810: 0f 10 4d 10 f3 0f 10 45 08 51 d9 1c 24 50 d9 45
10532820: 14 f3 0f 11 4c 24 10 f3 0f 10 4d 0c 51 f3 0f 11
10532830: 44 24 18 d9 1c 24 f3 0f 11 4c 24 10 f3 0f 11 44
10532840: 24 0c 0f 28 44 24 0c 8d 4c 24 0c 51 0f 29 44 24
10532850: 10 e8 3a fe ff ff 83 c4 10 8b e5 5d c3 cc cc cc

LINEAR DISASSEMBLY
10532800 <.text+0x531800>:
10532800:	55                                              	push   ebp
10532801:	8b ec                                           	mov    ebp,esp
10532803:	83 e4 f0                                        	and    esp,0xfffffff0
10532806:	83 ec 10                                        	sub    esp,0x10
10532809:	d9 45 1c                                        	fld    DWORD PTR [ebp+0x1c]
1053280c:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
1053280f:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
10532814:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
10532819:	51                                              	push   ecx
1053281a:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1053281d:	50                                              	push   eax
1053281e:	d9 45 14                                        	fld    DWORD PTR [ebp+0x14]
10532821:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
10532827:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
1053282c:	51                                              	push   ecx
1053282d:	f3 0f 11 44 24 18                               	movss  DWORD PTR [esp+0x18],xmm0
10532833:	d9 1c 24                                        	fstp   DWORD PTR [esp]
10532836:	f3 0f 11 4c 24 10                               	movss  DWORD PTR [esp+0x10],xmm1
1053283c:	f3 0f 11 44 24 0c                               	movss  DWORD PTR [esp+0xc],xmm0
10532842:	0f 28 44 24 0c                                  	movaps xmm0,XMMWORD PTR [esp+0xc]
10532847:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1053284b:	51                                              	push   ecx
1053284c:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
10532851:	e8 3a fe ff ff                                  	call   0x10532690
10532856:	83 c4 10                                        	add    esp,0x10
10532859:	8b e5                                           	mov    esp,ebp
1053285b:	5d                                              	pop    ebp
1053285c:	c3                                              	ret
1053285d:	cc                                              	int3
1053285e:	cc                                              	int3
1053285f:	cc                                              	int3
