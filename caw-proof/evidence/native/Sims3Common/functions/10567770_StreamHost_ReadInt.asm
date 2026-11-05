# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567770 (StreamHost_ReadInt)
Paired Ghidra pseudocode: 10567770_StreamHost_ReadInt.c
Window: [0x10567770, 0x10567800) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567770: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 0d a8
10567780: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
10567790: 60 74 04 33 c9 eb 23 e8 84 39 ff ff 8b 10 8b c8
105677a0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
105677b0: c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 75 05 8d 41
105677c0: fe 5e c3 8b 74 24 0c 83 fe 04 7e 07 b8 fd ff ff
105677d0: ff 5e c3 8b 44 24 10 c7 00 00 00 00 00 8b 11 56
105677e0: 50 8b 42 30 ff d0 3b c6 74 10 33 c9 83 f8 ff 0f
105677f0: 95 c1 5e 8d 4c 09 fd 8b c1 c3 33 c0 5e c3 cc cc

LINEAR DISASSEMBLY
10567770 <.text+0x566770>:
10567770:	56                                              	push   esi
10567771:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567775:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056777b:	75 08                                           	jne    0x10567785
1056777d:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
10567783:	eb 35                                           	jmp    0x105677ba
10567785:	8b c6                                           	mov    eax,esi
10567787:	25 00 00 00 ff                                  	and    eax,0xff000000
1056778c:	3d 00 00 00 60                                  	cmp    eax,0x60000000
10567791:	74 04                                           	je     0x10567797
10567793:	33 c9                                           	xor    ecx,ecx
10567795:	eb 23                                           	jmp    0x105677ba
10567797:	e8 84 39 ff ff                                  	call   0x1055b120
1056779c:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056779e:	8b c8                                           	mov    ecx,eax
105677a0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105677a6:	56                                              	push   esi
105677a7:	ff d0                                           	call   eax
105677a9:	85 c0                                           	test   eax,eax
105677ab:	74 0b                                           	je     0x105677b8
105677ad:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
105677b2:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
105677b8:	8b c8                                           	mov    ecx,eax
105677ba:	85 c9                                           	test   ecx,ecx
105677bc:	75 05                                           	jne    0x105677c3
105677be:	8d 41 fe                                        	lea    eax,[ecx-0x2]
105677c1:	5e                                              	pop    esi
105677c2:	c3                                              	ret
105677c3:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
105677c7:	83 fe 04                                        	cmp    esi,0x4
105677ca:	7e 07                                           	jle    0x105677d3
105677cc:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
105677d1:	5e                                              	pop    esi
105677d2:	c3                                              	ret
105677d3:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
105677d7:	c7 00 00 00 00 00                               	mov    DWORD PTR [eax],0x0
105677dd:	8b 11                                           	mov    edx,DWORD PTR [ecx]
105677df:	56                                              	push   esi
105677e0:	50                                              	push   eax
105677e1:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
105677e4:	ff d0                                           	call   eax
105677e6:	3b c6                                           	cmp    eax,esi
105677e8:	74 10                                           	je     0x105677fa
105677ea:	33 c9                                           	xor    ecx,ecx
105677ec:	83 f8 ff                                        	cmp    eax,0xffffffff
105677ef:	0f 95 c1                                        	setne  cl
105677f2:	5e                                              	pop    esi
105677f3:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
105677f7:	8b c1                                           	mov    eax,ecx
105677f9:	c3                                              	ret
105677fa:	33 c0                                           	xor    eax,eax
105677fc:	5e                                              	pop    esi
105677fd:	c3                                              	ret
105677fe:	cc                                              	int3
105677ff:	cc                                              	int3
