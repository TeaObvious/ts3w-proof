# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10999830 (WorldWrap_GetLocalizedDetailsKeyStatic)
Paired Ghidra pseudocode: 10999830_WorldWrap_GetLocalizedDetailsKeyStatic.c
Window: [0x10999830, 0x109998a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109998a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10999830: 81 ec a0 00 00 00 8d 0c 24 e8 f2 27 a0 ff 8b 8c
10999840: 24 a4 00 00 00 6a 00 8d 44 24 04 50 51 e8 3e ea
10999850: ff ff 83 c4 0c 84 c0 75 11 8d 0c 24 e8 8f 28 a0
10999860: ff 33 c0 81 c4 a0 00 00 00 c3 8b 4c 24 28 8b c1
10999870: 2b 44 24 2c 56 f7 d8 1b c0 23 c1 50 ff 15 c4 b6
10999880: aa 10 8d 4c 24 04 8b f0 e8 63 28 a0 ff 8b c6 5e
10999890: 81 c4 a0 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10999830 <.text+0x998830>:
10999830:	81 ec a0 00 00 00                               	sub    esp,0xa0
10999836:	8d 0c 24                                        	lea    ecx,[esp]
10999839:	e8 f2 27 a0 ff                                  	call   0x1039c030
1099983e:	8b 8c 24 a4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa4]
10999845:	6a 00                                           	push   0x0
10999847:	8d 44 24 04                                     	lea    eax,[esp+0x4]
1099984b:	50                                              	push   eax
1099984c:	51                                              	push   ecx
1099984d:	e8 3e ea ff ff                                  	call   0x10998290
10999852:	83 c4 0c                                        	add    esp,0xc
10999855:	84 c0                                           	test   al,al
10999857:	75 11                                           	jne    0x1099986a
10999859:	8d 0c 24                                        	lea    ecx,[esp]
1099985c:	e8 8f 28 a0 ff                                  	call   0x1039c0f0
10999861:	33 c0                                           	xor    eax,eax
10999863:	81 c4 a0 00 00 00                               	add    esp,0xa0
10999869:	c3                                              	ret
1099986a:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1099986e:	8b c1                                           	mov    eax,ecx
10999870:	2b 44 24 2c                                     	sub    eax,DWORD PTR [esp+0x2c]
10999874:	56                                              	push   esi
10999875:	f7 d8                                           	neg    eax
10999877:	1b c0                                           	sbb    eax,eax
10999879:	23 c1                                           	and    eax,ecx
1099987b:	50                                              	push   eax
1099987c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10999882:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10999886:	8b f0                                           	mov    esi,eax
10999888:	e8 63 28 a0 ff                                  	call   0x1039c0f0
1099988d:	8b c6                                           	mov    eax,esi
1099988f:	5e                                              	pop    esi
10999890:	81 c4 a0 00 00 00                               	add    esp,0xa0
10999896:	c3                                              	ret
10999897:	cc                                              	int3
10999898:	cc                                              	int3
10999899:	cc                                              	int3
1099989a:	cc                                              	int3
1099989b:	cc                                              	int3
1099989c:	cc                                              	int3
1099989d:	cc                                              	int3
1099989e:	cc                                              	int3
1099989f:	cc                                              	int3
