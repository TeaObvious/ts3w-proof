# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f7d0 (GameObject_HasCatalogProductTypeFlag)
Paired Ghidra pseudocode: 1097F7D0_GameObject_HasCatalogProductTypeFlag.c
Window: [0x1097f7d0, 0x1097f830) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f7d0: 8b 44 24 04 83 ec 10 85 c0 75 06 32 c0 83 c4 10
1097f7e0: c3 8b 0d 34 05 c7 10 85 c9 74 f0 8b 50 18 89 14
1097f7f0: 24 8b 50 1c 89 54 24 04 8b 50 20 8b 40 24 89 54
1097f800: 24 08 8d 14 24 52 89 44 24 10 c7 44 24 0c 1d 4f
1097f810: 9e 31 e8 b9 5e 8e ff 85 c0 74 c0 8b 80 98 00 00
1097f820: 00 23 44 24 18 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc

LINEAR DISASSEMBLY
1097f7d0 <.text+0x97e7d0>:
1097f7d0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1097f7d4:	83 ec 10                                        	sub    esp,0x10
1097f7d7:	85 c0                                           	test   eax,eax
1097f7d9:	75 06                                           	jne    0x1097f7e1
1097f7db:	32 c0                                           	xor    al,al
1097f7dd:	83 c4 10                                        	add    esp,0x10
1097f7e0:	c3                                              	ret
1097f7e1:	8b 0d 34 05 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70534
1097f7e7:	85 c9                                           	test   ecx,ecx
1097f7e9:	74 f0                                           	je     0x1097f7db
1097f7eb:	8b 50 18                                        	mov    edx,DWORD PTR [eax+0x18]
1097f7ee:	89 14 24                                        	mov    DWORD PTR [esp],edx
1097f7f1:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
1097f7f4:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
1097f7f8:	8b 50 20                                        	mov    edx,DWORD PTR [eax+0x20]
1097f7fb:	8b 40 24                                        	mov    eax,DWORD PTR [eax+0x24]
1097f7fe:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
1097f802:	8d 14 24                                        	lea    edx,[esp]
1097f805:	52                                              	push   edx
1097f806:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
1097f80a:	c7 44 24 0c 1d 4f 9e 31                         	mov    DWORD PTR [esp+0xc],0x319e4f1d
1097f812:	e8 b9 5e 8e ff                                  	call   0x102656d0
1097f817:	85 c0                                           	test   eax,eax
1097f819:	74 c0                                           	je     0x1097f7db
1097f81b:	8b 80 98 00 00 00                               	mov    eax,DWORD PTR [eax+0x98]
1097f821:	23 44 24 18                                     	and    eax,DWORD PTR [esp+0x18]
1097f825:	f7 d8                                           	neg    eax
1097f827:	1b c0                                           	sbb    eax,eax
1097f829:	f7 d8                                           	neg    eax
1097f82b:	83 c4 10                                        	add    esp,0x10
1097f82e:	c3                                              	ret
1097f82f:	cc                                              	int3
