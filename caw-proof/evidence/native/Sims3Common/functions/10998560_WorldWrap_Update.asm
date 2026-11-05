# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10998560 (WorldWrap_Update)
Paired Ghidra pseudocode: 10998560_WorldWrap_Update.c
Window: [0x10998560, 0x10998610) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x10998610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10998560: 55 8b ec 83 e4 f0 83 ec 28 56 57 8b 7d 08 85 ff
10998570: 0f 84 89 00 00 00 e8 25 5e b4 ff 8b c8 e8 ce d5
10998580: 00 00 8b f0 8b ce e8 b5 a1 db ff d9 45 10 0f 28
10998590: 46 60 83 ec 08 d9 5c 24 04 8b cf d9 45 0c 0f 29
109985a0: 44 24 28 d9 1c 24 e8 15 9d 8a ff 8b 0d 58 03 c7
109985b0: 10 85 c9 74 0c d9 45 10 51 d9 1c 24 e8 6f 9f 8b
109985c0: ff d9 05 ac 81 cb 10 0f 28 46 50 d9 45 10 83 ec
109985d0: 08 dc c1 8d 44 24 18 d9 c9 8d 4c 24 28 0f 57 c9
109985e0: d9 15 ac 81 cb 10 0f 5c c8 d9 5c 24 04 0f 29 4c
109985f0: 24 18 d9 1c 24 50 51 e8 c4 cb b6 ff 83 c4 10 5f
10998600: 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10998560 <.text+0x997560>:
10998560:	55                                              	push   ebp
10998561:	8b ec                                           	mov    ebp,esp
10998563:	83 e4 f0                                        	and    esp,0xfffffff0
10998566:	83 ec 28                                        	sub    esp,0x28
10998569:	56                                              	push   esi
1099856a:	57                                              	push   edi
1099856b:	8b 7d 08                                        	mov    edi,DWORD PTR [ebp+0x8]
1099856e:	85 ff                                           	test   edi,edi
10998570:	0f 84 89 00 00 00                               	je     0x109985ff
10998576:	e8 25 5e b4 ff                                  	call   0x104de3a0
1099857b:	8b c8                                           	mov    ecx,eax
1099857d:	e8 ce d5 00 00                                  	call   0x109a5b50
10998582:	8b f0                                           	mov    esi,eax
10998584:	8b ce                                           	mov    ecx,esi
10998586:	e8 b5 a1 db ff                                  	call   0x10752740
1099858b:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
1099858e:	0f 28 46 60                                     	movaps xmm0,XMMWORD PTR [esi+0x60]
10998592:	83 ec 08                                        	sub    esp,0x8
10998595:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
10998599:	8b cf                                           	mov    ecx,edi
1099859b:	d9 45 0c                                        	fld    DWORD PTR [ebp+0xc]
1099859e:	0f 29 44 24 28                                  	movaps XMMWORD PTR [esp+0x28],xmm0
109985a3:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109985a6:	e8 15 9d 8a ff                                  	call   0x102422c0
109985ab:	8b 0d 58 03 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70358
109985b1:	85 c9                                           	test   ecx,ecx
109985b3:	74 0c                                           	je     0x109985c1
109985b5:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
109985b8:	51                                              	push   ecx
109985b9:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109985bc:	e8 6f 9f 8b ff                                  	call   0x10252530
109985c1:	d9 05 ac 81 cb 10                               	fld    DWORD PTR ds:0x10cb81ac
109985c7:	0f 28 46 50                                     	movaps xmm0,XMMWORD PTR [esi+0x50]
109985cb:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
109985ce:	83 ec 08                                        	sub    esp,0x8
109985d1:	dc c1                                           	fadd   st(1),st
109985d3:	8d 44 24 18                                     	lea    eax,[esp+0x18]
109985d7:	d9 c9                                           	fxch   st(1)
109985d9:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
109985dd:	0f 57 c9                                        	xorps  xmm1,xmm1
109985e0:	d9 15 ac 81 cb 10                               	fst    DWORD PTR ds:0x10cb81ac
109985e6:	0f 5c c8                                        	subps  xmm1,xmm0
109985e9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
109985ed:	0f 29 4c 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm1
109985f2:	d9 1c 24                                        	fstp   DWORD PTR [esp]
109985f5:	50                                              	push   eax
109985f6:	51                                              	push   ecx
109985f7:	e8 c4 cb b6 ff                                  	call   0x105051c0
109985fc:	83 c4 10                                        	add    esp,0x10
109985ff:	5f                                              	pop    edi
10998600:	5e                                              	pop    esi
10998601:	8b e5                                           	mov    esp,ebp
10998603:	5d                                              	pop    ebp
10998604:	c3                                              	ret
10998605:	cc                                              	int3
10998606:	cc                                              	int3
10998607:	cc                                              	int3
10998608:	cc                                              	int3
10998609:	cc                                              	int3
1099860a:	cc                                              	int3
1099860b:	cc                                              	int3
1099860c:	cc                                              	int3
1099860d:	cc                                              	int3
1099860e:	cc                                              	int3
1099860f:	cc                                              	int3
