# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10654810 (Audio_EnableGroupImpl)
Paired Ghidra pseudocode: 10654810_Audio_EnableGroupImpl.c
Window: [0x10654810, 0x10654880) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10654880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10654810: 56 e8 4a f4 04 00 8b f0 85 f6 74 43 8b 06 8b 50
10654820: 44 68 94 bf 49 d5 8b ce ff d2 8b 4c 24 08 8b 06
10654830: 8b 50 4c 51 68 49 20 36 04 8b ce ff d2 8b 06 8b
10654840: 50 4c 33 c9 38 4c 24 0c 0f 95 c1 51 68 0a c5 49
10654850: 15 8b ce ff d2 8b 06 8b 50 68 8b ce 5e ff e2 5e
10654860: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10654870: b8 ac 84 b3 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10654810 <.text+0x653810>:
10654810:	56                                              	push   esi
10654811:	e8 4a f4 04 00                                  	call   0x106a3c60
10654816:	8b f0                                           	mov    esi,eax
10654818:	85 f6                                           	test   esi,esi
1065481a:	74 43                                           	je     0x1065485f
1065481c:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065481e:	8b 50 44                                        	mov    edx,DWORD PTR [eax+0x44]
10654821:	68 94 bf 49 d5                                  	push   0xd549bf94
10654826:	8b ce                                           	mov    ecx,esi
10654828:	ff d2                                           	call   edx
1065482a:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
1065482e:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654830:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654833:	51                                              	push   ecx
10654834:	68 49 20 36 04                                  	push   0x4362049
10654839:	8b ce                                           	mov    ecx,esi
1065483b:	ff d2                                           	call   edx
1065483d:	8b 06                                           	mov    eax,DWORD PTR [esi]
1065483f:	8b 50 4c                                        	mov    edx,DWORD PTR [eax+0x4c]
10654842:	33 c9                                           	xor    ecx,ecx
10654844:	38 4c 24 0c                                     	cmp    BYTE PTR [esp+0xc],cl
10654848:	0f 95 c1                                        	setne  cl
1065484b:	51                                              	push   ecx
1065484c:	68 0a c5 49 15                                  	push   0x1549c50a
10654851:	8b ce                                           	mov    ecx,esi
10654853:	ff d2                                           	call   edx
10654855:	8b 06                                           	mov    eax,DWORD PTR [esi]
10654857:	8b 50 68                                        	mov    edx,DWORD PTR [eax+0x68]
1065485a:	8b ce                                           	mov    ecx,esi
1065485c:	5e                                              	pop    esi
1065485d:	ff e2                                           	jmp    edx
1065485f:	5e                                              	pop    esi
10654860:	c3                                              	ret
10654861:	cc                                              	int3
10654862:	cc                                              	int3
10654863:	cc                                              	int3
10654864:	cc                                              	int3
10654865:	cc                                              	int3
10654866:	cc                                              	int3
10654867:	cc                                              	int3
10654868:	cc                                              	int3
10654869:	cc                                              	int3
1065486a:	cc                                              	int3
1065486b:	cc                                              	int3
1065486c:	cc                                              	int3
1065486d:	cc                                              	int3
1065486e:	cc                                              	int3
1065486f:	cc                                              	int3
10654870:	b8 ac 84 b3 10                                  	mov    eax,0x10b384ac
10654875:	c3                                              	ret
10654876:	cc                                              	int3
10654877:	cc                                              	int3
10654878:	cc                                              	int3
10654879:	cc                                              	int3
1065487a:	cc                                              	int3
1065487b:	cc                                              	int3
1065487c:	cc                                              	int3
1065487d:	cc                                              	int3
1065487e:	cc                                              	int3
1065487f:	cc                                              	int3
