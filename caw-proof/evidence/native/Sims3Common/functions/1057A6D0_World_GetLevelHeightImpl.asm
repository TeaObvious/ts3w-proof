# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a6d0 (World_GetLevelHeightImpl)
Paired Ghidra pseudocode: 1057A6D0_World_GetLevelHeightImpl.c
Window: [0x1057a6d0, 0x1057a720) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a720
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a6d0: 51 8b 0d c4 00 c7 10 85 c9 74 2a 8b 44 24 10 d9
1057a6e0: 44 24 0c 6a 00 6a 00 6a 00 6a 00 6a 00 6a 01 50
1057a6f0: 83 ec 08 d9 5c 24 04 d9 44 24 2c d9 1c 24 e8 2d
1057a700: 42 cc ff 59 c3 0f 57 c0 f3 0f 11 04 24 d9 04 24
1057a710: 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1057a6d0 <.text+0x5796d0>:
1057a6d0:	51                                              	push   ecx
1057a6d1:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
1057a6d7:	85 c9                                           	test   ecx,ecx
1057a6d9:	74 2a                                           	je     0x1057a705
1057a6db:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1057a6df:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
1057a6e3:	6a 00                                           	push   0x0
1057a6e5:	6a 00                                           	push   0x0
1057a6e7:	6a 00                                           	push   0x0
1057a6e9:	6a 00                                           	push   0x0
1057a6eb:	6a 00                                           	push   0x0
1057a6ed:	6a 01                                           	push   0x1
1057a6ef:	50                                              	push   eax
1057a6f0:	83 ec 08                                        	sub    esp,0x8
1057a6f3:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1057a6f7:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
1057a6fb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1057a6fe:	e8 2d 42 cc ff                                  	call   0x1023e930
1057a703:	59                                              	pop    ecx
1057a704:	c3                                              	ret
1057a705:	0f 57 c0                                        	xorps  xmm0,xmm0
1057a708:	f3 0f 11 04 24                                  	movss  DWORD PTR [esp],xmm0
1057a70d:	d9 04 24                                        	fld    DWORD PTR [esp]
1057a710:	59                                              	pop    ecx
1057a711:	c3                                              	ret
1057a712:	cc                                              	int3
1057a713:	cc                                              	int3
1057a714:	cc                                              	int3
1057a715:	cc                                              	int3
1057a716:	cc                                              	int3
1057a717:	cc                                              	int3
1057a718:	cc                                              	int3
1057a719:	cc                                              	int3
1057a71a:	cc                                              	int3
1057a71b:	cc                                              	int3
1057a71c:	cc                                              	int3
1057a71d:	cc                                              	int3
1057a71e:	cc                                              	int3
1057a71f:	cc                                              	int3
