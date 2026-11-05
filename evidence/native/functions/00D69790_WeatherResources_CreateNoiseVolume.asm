# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d69790 WeatherResources_CreateNoiseVolume
# Complete actual Ghidra owned ranges: 00d69790..00d6983c;00d69840..00d69848;00d69850..00d69894; 86 instructions/251 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D69790_WeatherResources_CreateNoiseVolume.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.
# Linear envelope includes inter-range gap bytes, which are not function-owned instructions. No gap function/unit created.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69790 <.text+0x968790>:
  d69790:	51                                              	push   ecx
  d69791:	55                                              	push   ebp
  d69792:	56                                              	push   esi
  d69793:	57                                              	push   edi
  d69794:	6a 00                                           	push   0x0
  d69796:	6a 00                                           	push   0x0
  d69798:	6a 00                                           	push   0x0
  d6979a:	6a 00                                           	push   0x0
  d6979c:	68 9c b2 08 01                                  	push   0x108b29c
  d697a1:	6a 34                                           	push   0x34
  d697a3:	8b e9                                           	mov    ebp,ecx
  d697a5:	e8 56 ad 77 ff                                  	call   0x4e4500
  d697aa:	83 c4 18                                        	add    esp,0x18
  d697ad:	85 c0                                           	test   eax,eax
  d697af:	74 0b                                           	je     0xd697bc
  d697b1:	8b c8                                           	mov    ecx,eax
  d697b3:	e8 e8 0a 8b ff                                  	call   0x61a2a0
  d697b8:	8b f0                                           	mov    esi,eax
  d697ba:	eb 02                                           	jmp    0xd697be
  d697bc:	33 f6                                           	xor    esi,esi
  d697be:	8b bd c0 01 00 00                               	mov    edi,DWORD PTR [ebp+0x1c0]
  d697c4:	3b f7                                           	cmp    esi,edi
  d697c6:	74 20                                           	je     0xd697e8
  d697c8:	85 f6                                           	test   esi,esi
  d697ca:	74 09                                           	je     0xd697d5
  d697cc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d697ce:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  d697d1:	8b ce                                           	mov    ecx,esi
  d697d3:	ff d2                                           	call   edx
  d697d5:	85 ff                                           	test   edi,edi
  d697d7:	89 b5 c0 01 00 00                               	mov    DWORD PTR [ebp+0x1c0],esi
  d697dd:	74 09                                           	je     0xd697e8
  d697df:	8b 07                                           	mov    eax,DWORD PTR [edi]
  d697e1:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  d697e4:	8b cf                                           	mov    ecx,edi
  d697e6:	ff d2                                           	call   edx
  d697e8:	8b 8d c0 01 00 00                               	mov    ecx,DWORD PTR [ebp+0x1c0]
  d697ee:	68 8c b2 08 01                                  	push   0x108b28c
  d697f3:	6a 02                                           	push   0x2
  d697f5:	6a 0f                                           	push   0xf
  d697f7:	6a 01                                           	push   0x1
  d697f9:	6a 08                                           	push   0x8
  d697fb:	6a 08                                           	push   0x8
  d697fd:	6a 08                                           	push   0x8
  d697ff:	e8 bc 08 8b ff                                  	call   0x61a0c0
  d69804:	84 c0                                           	test   al,al
  d69806:	0f 84 84 00 00 00                               	je     0xd69890
  d6980c:	80 3d 7c 32 19 01 00                            	cmp    BYTE PTR ds:0x119327c,0x0
  d69813:	74 65                                           	je     0xd6987a
  d69815:	6a ff                                           	push   0xffffffff
  d69817:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d6981b:	c6 05 7c 32 19 01 00                            	mov    BYTE PTR ds:0x119327c,0x0
  d69822:	e8 c9 11 79 ff                                  	call   0x4fa9f0
  d69827:	68 7a 1b 01 00                                  	push   0x11b7a
  d6982c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  d69830:	e8 bb 11 79 ff                                  	call   0x4fa9f0
  d69835:	bf 00 f3 1e 01                                  	mov    edi,0x11ef300
  d6983a:	53                                              	push   ebx
  d6983b:	eb 03                                           	jmp    0xd69840


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69840 <.text+0x968840>:
  d69840:	bb 08 00 00 00                                  	mov    ebx,0x8
  d69845:	33 f6                                           	xor    esi,esi
  d69847:	eb 07                                           	jmp    0xd69850


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d69850 <.text+0x968850>:
  d69850:	68 ff 00 00 00                                  	push   0xff
  d69855:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  d69859:	e8 d2 11 79 ff                                  	call   0x4faa30
  d6985e:	88 04 37                                        	mov    BYTE PTR [edi+esi*1],al
  d69861:	83 c6 01                                        	add    esi,0x1
  d69864:	83 fe 08                                        	cmp    esi,0x8
  d69867:	7c e7                                           	jl     0xd69850
  d69869:	83 c7 08                                        	add    edi,0x8
  d6986c:	83 eb 01                                        	sub    ebx,0x1
  d6986f:	75 d4                                           	jne    0xd69845
  d69871:	81 ff 00 f5 1e 01                               	cmp    edi,0x11ef500
  d69877:	7c c7                                           	jl     0xd69840
  d69879:	5b                                              	pop    ebx
  d6987a:	8b 8d c0 01 00 00                               	mov    ecx,DWORD PTR [ebp+0x1c0]
  d69880:	6a 40                                           	push   0x40
  d69882:	6a 08                                           	push   0x8
  d69884:	68 00 f3 1e 01                                  	push   0x11ef300
  d69889:	6a 00                                           	push   0x0
  d6988b:	e8 60 02 8b ff                                  	call   0x619af0
  d69890:	5f                                              	pop    edi
  d69891:	5e                                              	pop    esi
  d69892:	5d                                              	pop    ebp
  d69893:	59                                              	pop    ecx
  d69894:	c3                                              	ret
