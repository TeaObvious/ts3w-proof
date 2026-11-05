# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995630 (ThumbnailManager_ExportProductPatternThumbnail)
Paired Ghidra pseudocode: 10995630_ThumbnailManager_ExportProductPatternThumbnail.c
Window: [0x10995630, 0x10995890) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995630: 55 8b ec 83 e4 f8 81 ec 4c 01 00 00 a1 50 11 c7
10995640: 10 53 33 db 3b c3 56 57 89 44 24 2c 0f 84 f1 01
10995650: 00 00 8b 3d 34 05 c7 10 3b fb 0f 84 e3 01 00 00
10995660: e8 6b fa f4 ff 8b f0 3b f3 0f 84 d4 01 00 00 8d
10995670: 45 08 50 8d 4c 24 1c 51 e8 23 84 bc ff 83 c4 08
10995680: 53 53 53 53 8d 44 24 20 89 5c 24 20 8b 16 8b 52
10995690: 0c 50 8d 4c 24 2c 51 8b ce ff d2 84 c0 74 20 8b
109956a0: 4c 24 10 3b cb 74 18 8b 01 8b 50 0c 68 3c 3b 4a
109956b0: f1 ff d2 3b c3 74 08 50 8b cf e8 41 26 8d ff 8b
109956c0: 45 18 25 ff ff ff 00 09 44 24 24 c7 44 24 14 01
109956d0: 00 00 00 8b 4d 1c 85 4c 24 14 0f 84 f4 00 00 00
109956e0: 6a 00 6a 00 6a 00 6a 00 68 8c 79 b9 10 6a 30 e8
109956f0: bc 37 f8 ff 83 c4 18 85 c0 0f 84 04 01 00 00 8b
10995700: c8 e8 0a f1 ff ff 8b f8 85 ff 74 09 8b 17 8b 42
10995710: 04 8b cf ff d0 6a 00 6a 00 6a 00 6a 00 68 78 79
10995720: b9 10 6a 58 e8 87 37 f8 ff 83 c4 18 85 c0 0f 84
10995730: d6 00 00 00 8b c8 e8 35 7c 9a ff 8b f0 85 f6 74
10995740: 08 8b 16 8b 02 8b ce ff d0 8b 4c 24 18 8b 54 24
10995750: 1c 6a 00 6a 00 53 6a 00 6a 00 6a 00 83 ec 10 8b
10995760: c4 89 08 8b 4c 24 48 89 50 04 8b 54 24 4c 89 48
10995770: 08 8d 4c 24 58 89 50 0c e8 d3 a2 76 ff 8b 4c 24
10995780: 2c 57 56 6a 00 6a 00 8d 44 24 40 50 e8 ef 0d 9a
10995790: ff 84 c0 74 7c 8b 4d 20 51 53 8d 54 24 20 52 56
109957a0: 57 e8 4a f5 ff ff 83 c4 14 84 c0 8d 4c 24 30 0f
109957b0: 84 97 00 00 00 e8 46 52 76 ff 85 f6 74 09 8b 06
109957c0: 8b 50 04 8b ce ff d2 85 ff 74 09 8b 07 8b 50 08
109957d0: 8b cf ff d2 8b 44 24 14 83 c3 01 83 fb 04 8d 0c
109957e0: 00 89 4c 24 14 0f 82 e8 fe ff ff 8b 4c 24 10 85
109957f0: c9 74 07 8b 11 8b 42 04 ff d0 b0 01 5f 5e 5b 8b
10995800: e5 5d c3 33 ff e9 0b ff ff ff 33 f6 e9 38 ff ff
10995810: ff 8d 4c 24 30 e8 e6 51 76 ff 85 f6 74 09 8b 16
10995820: 8b 42 04 8b ce ff d0 85 ff 74 09 8b 17 8b 42 08
10995830: 8b cf ff d0 8b 4c 24 10 85 c9 74 07 8b 11 8b 42
10995840: 04 ff d0 32 c0 5f 5e 5b 8b e5 5d c3 e8 af 51 76
10995850: ff 85 f6 74 09 8b 16 8b 42 04 8b ce ff d0 85 ff
10995860: 74 09 8b 17 8b 42 08 8b cf ff d0 8b 4c 24 10 85
10995870: c9 74 d0 8b 11 8b 42 04 ff d0 5f 5e 32 c0 5b 8b
10995880: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995630 <.text+0x994630>:
10995630:	55                                              	push   ebp
10995631:	8b ec                                           	mov    ebp,esp
10995633:	83 e4 f8                                        	and    esp,0xfffffff8
10995636:	81 ec 4c 01 00 00                               	sub    esp,0x14c
1099563c:	a1 50 11 c7 10                                  	mov    eax,ds:0x10c71150
10995641:	53                                              	push   ebx
10995642:	33 db                                           	xor    ebx,ebx
10995644:	3b c3                                           	cmp    eax,ebx
10995646:	56                                              	push   esi
10995647:	57                                              	push   edi
10995648:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
1099564c:	0f 84 f1 01 00 00                               	je     0x10995843
10995652:	8b 3d 34 05 c7 10                               	mov    edi,DWORD PTR ds:0x10c70534
10995658:	3b fb                                           	cmp    edi,ebx
1099565a:	0f 84 e3 01 00 00                               	je     0x10995843
10995660:	e8 6b fa f4 ff                                  	call   0x108e50d0
10995665:	8b f0                                           	mov    esi,eax
10995667:	3b f3                                           	cmp    esi,ebx
10995669:	0f 84 d4 01 00 00                               	je     0x10995843
1099566f:	8d 45 08                                        	lea    eax,[ebp+0x8]
10995672:	50                                              	push   eax
10995673:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10995677:	51                                              	push   ecx
10995678:	e8 23 84 bc ff                                  	call   0x1055daa0
1099567d:	83 c4 08                                        	add    esp,0x8
10995680:	53                                              	push   ebx
10995681:	53                                              	push   ebx
10995682:	53                                              	push   ebx
10995683:	53                                              	push   ebx
10995684:	8d 44 24 20                                     	lea    eax,[esp+0x20]
10995688:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
1099568c:	8b 16                                           	mov    edx,DWORD PTR [esi]
1099568e:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10995691:	50                                              	push   eax
10995692:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10995696:	51                                              	push   ecx
10995697:	8b ce                                           	mov    ecx,esi
10995699:	ff d2                                           	call   edx
1099569b:	84 c0                                           	test   al,al
1099569d:	74 20                                           	je     0x109956bf
1099569f:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109956a3:	3b cb                                           	cmp    ecx,ebx
109956a5:	74 18                                           	je     0x109956bf
109956a7:	8b 01                                           	mov    eax,DWORD PTR [ecx]
109956a9:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
109956ac:	68 3c 3b 4a f1                                  	push   0xf14a3b3c
109956b1:	ff d2                                           	call   edx
109956b3:	3b c3                                           	cmp    eax,ebx
109956b5:	74 08                                           	je     0x109956bf
109956b7:	50                                              	push   eax
109956b8:	8b cf                                           	mov    ecx,edi
109956ba:	e8 41 26 8d ff                                  	call   0x10267d00
109956bf:	8b 45 18                                        	mov    eax,DWORD PTR [ebp+0x18]
109956c2:	25 ff ff ff 00                                  	and    eax,0xffffff
109956c7:	09 44 24 24                                     	or     DWORD PTR [esp+0x24],eax
109956cb:	c7 44 24 14 01 00 00 00                         	mov    DWORD PTR [esp+0x14],0x1
109956d3:	8b 4d 1c                                        	mov    ecx,DWORD PTR [ebp+0x1c]
109956d6:	85 4c 24 14                                     	test   DWORD PTR [esp+0x14],ecx
109956da:	0f 84 f4 00 00 00                               	je     0x109957d4
109956e0:	6a 00                                           	push   0x0
109956e2:	6a 00                                           	push   0x0
109956e4:	6a 00                                           	push   0x0
109956e6:	6a 00                                           	push   0x0
109956e8:	68 8c 79 b9 10                                  	push   0x10b9798c
109956ed:	6a 30                                           	push   0x30
109956ef:	e8 bc 37 f8 ff                                  	call   0x10918eb0
109956f4:	83 c4 18                                        	add    esp,0x18
109956f7:	85 c0                                           	test   eax,eax
109956f9:	0f 84 04 01 00 00                               	je     0x10995803
109956ff:	8b c8                                           	mov    ecx,eax
10995701:	e8 0a f1 ff ff                                  	call   0x10994810
10995706:	8b f8                                           	mov    edi,eax
10995708:	85 ff                                           	test   edi,edi
1099570a:	74 09                                           	je     0x10995715
1099570c:	8b 17                                           	mov    edx,DWORD PTR [edi]
1099570e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995711:	8b cf                                           	mov    ecx,edi
10995713:	ff d0                                           	call   eax
10995715:	6a 00                                           	push   0x0
10995717:	6a 00                                           	push   0x0
10995719:	6a 00                                           	push   0x0
1099571b:	6a 00                                           	push   0x0
1099571d:	68 78 79 b9 10                                  	push   0x10b97978
10995722:	6a 58                                           	push   0x58
10995724:	e8 87 37 f8 ff                                  	call   0x10918eb0
10995729:	83 c4 18                                        	add    esp,0x18
1099572c:	85 c0                                           	test   eax,eax
1099572e:	0f 84 d6 00 00 00                               	je     0x1099580a
10995734:	8b c8                                           	mov    ecx,eax
10995736:	e8 35 7c 9a ff                                  	call   0x1033d370
1099573b:	8b f0                                           	mov    esi,eax
1099573d:	85 f6                                           	test   esi,esi
1099573f:	74 08                                           	je     0x10995749
10995741:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995743:	8b 02                                           	mov    eax,DWORD PTR [edx]
10995745:	8b ce                                           	mov    ecx,esi
10995747:	ff d0                                           	call   eax
10995749:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1099574d:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10995751:	6a 00                                           	push   0x0
10995753:	6a 00                                           	push   0x0
10995755:	53                                              	push   ebx
10995756:	6a 00                                           	push   0x0
10995758:	6a 00                                           	push   0x0
1099575a:	6a 00                                           	push   0x0
1099575c:	83 ec 10                                        	sub    esp,0x10
1099575f:	8b c4                                           	mov    eax,esp
10995761:	89 08                                           	mov    DWORD PTR [eax],ecx
10995763:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
10995767:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1099576a:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
1099576e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10995771:	8d 4c 24 58                                     	lea    ecx,[esp+0x58]
10995775:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10995778:	e8 d3 a2 76 ff                                  	call   0x100ffa50
1099577d:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10995781:	57                                              	push   edi
10995782:	56                                              	push   esi
10995783:	6a 00                                           	push   0x0
10995785:	6a 00                                           	push   0x0
10995787:	8d 44 24 40                                     	lea    eax,[esp+0x40]
1099578b:	50                                              	push   eax
1099578c:	e8 ef 0d 9a ff                                  	call   0x10336580
10995791:	84 c0                                           	test   al,al
10995793:	74 7c                                           	je     0x10995811
10995795:	8b 4d 20                                        	mov    ecx,DWORD PTR [ebp+0x20]
10995798:	51                                              	push   ecx
10995799:	53                                              	push   ebx
1099579a:	8d 54 24 20                                     	lea    edx,[esp+0x20]
1099579e:	52                                              	push   edx
1099579f:	56                                              	push   esi
109957a0:	57                                              	push   edi
109957a1:	e8 4a f5 ff ff                                  	call   0x10994cf0
109957a6:	83 c4 14                                        	add    esp,0x14
109957a9:	84 c0                                           	test   al,al
109957ab:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109957af:	0f 84 97 00 00 00                               	je     0x1099584c
109957b5:	e8 46 52 76 ff                                  	call   0x100faa00
109957ba:	85 f6                                           	test   esi,esi
109957bc:	74 09                                           	je     0x109957c7
109957be:	8b 06                                           	mov    eax,DWORD PTR [esi]
109957c0:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
109957c3:	8b ce                                           	mov    ecx,esi
109957c5:	ff d2                                           	call   edx
109957c7:	85 ff                                           	test   edi,edi
109957c9:	74 09                                           	je     0x109957d4
109957cb:	8b 07                                           	mov    eax,DWORD PTR [edi]
109957cd:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
109957d0:	8b cf                                           	mov    ecx,edi
109957d2:	ff d2                                           	call   edx
109957d4:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
109957d8:	83 c3 01                                        	add    ebx,0x1
109957db:	83 fb 04                                        	cmp    ebx,0x4
109957de:	8d 0c 00                                        	lea    ecx,[eax+eax*1]
109957e1:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
109957e5:	0f 82 e8 fe ff ff                               	jb     0x109956d3
109957eb:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
109957ef:	85 c9                                           	test   ecx,ecx
109957f1:	74 07                                           	je     0x109957fa
109957f3:	8b 11                                           	mov    edx,DWORD PTR [ecx]
109957f5:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
109957f8:	ff d0                                           	call   eax
109957fa:	b0 01                                           	mov    al,0x1
109957fc:	5f                                              	pop    edi
109957fd:	5e                                              	pop    esi
109957fe:	5b                                              	pop    ebx
109957ff:	8b e5                                           	mov    esp,ebp
10995801:	5d                                              	pop    ebp
10995802:	c3                                              	ret
10995803:	33 ff                                           	xor    edi,edi
10995805:	e9 0b ff ff ff                                  	jmp    0x10995715
1099580a:	33 f6                                           	xor    esi,esi
1099580c:	e9 38 ff ff ff                                  	jmp    0x10995749
10995811:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
10995815:	e8 e6 51 76 ff                                  	call   0x100faa00
1099581a:	85 f6                                           	test   esi,esi
1099581c:	74 09                                           	je     0x10995827
1099581e:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995820:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995823:	8b ce                                           	mov    ecx,esi
10995825:	ff d0                                           	call   eax
10995827:	85 ff                                           	test   edi,edi
10995829:	74 09                                           	je     0x10995834
1099582b:	8b 17                                           	mov    edx,DWORD PTR [edi]
1099582d:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10995830:	8b cf                                           	mov    ecx,edi
10995832:	ff d0                                           	call   eax
10995834:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10995838:	85 c9                                           	test   ecx,ecx
1099583a:	74 07                                           	je     0x10995843
1099583c:	8b 11                                           	mov    edx,DWORD PTR [ecx]
1099583e:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995841:	ff d0                                           	call   eax
10995843:	32 c0                                           	xor    al,al
10995845:	5f                                              	pop    edi
10995846:	5e                                              	pop    esi
10995847:	5b                                              	pop    ebx
10995848:	8b e5                                           	mov    esp,ebp
1099584a:	5d                                              	pop    ebp
1099584b:	c3                                              	ret
1099584c:	e8 af 51 76 ff                                  	call   0x100faa00
10995851:	85 f6                                           	test   esi,esi
10995853:	74 09                                           	je     0x1099585e
10995855:	8b 16                                           	mov    edx,DWORD PTR [esi]
10995857:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
1099585a:	8b ce                                           	mov    ecx,esi
1099585c:	ff d0                                           	call   eax
1099585e:	85 ff                                           	test   edi,edi
10995860:	74 09                                           	je     0x1099586b
10995862:	8b 17                                           	mov    edx,DWORD PTR [edi]
10995864:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
10995867:	8b cf                                           	mov    ecx,edi
10995869:	ff d0                                           	call   eax
1099586b:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1099586f:	85 c9                                           	test   ecx,ecx
10995871:	74 d0                                           	je     0x10995843
10995873:	8b 11                                           	mov    edx,DWORD PTR [ecx]
10995875:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
10995878:	ff d0                                           	call   eax
1099587a:	5f                                              	pop    edi
1099587b:	5e                                              	pop    esi
1099587c:	32 c0                                           	xor    al,al
1099587e:	5b                                              	pop    ebx
1099587f:	8b e5                                           	mov    esp,ebp
10995881:	5d                                              	pop    ebp
10995882:	c3                                              	ret
10995883:	cc                                              	int3
10995884:	cc                                              	int3
10995885:	cc                                              	int3
10995886:	cc                                              	int3
10995887:	cc                                              	int3
10995888:	cc                                              	int3
10995889:	cc                                              	int3
1099588a:	cc                                              	int3
1099588b:	cc                                              	int3
1099588c:	cc                                              	int3
1099588d:	cc                                              	int3
1099588e:	cc                                              	int3
1099588f:	cc                                              	int3
