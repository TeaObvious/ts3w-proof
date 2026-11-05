# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe
Annotated Ghidra entry: 0x00bf2660 (RoofPolygon_ConstructThreeProperties)
Complete Ghidra function body: 0x00bf2660..0x00bf2710 (exclusive end)
Ghidra body ranges: [[00bf2660, 00bf270f]]


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00bf2660 <.text+0x7f1660>:
  bf2660:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  bf2664:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  bf2668:	56                                              	push   esi
  bf2669:	50                                              	push   eax
  bf266a:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  bf266e:	8b f1                                           	mov    esi,ecx
  bf2670:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  bf2674:	51                                              	push   ecx
  bf2675:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  bf2679:	52                                              	push   edx
  bf267a:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  bf267e:	50                                              	push   eax
  bf267f:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  bf2683:	51                                              	push   ecx
  bf2684:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  bf2688:	52                                              	push   edx
  bf2689:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  bf268d:	50                                              	push   eax
  bf268e:	51                                              	push   ecx
  bf268f:	52                                              	push   edx
  bf2690:	8b ce                                           	mov    ecx,esi
  bf2692:	e8 a9 fe ff ff                                  	call   0xbf2540
  bf2697:	8a 44 24 30                                     	mov    al,BYTE PTR [esp+0x30]
  bf269b:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  bf269f:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  bf26a3:	88 46 44                                        	mov    BYTE PTR [esi+0x44],al
  bf26a6:	33 c0                                           	xor    eax,eax
  bf26a8:	89 4e 48                                        	mov    DWORD PTR [esi+0x48],ecx
  bf26ab:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  bf26af:	3b c8                                           	cmp    ecx,eax
  bf26b1:	c7 06 a8 36 07 01                               	mov    DWORD PTR [esi],0x10736a8
  bf26b7:	c7 46 40 3c 00 00 00                            	mov    DWORD PTR [esi+0x40],0x3c
  bf26be:	88 46 45                                        	mov    BYTE PTR [esi+0x45],al
  bf26c1:	88 46 46                                        	mov    BYTE PTR [esi+0x46],al
  bf26c4:	88 46 47                                        	mov    BYTE PTR [esi+0x47],al
  bf26c7:	88 46 50                                        	mov    BYTE PTR [esi+0x50],al
  bf26ca:	88 46 51                                        	mov    BYTE PTR [esi+0x51],al
  bf26cd:	89 46 4c                                        	mov    DWORD PTR [esi+0x4c],eax
  bf26d0:	88 46 58                                        	mov    BYTE PTR [esi+0x58],al
  bf26d3:	88 46 59                                        	mov    BYTE PTR [esi+0x59],al
  bf26d6:	89 46 54                                        	mov    DWORD PTR [esi+0x54],eax
  bf26d9:	88 46 60                                        	mov    BYTE PTR [esi+0x60],al
  bf26dc:	88 46 61                                        	mov    BYTE PTR [esi+0x61],al
  bf26df:	89 46 5c                                        	mov    DWORD PTR [esi+0x5c],eax
  bf26e2:	89 56 64                                        	mov    DWORD PTR [esi+0x64],edx
  bf26e5:	74 23                                           	je     0xbf270a
  bf26e7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  bf26e9:	89 46 4c                                        	mov    DWORD PTR [esi+0x4c],eax
  bf26ec:	8b 51 04                                        	mov    edx,DWORD PTR [ecx+0x4]
  bf26ef:	89 56 50                                        	mov    DWORD PTR [esi+0x50],edx
  bf26f2:	8b 41 08                                        	mov    eax,DWORD PTR [ecx+0x8]
  bf26f5:	89 46 54                                        	mov    DWORD PTR [esi+0x54],eax
  bf26f8:	8b 51 0c                                        	mov    edx,DWORD PTR [ecx+0xc]
  bf26fb:	89 56 58                                        	mov    DWORD PTR [esi+0x58],edx
  bf26fe:	8b 41 10                                        	mov    eax,DWORD PTR [ecx+0x10]
  bf2701:	89 46 5c                                        	mov    DWORD PTR [esi+0x5c],eax
  bf2704:	8b 49 14                                        	mov    ecx,DWORD PTR [ecx+0x14]
  bf2707:	89 4e 60                                        	mov    DWORD PTR [esi+0x60],ecx
  bf270a:	8b c6                                           	mov    eax,esi
  bf270c:	5e                                              	pop    esi
  bf270d:	c2 34 00                                        	ret    0x34
