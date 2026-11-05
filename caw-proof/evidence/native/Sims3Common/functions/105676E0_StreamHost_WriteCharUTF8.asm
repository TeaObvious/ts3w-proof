# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105676e0 (StreamHost_WriteCharUTF8)
Paired Ghidra pseudocode: 105676E0_StreamHost_WriteCharUTF8.c
Window: [0x105676e0, 0x10567770) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105676e0: 83 ec 08 56 8b 74 24 10 3b 35 a4 b0 c7 10 75 08
105676f0: 8b 35 a8 b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d
10567700: 00 00 00 60 74 04 33 f6 eb 23 e8 11 3a ff ff 8b
10567710: 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b
10567720: a3 a8 b0 c7 10 89 35 a4 b0 c7 10 8b f0 85 f6 75
10567730: 08 8d 46 fe 5e 83 c4 08 c3 6a 01 8d 4c 24 18 51
10567740: 8d 54 24 0c 6a 08 52 e8 54 01 3c 00 8b 16 8b 52
10567750: 38 83 c4 10 50 8d 44 24 08 50 8b ce ff d2 f6 d8
10567760: 5e 1b c0 83 e0 03 83 c0 fd 83 c4 08 c3 cc cc cc

LINEAR DISASSEMBLY
105676e0 <.text+0x5666e0>:
105676e0:	83 ec 08                                        	sub    esp,0x8
105676e3:	56                                              	push   esi
105676e4:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
105676e8:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
105676ee:	75 08                                           	jne    0x105676f8
105676f0:	8b 35 a8 b0 c7 10                               	mov    esi,DWORD PTR ds:0x10c7b0a8
105676f6:	eb 35                                           	jmp    0x1056772d
105676f8:	8b c6                                           	mov    eax,esi
105676fa:	25 00 00 00 ff                                  	and    eax,0xff000000
105676ff:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567704:	74 04                                           	je     0x1056770a
10567706:	33 f6                                           	xor    esi,esi
10567708:	eb 23                                           	jmp    0x1056772d
1056770a:	e8 11 3a ff ff                                  	call   0x1055b120
1056770f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10567711:	8b c8                                           	mov    ecx,eax
10567713:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567719:	56                                              	push   esi
1056771a:	ff d0                                           	call   eax
1056771c:	85 c0                                           	test   eax,eax
1056771e:	74 0b                                           	je     0x1056772b
10567720:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
10567725:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
1056772b:	8b f0                                           	mov    esi,eax
1056772d:	85 f6                                           	test   esi,esi
1056772f:	75 08                                           	jne    0x10567739
10567731:	8d 46 fe                                        	lea    eax,[esi-0x2]
10567734:	5e                                              	pop    esi
10567735:	83 c4 08                                        	add    esp,0x8
10567738:	c3                                              	ret
10567739:	6a 01                                           	push   0x1
1056773b:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
1056773f:	51                                              	push   ecx
10567740:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
10567744:	6a 08                                           	push   0x8
10567746:	52                                              	push   edx
10567747:	e8 54 01 3c 00                                  	call   0x109278a0
1056774c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1056774e:	8b 52 38                                        	mov    edx,DWORD PTR [edx+0x38]
10567751:	83 c4 10                                        	add    esp,0x10
10567754:	50                                              	push   eax
10567755:	8d 44 24 08                                     	lea    eax,[esp+0x8]
10567759:	50                                              	push   eax
1056775a:	8b ce                                           	mov    ecx,esi
1056775c:	ff d2                                           	call   edx
1056775e:	f6 d8                                           	neg    al
10567760:	5e                                              	pop    esi
10567761:	1b c0                                           	sbb    eax,eax
10567763:	83 e0 03                                        	and    eax,0x3
10567766:	83 c0 fd                                        	add    eax,0xfffffffd
10567769:	83 c4 08                                        	add    esp,0x8
1056776c:	c3                                              	ret
1056776d:	cc                                              	int3
1056776e:	cc                                              	int3
1056776f:	cc                                              	int3
