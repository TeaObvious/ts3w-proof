# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f670 (World_DispatchRegisteredEventCallback)
Paired Ghidra pseudocode: 0078F670_World_DispatchRegisteredEventCallback.c
Window: [0x0078f670, 0x0078f780) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f670: 83 ec 44 8b 44 24 4c 53 55 33 db 8d 0c c0 56 8b
0078f680: 34 8d 78 7a 1d 01 3b f3 bd f4 a6 fb 00 89 6c 24
0078f690: 10 66 89 5c 24 18 66 89 5c 24 1a 74 42 e8 ee 9c
0078f6a0: fd ff 8b 4c 24 60 8b 10 8b 92 34 01 00 00 51 8b
0078f6b0: 4c 24 60 51 56 8d 4c 24 3c 51 8b c8 ff d2 50 8d
0078f6c0: 4c 24 14 e8 e8 6d d6 ff f6 44 24 38 04 89 6c 24
0078f6d0: 30 74 72 53 8d 4c 24 34 e8 83 60 d6 ff eb 66 57
0078f6e0: 8d 4c 24 10 51 8d 54 24 60 52 50 e8 80 a3 ff ff
0078f6f0: 8b 7c 24 68 83 c4 0c 3b fb 74 49 8b 74 24 10 3b
0078f700: f3 74 41 e8 88 9c fd ff 8b 4c 24 64 8b 10 8b 92
0078f710: 38 01 00 00 51 8b 4c 24 64 51 56 57 8d 4c 24 44
0078f720: 51 8b c8 ff d2 50 8d 4c 24 18 e8 81 6d d6 ff f6
0078f730: 44 24 3c 04 89 6c 24 34 74 0a 53 8d 4c 24 38 e8
0078f740: 1c 60 d6 ff 5f 8b 74 24 54 8d 44 24 10 50 8b ce
0078f750: 89 2e 66 89 5e 08 66 89 5e 0a e8 51 6d d6 ff f6
0078f760: 44 24 18 04 89 6c 24 10 74 0a 53 8d 4c 24 14 e8
0078f770: ec 5f d6 ff 8b c6 5e 5d 5b 83 c4 44 c3 cc cc cc

LINEAR DISASSEMBLY
0078f670 <.text+0x38e670>:
  78f670:	83 ec 44                                        	sub    esp,0x44
  78f673:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  78f677:	53                                              	push   ebx
  78f678:	55                                              	push   ebp
  78f679:	33 db                                           	xor    ebx,ebx
  78f67b:	8d 0c c0                                        	lea    ecx,[eax+eax*8]
  78f67e:	56                                              	push   esi
  78f67f:	8b 34 8d 78 7a 1d 01                            	mov    esi,DWORD PTR [ecx*4+0x11d7a78]
  78f686:	3b f3                                           	cmp    esi,ebx
  78f688:	bd f4 a6 fb 00                                  	mov    ebp,0xfba6f4
  78f68d:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  78f691:	66 89 5c 24 18                                  	mov    WORD PTR [esp+0x18],bx
  78f696:	66 89 5c 24 1a                                  	mov    WORD PTR [esp+0x1a],bx
  78f69b:	74 42                                           	je     0x78f6df
  78f69d:	e8 ee 9c fd ff                                  	call   0x769390
  78f6a2:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  78f6a6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f6a8:	8b 92 34 01 00 00                               	mov    edx,DWORD PTR [edx+0x134]
  78f6ae:	51                                              	push   ecx
  78f6af:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  78f6b3:	51                                              	push   ecx
  78f6b4:	56                                              	push   esi
  78f6b5:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  78f6b9:	51                                              	push   ecx
  78f6ba:	8b c8                                           	mov    ecx,eax
  78f6bc:	ff d2                                           	call   edx
  78f6be:	50                                              	push   eax
  78f6bf:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78f6c3:	e8 e8 6d d6 ff                                  	call   0x4f64b0
  78f6c8:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  78f6cd:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  78f6d1:	74 72                                           	je     0x78f745
  78f6d3:	53                                              	push   ebx
  78f6d4:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  78f6d8:	e8 83 60 d6 ff                                  	call   0x4f5760
  78f6dd:	eb 66                                           	jmp    0x78f745
  78f6df:	57                                              	push   edi
  78f6e0:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  78f6e4:	51                                              	push   ecx
  78f6e5:	8d 54 24 60                                     	lea    edx,[esp+0x60]
  78f6e9:	52                                              	push   edx
  78f6ea:	50                                              	push   eax
  78f6eb:	e8 80 a3 ff ff                                  	call   0x789a70
  78f6f0:	8b 7c 24 68                                     	mov    edi,DWORD PTR [esp+0x68]
  78f6f4:	83 c4 0c                                        	add    esp,0xc
  78f6f7:	3b fb                                           	cmp    edi,ebx
  78f6f9:	74 49                                           	je     0x78f744
  78f6fb:	8b 74 24 10                                     	mov    esi,DWORD PTR [esp+0x10]
  78f6ff:	3b f3                                           	cmp    esi,ebx
  78f701:	74 41                                           	je     0x78f744
  78f703:	e8 88 9c fd ff                                  	call   0x769390
  78f708:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  78f70c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f70e:	8b 92 38 01 00 00                               	mov    edx,DWORD PTR [edx+0x138]
  78f714:	51                                              	push   ecx
  78f715:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  78f719:	51                                              	push   ecx
  78f71a:	56                                              	push   esi
  78f71b:	57                                              	push   edi
  78f71c:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  78f720:	51                                              	push   ecx
  78f721:	8b c8                                           	mov    ecx,eax
  78f723:	ff d2                                           	call   edx
  78f725:	50                                              	push   eax
  78f726:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  78f72a:	e8 81 6d d6 ff                                  	call   0x4f64b0
  78f72f:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
  78f734:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  78f738:	74 0a                                           	je     0x78f744
  78f73a:	53                                              	push   ebx
  78f73b:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  78f73f:	e8 1c 60 d6 ff                                  	call   0x4f5760
  78f744:	5f                                              	pop    edi
  78f745:	8b 74 24 54                                     	mov    esi,DWORD PTR [esp+0x54]
  78f749:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78f74d:	50                                              	push   eax
  78f74e:	8b ce                                           	mov    ecx,esi
  78f750:	89 2e                                           	mov    DWORD PTR [esi],ebp
  78f752:	66 89 5e 08                                     	mov    WORD PTR [esi+0x8],bx
  78f756:	66 89 5e 0a                                     	mov    WORD PTR [esi+0xa],bx
  78f75a:	e8 51 6d d6 ff                                  	call   0x4f64b0
  78f75f:	f6 44 24 18 04                                  	test   BYTE PTR [esp+0x18],0x4
  78f764:	89 6c 24 10                                     	mov    DWORD PTR [esp+0x10],ebp
  78f768:	74 0a                                           	je     0x78f774
  78f76a:	53                                              	push   ebx
  78f76b:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  78f76f:	e8 ec 5f d6 ff                                  	call   0x4f5760
  78f774:	8b c6                                           	mov    eax,esi
  78f776:	5e                                              	pop    esi
  78f777:	5d                                              	pop    ebp
  78f778:	5b                                              	pop    ebx
  78f779:	83 c4 44                                        	add    esp,0x44
  78f77c:	c3                                              	ret
  78f77d:	cc                                              	int3
  78f77e:	cc                                              	int3
  78f77f:	cc                                              	int3
