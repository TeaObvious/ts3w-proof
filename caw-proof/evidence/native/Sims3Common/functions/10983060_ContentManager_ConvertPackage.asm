# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10983060 (ContentManager_ConvertPackage)
Paired Ghidra pseudocode: 10983060_ContentManager_ConvertPackage.c
Window: [0x10983060, 0x10983100) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x10983100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10983060: 83 ec 10 8b 4c 24 18 b8 44 82 ca 10 89 04 24 89
10983070: 44 24 04 8d 04 24 50 51 c7 44 24 14 b0 8b b5 10
10983080: c7 44 24 10 45 82 ca 10 e8 b3 fe ff ff 83 c4 08
10983090: 84 c0 75 21 8b 54 24 08 8b 04 24 2b d0 83 fa 01
109830a0: 7e 0d 85 c0 74 09 50 e8 e4 5d f9 ff 83 c4 04 32
109830b0: c0 83 c4 10 c3 8b 44 24 20 8b 4c 24 1c 8b 54 24
109830c0: 14 53 50 51 52 8d 44 24 10 50 e8 d1 0c e0 ff 8b
109830d0: 4c 24 1c 8a d8 8b 44 24 14 2b c8 83 c4 10 83 f9
109830e0: 01 7e 0d 85 c0 74 09 50 e8 a3 5d f9 ff 83 c4 04
109830f0: 8a c3 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10983060 <.text+0x982060>:
10983060:	83 ec 10                                        	sub    esp,0x10
10983063:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10983067:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
1098306c:	89 04 24                                        	mov    DWORD PTR [esp],eax
1098306f:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10983073:	8d 04 24                                        	lea    eax,[esp]
10983076:	50                                              	push   eax
10983077:	51                                              	push   ecx
10983078:	c7 44 24 14 b0 8b b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58bb0
10983080:	c7 44 24 10 45 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8245
10983088:	e8 b3 fe ff ff                                  	call   0x10982f40
1098308d:	83 c4 08                                        	add    esp,0x8
10983090:	84 c0                                           	test   al,al
10983092:	75 21                                           	jne    0x109830b5
10983094:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10983098:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
1098309b:	2b d0                                           	sub    edx,eax
1098309d:	83 fa 01                                        	cmp    edx,0x1
109830a0:	7e 0d                                           	jle    0x109830af
109830a2:	85 c0                                           	test   eax,eax
109830a4:	74 09                                           	je     0x109830af
109830a6:	50                                              	push   eax
109830a7:	e8 e4 5d f9 ff                                  	call   0x10918e90
109830ac:	83 c4 04                                        	add    esp,0x4
109830af:	32 c0                                           	xor    al,al
109830b1:	83 c4 10                                        	add    esp,0x10
109830b4:	c3                                              	ret
109830b5:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
109830b9:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109830bd:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
109830c1:	53                                              	push   ebx
109830c2:	50                                              	push   eax
109830c3:	51                                              	push   ecx
109830c4:	52                                              	push   edx
109830c5:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109830c9:	50                                              	push   eax
109830ca:	e8 d1 0c e0 ff                                  	call   0x10783da0
109830cf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
109830d3:	8a d8                                           	mov    bl,al
109830d5:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109830d9:	2b c8                                           	sub    ecx,eax
109830db:	83 c4 10                                        	add    esp,0x10
109830de:	83 f9 01                                        	cmp    ecx,0x1
109830e1:	7e 0d                                           	jle    0x109830f0
109830e3:	85 c0                                           	test   eax,eax
109830e5:	74 09                                           	je     0x109830f0
109830e7:	50                                              	push   eax
109830e8:	e8 a3 5d f9 ff                                  	call   0x10918e90
109830ed:	83 c4 04                                        	add    esp,0x4
109830f0:	8a c3                                           	mov    al,bl
109830f2:	5b                                              	pop    ebx
109830f3:	83 c4 10                                        	add    esp,0x10
109830f6:	c3                                              	ret
109830f7:	cc                                              	int3
109830f8:	cc                                              	int3
109830f9:	cc                                              	int3
109830fa:	cc                                              	int3
109830fb:	cc                                              	int3
109830fc:	cc                                              	int3
109830fd:	cc                                              	int3
109830fe:	cc                                              	int3
109830ff:	cc                                              	int3
