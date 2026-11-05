# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982780 (ConfigRegistry_Save)
Paired Ghidra pseudocode: 10982780_ConfigRegistry_Save.c
Window: [0x10982780, 0x10982820) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982780: 8b 0d 30 7f cb 10 85 c9 0f 84 81 00 00 00 8b 44
10982790: 24 08 8b 54 24 04 56 57 50 52 e8 21 77 a0 ff e8
109827a0: 8c 89 bd ff 6a 00 6a 00 6a 00 6a 00 68 84 64 b9
109827b0: 10 6a 0c 8b f8 e8 f6 66 f9 ff 8b f0 83 c4 18 85
109827c0: f6 74 48 ff 15 9c b0 aa 10 c7 06 30 0b b6 10 33
109827d0: c9 8d 56 04 87 0a c7 06 30 0b b6 10 89 46 08 8b
109827e0: 06 8b 50 04 8b ce ff d2 8b 07 8b 50 18 6a 00 56
109827f0: 68 fe a1 6a fc 8b cf ff d2 85 f6 74 09 8b 06 8b
10982800: 50 08 8b ce ff d2 5f 32 c0 5e c3 33 f6 eb d9 32
10982810: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10982780 <.text+0x981780>:
10982780:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
10982786:	85 c9                                           	test   ecx,ecx
10982788:	0f 84 81 00 00 00                               	je     0x1098280f
1098278e:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10982792:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10982796:	56                                              	push   esi
10982797:	57                                              	push   edi
10982798:	50                                              	push   eax
10982799:	52                                              	push   edx
1098279a:	e8 21 77 a0 ff                                  	call   0x10389ec0
1098279f:	e8 8c 89 bd ff                                  	call   0x1055b130
109827a4:	6a 00                                           	push   0x0
109827a6:	6a 00                                           	push   0x0
109827a8:	6a 00                                           	push   0x0
109827aa:	6a 00                                           	push   0x0
109827ac:	68 84 64 b9 10                                  	push   0x10b96484
109827b1:	6a 0c                                           	push   0xc
109827b3:	8b f8                                           	mov    edi,eax
109827b5:	e8 f6 66 f9 ff                                  	call   0x10918eb0
109827ba:	8b f0                                           	mov    esi,eax
109827bc:	83 c4 18                                        	add    esp,0x18
109827bf:	85 f6                                           	test   esi,esi
109827c1:	74 48                                           	je     0x1098280b
109827c3:	ff 15 9c b0 aa 10                               	call   DWORD PTR ds:0x10aab09c
109827c9:	c7 06 30 0b b6 10                               	mov    DWORD PTR [esi],0x10b60b30
109827cf:	33 c9                                           	xor    ecx,ecx
109827d1:	8d 56 04                                        	lea    edx,[esi+0x4]
109827d4:	87 0a                                           	xchg   DWORD PTR [edx],ecx
109827d6:	c7 06 30 0b b6 10                               	mov    DWORD PTR [esi],0x10b60b30
109827dc:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
109827df:	8b 06                                           	mov    eax,DWORD PTR [esi]
109827e1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109827e4:	8b ce                                           	mov    ecx,esi
109827e6:	ff d2                                           	call   edx
109827e8:	8b 07                                           	mov    eax,DWORD PTR [edi]
109827ea:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
109827ed:	6a 00                                           	push   0x0
109827ef:	56                                              	push   esi
109827f0:	68 fe a1 6a fc                                  	push   0xfc6aa1fe
109827f5:	8b cf                                           	mov    ecx,edi
109827f7:	ff d2                                           	call   edx
109827f9:	85 f6                                           	test   esi,esi
109827fb:	74 09                                           	je     0x10982806
109827fd:	8b 06                                           	mov    eax,DWORD PTR [esi]
109827ff:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10982802:	8b ce                                           	mov    ecx,esi
10982804:	ff d2                                           	call   edx
10982806:	5f                                              	pop    edi
10982807:	32 c0                                           	xor    al,al
10982809:	5e                                              	pop    esi
1098280a:	c3                                              	ret
1098280b:	33 f6                                           	xor    esi,esi
1098280d:	eb d9                                           	jmp    0x109827e8
1098280f:	32 c0                                           	xor    al,al
10982811:	c3                                              	ret
10982812:	cc                                              	int3
10982813:	cc                                              	int3
10982814:	cc                                              	int3
10982815:	cc                                              	int3
10982816:	cc                                              	int3
10982817:	cc                                              	int3
10982818:	cc                                              	int3
10982819:	cc                                              	int3
1098281a:	cc                                              	int3
1098281b:	cc                                              	int3
1098281c:	cc                                              	int3
1098281d:	cc                                              	int3
1098281e:	cc                                              	int3
1098281f:	cc                                              	int3
