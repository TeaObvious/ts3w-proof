# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567890 (StreamHost_ReadFloat)
Paired Ghidra pseudocode: 10567890_StreamHost_ReadFloat.c
Window: [0x10567890, 0x10567920) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567890: 56 8b 74 24 08 3b 35 a4 b0 c7 10 75 08 8b 0d a8
105678a0: b0 c7 10 eb 35 8b c6 25 00 00 00 ff 3d 00 00 00
105678b0: 60 74 04 33 c9 eb 23 e8 64 38 ff ff 8b 10 8b c8
105678c0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 a8 b0
105678d0: c7 10 89 35 a4 b0 c7 10 8b c8 85 c9 5e 75 04 8d
105678e0: 41 fe c3 c7 44 24 04 00 00 00 00 8b 11 8b 52 30
105678f0: 6a 04 8d 44 24 08 50 ff d2 83 f8 04 74 0f 33 c9
10567900: 83 f8 ff 0f 95 c1 8d 4c 09 fd 8b c1 c3 8b 54 24
10567910: 08 f3 0f 10 44 24 04 f3 0f 11 02 33 c0 c3 cc cc

LINEAR DISASSEMBLY
10567890 <.text+0x566890>:
10567890:	56                                              	push   esi
10567891:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567895:	3b 35 a4 b0 c7 10                               	cmp    esi,DWORD PTR ds:0x10c7b0a4
1056789b:	75 08                                           	jne    0x105678a5
1056789d:	8b 0d a8 b0 c7 10                               	mov    ecx,DWORD PTR ds:0x10c7b0a8
105678a3:	eb 35                                           	jmp    0x105678da
105678a5:	8b c6                                           	mov    eax,esi
105678a7:	25 00 00 00 ff                                  	and    eax,0xff000000
105678ac:	3d 00 00 00 60                                  	cmp    eax,0x60000000
105678b1:	74 04                                           	je     0x105678b7
105678b3:	33 c9                                           	xor    ecx,ecx
105678b5:	eb 23                                           	jmp    0x105678da
105678b7:	e8 64 38 ff ff                                  	call   0x1055b120
105678bc:	8b 10                                           	mov    edx,DWORD PTR [eax]
105678be:	8b c8                                           	mov    ecx,eax
105678c0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105678c6:	56                                              	push   esi
105678c7:	ff d0                                           	call   eax
105678c9:	85 c0                                           	test   eax,eax
105678cb:	74 0b                                           	je     0x105678d8
105678cd:	a3 a8 b0 c7 10                                  	mov    ds:0x10c7b0a8,eax
105678d2:	89 35 a4 b0 c7 10                               	mov    DWORD PTR ds:0x10c7b0a4,esi
105678d8:	8b c8                                           	mov    ecx,eax
105678da:	85 c9                                           	test   ecx,ecx
105678dc:	5e                                              	pop    esi
105678dd:	75 04                                           	jne    0x105678e3
105678df:	8d 41 fe                                        	lea    eax,[ecx-0x2]
105678e2:	c3                                              	ret
105678e3:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
105678eb:	8b 11                                           	mov    edx,DWORD PTR [ecx]
105678ed:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
105678f0:	6a 04                                           	push   0x4
105678f2:	8d 44 24 08                                     	lea    eax,[esp+0x8]
105678f6:	50                                              	push   eax
105678f7:	ff d2                                           	call   edx
105678f9:	83 f8 04                                        	cmp    eax,0x4
105678fc:	74 0f                                           	je     0x1056790d
105678fe:	33 c9                                           	xor    ecx,ecx
10567900:	83 f8 ff                                        	cmp    eax,0xffffffff
10567903:	0f 95 c1                                        	setne  cl
10567906:	8d 4c 09 fd                                     	lea    ecx,[ecx+ecx*1-0x3]
1056790a:	8b c1                                           	mov    eax,ecx
1056790c:	c3                                              	ret
1056790d:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10567911:	f3 0f 10 44 24 04                               	movss  xmm0,DWORD PTR [esp+0x4]
10567917:	f3 0f 11 02                                     	movss  DWORD PTR [edx],xmm0
1056791b:	33 c0                                           	xor    eax,eax
1056791d:	c3                                              	ret
1056791e:	cc                                              	int3
1056791f:	cc                                              	int3
