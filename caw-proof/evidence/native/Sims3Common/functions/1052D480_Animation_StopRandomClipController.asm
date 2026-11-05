# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1052d480 (Animation_StopRandomClipController)
Paired Ghidra pseudocode: 1052D480_Animation_StopRandomClipController.c
Window: [0x1052d480, 0x1052d510) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1052d510
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1052d480: 51 56 e8 19 cd 1f 00 8b 4c 24 10 8b 54 24 0c 51
1052d490: 52 8b c8 e8 18 d7 1f 00 8b f0 85 f6 74 6e 57 8d
1052d4a0: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 c4
1052d4b0: 0c c8 10 52 8b ce e8 e5 98 1f 00 85 c0 74 2f 8b
1052d4c0: 4c 24 1c 8b 54 24 18 51 52 8b c8 e8 40 19 20 00
1052d4d0: 85 c0 74 1a 8d 48 08 8b 01 8b 50 04 68 61 2d c1
1052d4e0: 06 ff d2 85 c0 74 07 8b c8 e8 92 c1 e3 ff 8b c7
1052d4f0: 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87
1052d500: 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 59 c3 cc

LINEAR DISASSEMBLY
1052d480 <.text+0x52c480>:
1052d480:	51                                              	push   ecx
1052d481:	56                                              	push   esi
1052d482:	e8 19 cd 1f 00                                  	call   0x1072a1a0
1052d487:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1052d48b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1052d48f:	51                                              	push   ecx
1052d490:	52                                              	push   edx
1052d491:	8b c8                                           	mov    ecx,eax
1052d493:	e8 18 d7 1f 00                                  	call   0x1072abb0
1052d498:	8b f0                                           	mov    esi,eax
1052d49a:	85 f6                                           	test   esi,esi
1052d49c:	74 6e                                           	je     0x1052d50c
1052d49e:	57                                              	push   edi
1052d49f:	8d 7e 04                                        	lea    edi,[esi+0x4]
1052d4a2:	8b c7                                           	mov    eax,edi
1052d4a4:	b9 01 00 00 00                                  	mov    ecx,0x1
1052d4a9:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d4ad:	8b 15 c4 0c c8 10                               	mov    edx,DWORD PTR ds:0x10c80cc4
1052d4b3:	52                                              	push   edx
1052d4b4:	8b ce                                           	mov    ecx,esi
1052d4b6:	e8 e5 98 1f 00                                  	call   0x10726da0
1052d4bb:	85 c0                                           	test   eax,eax
1052d4bd:	74 2f                                           	je     0x1052d4ee
1052d4bf:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1052d4c3:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1052d4c7:	51                                              	push   ecx
1052d4c8:	52                                              	push   edx
1052d4c9:	8b c8                                           	mov    ecx,eax
1052d4cb:	e8 40 19 20 00                                  	call   0x1072ee10
1052d4d0:	85 c0                                           	test   eax,eax
1052d4d2:	74 1a                                           	je     0x1052d4ee
1052d4d4:	8d 48 08                                        	lea    ecx,[eax+0x8]
1052d4d7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1052d4d9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1052d4dc:	68 61 2d c1 06                                  	push   0x6c12d61
1052d4e1:	ff d2                                           	call   edx
1052d4e3:	85 c0                                           	test   eax,eax
1052d4e5:	74 07                                           	je     0x1052d4ee
1052d4e7:	8b c8                                           	mov    ecx,eax
1052d4e9:	e8 92 c1 e3 ff                                  	call   0x10369680
1052d4ee:	8b c7                                           	mov    eax,edi
1052d4f0:	83 c9 ff                                        	or     ecx,0xffffffff
1052d4f3:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1052d4f7:	49                                              	dec    ecx
1052d4f8:	75 11                                           	jne    0x1052d50b
1052d4fa:	ba 01 00 00 00                                  	mov    edx,0x1
1052d4ff:	87 17                                           	xchg   DWORD PTR [edi],edx
1052d501:	8b 06                                           	mov    eax,DWORD PTR [esi]
1052d503:	8b 10                                           	mov    edx,DWORD PTR [eax]
1052d505:	6a 01                                           	push   0x1
1052d507:	8b ce                                           	mov    ecx,esi
1052d509:	ff d2                                           	call   edx
1052d50b:	5f                                              	pop    edi
1052d50c:	5e                                              	pop    esi
1052d50d:	59                                              	pop    ecx
1052d50e:	c3                                              	ret
1052d50f:	cc                                              	int3
