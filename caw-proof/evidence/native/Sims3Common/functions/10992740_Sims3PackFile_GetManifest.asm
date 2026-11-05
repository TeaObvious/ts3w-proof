# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10992740 (Sims3PackFile_GetManifest)
Paired Ghidra pseudocode: 10992740_Sims3PackFile_GetManifest.c
Window: [0x10992740, 0x109927b0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x109927b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10992740: 83 ec 10 8b 4c 24 14 b8 44 82 ca 10 89 04 24 89
10992750: 44 24 04 56 8d 44 24 04 50 c7 44 24 14 f0 73 b9
10992760: 10 c7 44 24 10 46 82 ca 10 e8 12 45 e2 ff 8b 4c
10992770: 24 04 51 ff 15 c4 b6 aa 10 8b 54 24 0c 8b f0 8b
10992780: 44 24 04 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74
10992790: 09 50 e8 f9 66 f8 ff 83 c4 04 8b c6 5e 83 c4 10
109927a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10992740 <.text+0x991740>:
10992740:	83 ec 10                                        	sub    esp,0x10
10992743:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10992747:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1099274c:	89 04 24                                        	mov    DWORD PTR [esp],eax
1099274f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10992753:	56                                              	push   esi
10992754:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10992758:	50                                              	push   eax
10992759:	c7 44 24 14 f0 73 b9 10                         	mov    DWORD PTR [esp+0x14],0x10b973f0
10992761:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
10992769:	e8 12 45 e2 ff                                  	call   0x107b6c80
1099276e:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10992772:	51                                              	push   ecx
10992773:	ff 15 c4 b6 aa 10                               	call   DWORD PTR ds:0x10aab6c4
10992779:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1099277d:	8b f0                                           	mov    esi,eax
1099277f:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10992783:	2b d0                                           	sub    edx,eax
10992785:	83 e2 fe                                        	and    edx,0xfffffffe
10992788:	83 fa 02                                        	cmp    edx,0x2
1099278b:	7e 0d                                           	jle    0x1099279a
1099278d:	85 c0                                           	test   eax,eax
1099278f:	74 09                                           	je     0x1099279a
10992791:	50                                              	push   eax
10992792:	e8 f9 66 f8 ff                                  	call   0x10918e90
10992797:	83 c4 04                                        	add    esp,0x4
1099279a:	8b c6                                           	mov    eax,esi
1099279c:	5e                                              	pop    esi
1099279d:	83 c4 10                                        	add    esp,0x10
109927a0:	c3                                              	ret
109927a1:	cc                                              	int3
109927a2:	cc                                              	int3
109927a3:	cc                                              	int3
109927a4:	cc                                              	int3
109927a5:	cc                                              	int3
109927a6:	cc                                              	int3
109927a7:	cc                                              	int3
109927a8:	cc                                              	int3
109927a9:	cc                                              	int3
109927aa:	cc                                              	int3
109927ab:	cc                                              	int3
109927ac:	cc                                              	int3
109927ad:	cc                                              	int3
109927ae:	cc                                              	int3
109927af:	cc                                              	int3
