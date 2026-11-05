# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC1.67 TS3W.exe: 0x00d6a850 WeatherResources_SubmitNamedDdsSlot
# Complete actual Ghidra owned ranges: 00d6a850..00d6a8ca; 44 instructions/123 owned bytes.
# Binary identity: ../../../README.md.
# Actual annotated C: 00D6A850_WeatherResources_SubmitNamedDdsSlot.c
# Stored prototypes remain unmodified; original registers/RET/AL and full ASM govern incomplete projections.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00d6a850 <.text+0x969850>:
  d6a850:	83 ec 10                                        	sub    esp,0x10
  d6a853:	56                                              	push   esi
  d6a854:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  d6a858:	8b 06                                           	mov    eax,DWORD PTR [esi]
  d6a85a:	85 c0                                           	test   eax,eax
  d6a85c:	74 07                                           	je     0xd6a865
  d6a85e:	8b 0e                                           	mov    ecx,DWORD PTR [esi]
  d6a860:	f6 c1 03                                        	test   cl,0x3
  d6a863:	74 5f                                           	je     0xd6a8c4
  d6a865:	8b 16                                           	mov    edx,DWORD PTR [esi]
  d6a867:	f6 c2 01                                        	test   dl,0x1
  d6a86a:	75 58                                           	jne    0xd6a8c4
  d6a86c:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  d6a870:	57                                              	push   edi
  d6a871:	50                                              	push   eax
  d6a872:	e8 39 d0 a6 ff                                  	call   0x7d78b0
  d6a877:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  d6a87b:	51                                              	push   ecx
  d6a87c:	8b f8                                           	mov    edi,eax
  d6a87e:	e8 3d 58 a6 ff                                  	call   0x7d00c0
  d6a883:	8b 0d 84 4c 1d 01                               	mov    ecx,DWORD PTR ds:0x11d4c84
  d6a889:	83 c4 08                                        	add    esp,0x8
  d6a88c:	85 c9                                           	test   ecx,ecx
  d6a88e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  d6a892:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  d6a896:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  d6a89a:	c7 44 24 10 82 d8 b2 00                         	mov    DWORD PTR [esp+0x10],0xb2d882
  d6a8a2:	5f                                              	pop    edi
  d6a8a3:	74 1f                                           	je     0xd6a8c4
  d6a8a5:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  d6a8a7:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  d6a8aa:	6a 01                                           	push   0x1
  d6a8ac:	6a 00                                           	push   0x0
  d6a8ae:	68 a0 b3 d4 00                                  	push   0xd4b3a0
  d6a8b3:	6a 00                                           	push   0x0
  d6a8b5:	6a 00                                           	push   0x0
  d6a8b7:	56                                              	push   esi
  d6a8b8:	68 a7 d7 b3 00                                  	push   0xb3d7a7
  d6a8bd:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  d6a8c1:	50                                              	push   eax
  d6a8c2:	ff d2                                           	call   edx
  d6a8c4:	5e                                              	pop    esi
  d6a8c5:	83 c4 10                                        	add    esp,0x10
  d6a8c8:	c2 0c 00                                        	ret    0xc
