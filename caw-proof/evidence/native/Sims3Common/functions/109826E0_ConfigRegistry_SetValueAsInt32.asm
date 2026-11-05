# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109826e0 (ConfigRegistry_SetValueAsInt32)
Paired Ghidra pseudocode: 109826E0_ConfigRegistry_SetValueAsInt32.c
Window: [0x109826e0, 0x10982730) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982730
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109826e0: 8b 4c 24 0c 83 ec 40 6a 0a 8d 44 24 04 50 51 e8
109826f0: 9c ed fa ff 8b 0d 30 7f cb 10 83 c4 0c 85 c9 74
10982700: 20 8b 44 24 48 8d 14 24 52 8b 54 24 48 50 52 e8
10982710: 6c 84 a0 ff 84 c0 74 09 b8 01 00 00 00 83 c4 40
10982720: c3 33 c0 83 c4 40 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109826e0 <.text+0x9816e0>:
109826e0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
109826e4:	83 ec 40                                        	sub    esp,0x40
109826e7:	6a 0a                                           	push   0xa
109826e9:	8d 44 24 04                                     	lea    eax,[esp+0x4]
109826ed:	50                                              	push   eax
109826ee:	51                                              	push   ecx
109826ef:	e8 9c ed fa ff                                  	call   0x10931490
109826f4:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
109826fa:	83 c4 0c                                        	add    esp,0xc
109826fd:	85 c9                                           	test   ecx,ecx
109826ff:	74 20                                           	je     0x10982721
10982701:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
10982705:	8d 14 24                                        	lea    edx,[esp]
10982708:	52                                              	push   edx
10982709:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
1098270d:	50                                              	push   eax
1098270e:	52                                              	push   edx
1098270f:	e8 6c 84 a0 ff                                  	call   0x1038ab80
10982714:	84 c0                                           	test   al,al
10982716:	74 09                                           	je     0x10982721
10982718:	b8 01 00 00 00                                  	mov    eax,0x1
1098271d:	83 c4 40                                        	add    esp,0x40
10982720:	c3                                              	ret
10982721:	33 c0                                           	xor    eax,eax
10982723:	83 c4 40                                        	add    esp,0x40
10982726:	c3                                              	ret
10982727:	cc                                              	int3
10982728:	cc                                              	int3
10982729:	cc                                              	int3
1098272a:	cc                                              	int3
1098272b:	cc                                              	int3
1098272c:	cc                                              	int3
1098272d:	cc                                              	int3
1098272e:	cc                                              	int3
1098272f:	cc                                              	int3
