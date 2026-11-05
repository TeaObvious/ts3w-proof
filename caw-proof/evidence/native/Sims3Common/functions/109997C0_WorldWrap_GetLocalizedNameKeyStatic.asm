# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109997c0 (WorldWrap_GetLocalizedNameKeyStatic)
Paired Ghidra pseudocode: 109997C0_WorldWrap_GetLocalizedNameKeyStatic.c
Window: [0x109997c0, 0x10999830) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10999830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109997c0: 81 ec a0 00 00 00 8d 0c 24 e8 62 28 a0 ff 8b 8c
109997d0: 24 a4 00 00 00 6a 00 8d 44 24 04 50 51 e8 ae ea
109997e0: ff ff 83 c4 0c 84 c0 75 11 8d 0c 24 e8 ff 28 a0
109997f0: ff 33 c0 81 c4 a0 00 00 00 c3 8b 4c 24 0c 8b c1
10999800: 2b 44 24 10 56 f7 d8 1b c0 23 c1 50 ff 15 c4 b6
10999810: aa 10 8d 4c 24 04 8b f0 e8 d3 28 a0 ff 8b c6 5e
10999820: 81 c4 a0 00 00 00 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109997c0 <.text+0x9987c0>:
109997c0:	81 ec a0 00 00 00                               	sub    esp,0xa0
109997c6:	8d 0c 24                                        	lea    ecx,[esp]
109997c9:	e8 62 28 a0 ff                                  	call   0x1039c030
109997ce:	8b 8c 24 a4 00 00 00                            	mov    ecx,DWORD PTR [esp+0xa4]
109997d5:	6a 00                                           	push   0x0
109997d7:	8d 44 24 04                                     	lea    eax,[esp+0x4]
109997db:	50                                              	push   eax
109997dc:	51                                              	push   ecx
109997dd:	e8 ae ea ff ff                                  	call   0x10998290
109997e2:	83 c4 0c                                        	add    esp,0xc
109997e5:	84 c0                                           	test   al,al
109997e7:	75 11                                           	jne    0x109997fa
109997e9:	8d 0c 24                                        	lea    ecx,[esp]
109997ec:	e8 ff 28 a0 ff                                  	call   0x1039c0f0
109997f1:	33 c0                                           	xor    eax,eax
109997f3:	81 c4 a0 00 00 00                               	add    esp,0xa0
109997f9:	c3                                              	ret
109997fa:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109997fe:	8b c1                                           	mov    eax,ecx
10999800:	2b 44 24 10                                     	sub    eax,DWORD PTR [esp+0x10]
10999804:	56                                              	push   esi
10999805:	f7 d8                                           	neg    eax
10999807:	1b c0                                           	sbb    eax,eax
10999809:	23 c1                                           	and    eax,ecx
1099980b:	50                                              	push   eax
1099980c:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10999812:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10999816:	8b f0                                           	mov    esi,eax
10999818:	e8 d3 28 a0 ff                                  	call   0x1039c0f0
1099981d:	8b c6                                           	mov    eax,esi
1099981f:	5e                                              	pop    esi
10999820:	81 c4 a0 00 00 00                               	add    esp,0xa0
10999826:	c3                                              	ret
10999827:	cc                                              	int3
10999828:	cc                                              	int3
10999829:	cc                                              	int3
1099982a:	cc                                              	int3
1099982b:	cc                                              	int3
1099982c:	cc                                              	int3
1099982d:	cc                                              	int3
1099982e:	cc                                              	int3
1099982f:	cc                                              	int3
