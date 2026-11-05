# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Stored Ghidra body: one address byte at 0x00775790; ZERO actual Listing instructions.
The following pristine PE decoding is bounded evidence, not existing Listing code.
No instruction, body, prototype or flow repair was performed.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00775790 (ScriptCore.StreamHost::StreamHost_ReadByteArray)
Paired Ghidra pseudocode: 00775790_ScriptCore_StreamHost_StreamHost_ReadByteArray.c
Window: [0x00775790, 0x00775870) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00775870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00775790: 51 56 8b 74 24 0c 3b 35 38 78 1d 01 75 08 8b 35
007757a0: 3c 78 1d 01 eb 35 8b c6 25 00 00 00 ff 3d 00 00
007757b0: 00 60 74 04 33 f6 eb 23 e8 d3 3b ff ff 8b 10 8b
007757c0: c8 8b 82 cc 00 00 00 56 ff d0 85 c0 74 0b a3 3c
007757d0: 78 1d 01 89 35 38 78 1d 01 8b f0 85 f6 75 06 8d
007757e0: 46 fe 5e 59 c3 57 8b 7c 24 14 85 ff 75 07 8d 47
007757f0: fa 5f 5e 59 c3 e8 96 3b ff ff 8d 4c 24 10 51 8d
00775800: 4c 24 0c c7 44 24 14 00 00 00 00 c7 44 24 0c 00
00775810: 00 00 00 8b 10 8b 52 70 51 57 8b c8 ff d2 8b 44
00775820: 24 18 85 c0 7c 3f 8b 54 24 1c 85 d2 7c 37 8b 4c
00775830: 24 10 3b c1 7f 2f 2b c8 3b ca 7c 29 85 d2 75 06
00775840: 5f 33 c0 5e 59 c3 8b 4c 24 08 8b 3e 52 8b 57 30
00775850: 03 c8 51 8b ce ff d2 83 f8 ff 75 0e 5f b8 fd ff
00775860: ff ff 5e 59 c3 b8 f9 ff ff ff 5f 5e 59 c3 cc cc

LINEAR DISASSEMBLY
00775790 <.text+0x374790>:
  775790:	51                                              	push   ecx
  775791:	56                                              	push   esi
  775792:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  775796:	3b 35 38 78 1d 01                               	cmp    esi,DWORD PTR ds:0x11d7838
  77579c:	75 08                                           	jne    0x7757a6
  77579e:	8b 35 3c 78 1d 01                               	mov    esi,DWORD PTR ds:0x11d783c
  7757a4:	eb 35                                           	jmp    0x7757db
  7757a6:	8b c6                                           	mov    eax,esi
  7757a8:	25 00 00 00 ff                                  	and    eax,0xff000000
  7757ad:	3d 00 00 00 60                                  	cmp    eax,0x60000000
  7757b2:	74 04                                           	je     0x7757b8
  7757b4:	33 f6                                           	xor    esi,esi
  7757b6:	eb 23                                           	jmp    0x7757db
  7757b8:	e8 d3 3b ff ff                                  	call   0x769390
  7757bd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7757bf:	8b c8                                           	mov    ecx,eax
  7757c1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7757c7:	56                                              	push   esi
  7757c8:	ff d0                                           	call   eax
  7757ca:	85 c0                                           	test   eax,eax
  7757cc:	74 0b                                           	je     0x7757d9
  7757ce:	a3 3c 78 1d 01                                  	mov    ds:0x11d783c,eax
  7757d3:	89 35 38 78 1d 01                               	mov    DWORD PTR ds:0x11d7838,esi
  7757d9:	8b f0                                           	mov    esi,eax
  7757db:	85 f6                                           	test   esi,esi
  7757dd:	75 06                                           	jne    0x7757e5
  7757df:	8d 46 fe                                        	lea    eax,[esi-0x2]
  7757e2:	5e                                              	pop    esi
  7757e3:	59                                              	pop    ecx
  7757e4:	c3                                              	ret
  7757e5:	57                                              	push   edi
  7757e6:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  7757ea:	85 ff                                           	test   edi,edi
  7757ec:	75 07                                           	jne    0x7757f5
  7757ee:	8d 47 fa                                        	lea    eax,[edi-0x6]
  7757f1:	5f                                              	pop    edi
  7757f2:	5e                                              	pop    esi
  7757f3:	59                                              	pop    ecx
  7757f4:	c3                                              	ret
  7757f5:	e8 96 3b ff ff                                  	call   0x769390
  7757fa:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7757fe:	51                                              	push   ecx
  7757ff:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  775803:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  77580b:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  775813:	8b 10                                           	mov    edx,DWORD PTR [eax]
  775815:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  775818:	51                                              	push   ecx
  775819:	57                                              	push   edi
  77581a:	8b c8                                           	mov    ecx,eax
  77581c:	ff d2                                           	call   edx
  77581e:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  775822:	85 c0                                           	test   eax,eax
  775824:	7c 3f                                           	jl     0x775865
  775826:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  77582a:	85 d2                                           	test   edx,edx
  77582c:	7c 37                                           	jl     0x775865
  77582e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  775832:	3b c1                                           	cmp    eax,ecx
  775834:	7f 2f                                           	jg     0x775865
  775836:	2b c8                                           	sub    ecx,eax
  775838:	3b ca                                           	cmp    ecx,edx
  77583a:	7c 29                                           	jl     0x775865
  77583c:	85 d2                                           	test   edx,edx
  77583e:	75 06                                           	jne    0x775846
  775840:	5f                                              	pop    edi
  775841:	33 c0                                           	xor    eax,eax
  775843:	5e                                              	pop    esi
  775844:	59                                              	pop    ecx
  775845:	c3                                              	ret
  775846:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77584a:	8b 3e                                           	mov    edi,DWORD PTR [esi]
  77584c:	52                                              	push   edx
  77584d:	8b 57 30                                        	mov    edx,DWORD PTR [edi+0x30]
  775850:	03 c8                                           	add    ecx,eax
  775852:	51                                              	push   ecx
  775853:	8b ce                                           	mov    ecx,esi
  775855:	ff d2                                           	call   edx
  775857:	83 f8 ff                                        	cmp    eax,0xffffffff
  77585a:	75 0e                                           	jne    0x77586a
  77585c:	5f                                              	pop    edi
  77585d:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  775862:	5e                                              	pop    esi
  775863:	59                                              	pop    ecx
  775864:	c3                                              	ret
  775865:	b8 f9 ff ff ff                                  	mov    eax,0xfffffff9
  77586a:	5f                                              	pop    edi
  77586b:	5e                                              	pop    esi
  77586c:	59                                              	pop    ecx
  77586d:	c3                                              	ret
  77586e:	cc                                              	int3
  77586f:	cc                                              	int3
