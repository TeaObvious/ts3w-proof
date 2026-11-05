# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097d760 (App3D_DrawText)
Paired Ghidra pseudocode: 1097D760_App3D_DrawText.c
Window: [0x1097d760, 0x1097d7f0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097d7f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097d760: a1 98 d7 ca 10 f3 0f 10 05 d4 b0 ac 10 f3 0f 10
1097d770: 4c 24 10 56 8b 74 24 0c 57 8b 7c 24 0c 68 48 7b
1097d780: cb 10 50 83 ec 08 f3 0f 58 c8 f3 0f 11 4c 24 04
1097d790: f3 0f 10 4c 24 24 f3 0f 58 c8 f3 0f 11 0c 24 56
1097d7a0: 57 b9 b0 d7 ca 10 c7 05 6c 7d cb 10 00 00 00 ff
1097d7b0: e8 1b b9 b0 ff d9 44 24 18 8b 0d 98 d7 ca 10 68
1097d7c0: 48 7b cb 10 51 83 ec 08 d9 5c 24 04 b9 b0 d7 ca
1097d7d0: 10 d9 44 24 24 c7 05 6c 7d cb 10 2a 2a a5 ff d9
1097d7e0: 1c 24 56 57 e8 e7 b8 b0 ff 5f 5e c3 cc cc cc cc

LINEAR DISASSEMBLY
1097d760 <.text+0x97c760>:
1097d760:	a1 98 d7 ca 10                                  	mov    eax,ds:0x10cad798
1097d765:	f3 0f 10 05 d4 b0 ac 10                         	movss  xmm0,DWORD PTR ds:0x10acb0d4
1097d76d:	f3 0f 10 4c 24 10                               	movss  xmm1,DWORD PTR [esp+0x10]
1097d773:	56                                              	push   esi
1097d774:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
1097d778:	57                                              	push   edi
1097d779:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
1097d77d:	68 48 7b cb 10                                  	push   0x10cb7b48
1097d782:	50                                              	push   eax
1097d783:	83 ec 08                                        	sub    esp,0x8
1097d786:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1097d78a:	f3 0f 11 4c 24 04                               	movss  DWORD PTR [esp+0x4],xmm1
1097d790:	f3 0f 10 4c 24 24                               	movss  xmm1,DWORD PTR [esp+0x24]
1097d796:	f3 0f 58 c8                                     	addss  xmm1,xmm0
1097d79a:	f3 0f 11 0c 24                                  	movss  DWORD PTR [esp],xmm1
1097d79f:	56                                              	push   esi
1097d7a0:	57                                              	push   edi
1097d7a1:	b9 b0 d7 ca 10                                  	mov    ecx,0x10cad7b0
1097d7a6:	c7 05 6c 7d cb 10 00 00 00 ff                   	mov    DWORD PTR ds:0x10cb7d6c,0xff000000
1097d7b0:	e8 1b b9 b0 ff                                  	call   0x104890d0
1097d7b5:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
1097d7b9:	8b 0d 98 d7 ca 10                               	mov    ecx,DWORD PTR ds:0x10cad798
1097d7bf:	68 48 7b cb 10                                  	push   0x10cb7b48
1097d7c4:	51                                              	push   ecx
1097d7c5:	83 ec 08                                        	sub    esp,0x8
1097d7c8:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1097d7cc:	b9 b0 d7 ca 10                                  	mov    ecx,0x10cad7b0
1097d7d1:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
1097d7d5:	c7 05 6c 7d cb 10 2a 2a a5 ff                   	mov    DWORD PTR ds:0x10cb7d6c,0xffa52a2a
1097d7df:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1097d7e2:	56                                              	push   esi
1097d7e3:	57                                              	push   edi
1097d7e4:	e8 e7 b8 b0 ff                                  	call   0x104890d0
1097d7e9:	5f                                              	pop    edi
1097d7ea:	5e                                              	pop    esi
1097d7eb:	c3                                              	ret
1097d7ec:	cc                                              	int3
1097d7ed:	cc                                              	int3
1097d7ee:	cc                                              	int3
1097d7ef:	cc                                              	int3
