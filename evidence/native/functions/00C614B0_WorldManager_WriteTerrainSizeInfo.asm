# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; Ghidra function-body envelope [0x00c614b0, 0x00c61682).
# Analyst function names and body boundaries are inferred; original bytes govern the paired pseudocode.

Original PC 1.67 TS3W.exe, virtual addresses; image base0x00400000.
Analyst name: WorldManager_WriteTerrainSizeInfo.
Paired annotated Ghidra pseudocode: 00C614B0_WorldManager_WriteTerrainSizeInfo.c
Instruction-verified function envelope [0x00c614b0,0x00c61682); inferred boundaries.
Includes any internal alignment gaps; original instructions govern decompiler interpretation.


TS3W.exe (original PC 1.67):     file format pei-i386


Disassembly of section .text:

00c614b0 <.text+0x8604b0>:
  c614b0:	83 ec 18             	sub    esp,0x18
  c614b3:	56                   	push   esi
  c614b4:	8b 74 24 20          	mov    esi,DWORD PTR [esp+0x20]
  c614b8:	57                   	push   edi
  c614b9:	6a 01                	push   0x1
  c614bb:	8d 44 24 14          	lea    eax,[esp+0x14]
  c614bf:	8b f9                	mov    edi,ecx
  c614c1:	50                   	push   eax
  c614c2:	8b ce                	mov    ecx,esi
  c614c4:	c7 44 24 18 01 00 00 	mov    DWORD PTR [esp+0x18],0x1
  c614cb:	00
  c614cc:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [esp+0x1c],0x0
  c614d3:	00
  c614d4:	c7 44 24 20 1b 4c 62 	mov    DWORD PTR [esp+0x20],0x90624c1b
  c614db:	90
  c614dc:	c7 44 24 24 00 00 00 	mov    DWORD PTR [esp+0x24],0x0
  c614e3:	00
  c614e4:	e8 d7 6f b7 ff       	call   0x7d84c0
  c614e9:	84 c0                	test   al,al
  c614eb:	0f 84 86 01 00 00    	je     0xc61677
  c614f1:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c614f4:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c614f7:	53                   	push   ebx
  c614f8:	8b 9f 04 01 00 00    	mov    ebx,DWORD PTR [edi+0x104]
  c614fe:	2b 9f 00 01 00 00    	sub    ebx,DWORD PTR [edi+0x100]
  c61504:	51                   	push   ecx
  c61505:	6a 0e                	push   0xe
  c61507:	52                   	push   edx
  c61508:	c1 fb 02             	sar    ebx,0x2
  c6150b:	e8 60 c9 87 ff       	call   0x4dde70
  c61510:	83 c4 0c             	add    esp,0xc
  c61513:	8b ce                	mov    ecx,esi
  c61515:	50                   	push   eax
  c61516:	e8 d5 64 b7 ff       	call   0x7d79f0
  c6151b:	d9 87 b4 00 00 00    	fld    DWORD PTR [edi+0xb4]
  c61521:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c61524:	50                   	push   eax
  c61525:	51                   	push   ecx
  c61526:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c61529:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6152c:	51                   	push   ecx
  c6152d:	e8 5e ce 87 ff       	call   0x4de390
  c61532:	83 c4 0c             	add    esp,0xc
  c61535:	8b ce                	mov    ecx,esi
  c61537:	50                   	push   eax
  c61538:	e8 b3 64 b7 ff       	call   0x7d79f0
  c6153d:	d9 87 b8 00 00 00    	fld    DWORD PTR [edi+0xb8]
  c61543:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c61546:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c61549:	52                   	push   edx
  c6154a:	51                   	push   ecx
  c6154b:	d9 1c 24             	fstp   DWORD PTR [esp]
  c6154e:	50                   	push   eax
  c6154f:	e8 3c ce 87 ff       	call   0x4de390
  c61554:	83 c4 0c             	add    esp,0xc
  c61557:	8b ce                	mov    ecx,esi
  c61559:	50                   	push   eax
  c6155a:	e8 91 64 b7 ff       	call   0x7d79f0
  c6155f:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c61562:	8b 87 cc 00 00 00    	mov    eax,DWORD PTR [edi+0xcc]
  c61568:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c6156b:	51                   	push   ecx
  c6156c:	50                   	push   eax
  c6156d:	52                   	push   edx
  c6156e:	e8 fd c9 87 ff       	call   0x4ddf70
  c61573:	83 c4 0c             	add    esp,0xc
  c61576:	8b ce                	mov    ecx,esi
  c61578:	50                   	push   eax
  c61579:	e8 72 64 b7 ff       	call   0x7d79f0
  c6157e:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c61581:	8b 87 d0 00 00 00    	mov    eax,DWORD PTR [edi+0xd0]
  c61587:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  c6158a:	51                   	push   ecx
  c6158b:	50                   	push   eax
  c6158c:	52                   	push   edx
  c6158d:	e8 de c9 87 ff       	call   0x4ddf70
  c61592:	83 c4 0c             	add    esp,0xc
  c61595:	8b ce                	mov    ecx,esi
  c61597:	50                   	push   eax
  c61598:	e8 53 64 b7 ff       	call   0x7d79f0
  c6159d:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  c615a0:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c615a3:	50                   	push   eax
  c615a4:	53                   	push   ebx
  c615a5:	51                   	push   ecx
  c615a6:	e8 c5 c9 87 ff       	call   0x4ddf70
  c615ab:	83 c4 0c             	add    esp,0xc
  c615ae:	8b ce                	mov    ecx,esi
  c615b0:	50                   	push   eax
  c615b1:	e8 3a 64 b7 ff       	call   0x7d79f0
  c615b6:	8b 57 58             	mov    edx,DWORD PTR [edi+0x58]
  c615b9:	8b 5a 68             	mov    ebx,DWORD PTR [edx+0x68]
  c615bc:	8d 44 24 0c          	lea    eax,[esp+0xc]
  c615c0:	50                   	push   eax
  c615c1:	6a 00                	push   0x0
  c615c3:	8b cb                	mov    ecx,ebx
  c615c5:	e8 a6 15 fc ff       	call   0xc22b70
  c615ca:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c615cd:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  c615d1:	51                   	push   ecx
  c615d2:	52                   	push   edx
  c615d3:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c615d6:	50                   	push   eax
  c615d7:	e8 94 c9 87 ff       	call   0x4ddf70
  c615dc:	83 c4 0c             	add    esp,0xc
  c615df:	8b ce                	mov    ecx,esi
  c615e1:	50                   	push   eax
  c615e2:	e8 09 64 b7 ff       	call   0x7d79f0
  c615e7:	8b 4e 10             	mov    ecx,DWORD PTR [esi+0x10]
  c615ea:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  c615ee:	8b 46 08             	mov    eax,DWORD PTR [esi+0x8]
  c615f1:	51                   	push   ecx
  c615f2:	52                   	push   edx
  c615f3:	50                   	push   eax
  c615f4:	e8 77 c9 87 ff       	call   0x4ddf70
  c615f9:	83 c4 0c             	add    esp,0xc
  c615fc:	8b ce                	mov    ecx,esi
  c615fe:	50                   	push   eax
  c615ff:	e8 ec 63 b7 ff       	call   0x7d79f0
  c61604:	8d 4c 24 0c          	lea    ecx,[esp+0xc]
  c61608:	51                   	push   ecx
  c61609:	6a 01                	push   0x1
  c6160b:	8b cb                	mov    ecx,ebx
  c6160d:	e8 5e 15 fc ff       	call   0xc22b70
  c61612:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c61615:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  c61619:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c6161c:	52                   	push   edx
  c6161d:	50                   	push   eax
  c6161e:	51                   	push   ecx
  c6161f:	e8 4c c9 87 ff       	call   0x4ddf70
  c61624:	83 c4 0c             	add    esp,0xc
  c61627:	8b ce                	mov    ecx,esi
  c61629:	50                   	push   eax
  c6162a:	e8 c1 63 b7 ff       	call   0x7d79f0
  c6162f:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  c61632:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  c61636:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c61639:	52                   	push   edx
  c6163a:	50                   	push   eax
  c6163b:	51                   	push   ecx
  c6163c:	e8 2f c9 87 ff       	call   0x4ddf70
  c61641:	83 c4 0c             	add    esp,0xc
  c61644:	8b ce                	mov    ecx,esi
  c61646:	50                   	push   eax
  c61647:	e8 a4 63 b7 ff       	call   0x7d79f0
  c6164c:	8a 97 64 01 00 00    	mov    dl,BYTE PTR [edi+0x164]
  c61652:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  c61655:	88 54 24 28          	mov    BYTE PTR [esp+0x28],dl
  c61659:	8b 44 24 28          	mov    eax,DWORD PTR [esp+0x28]
  c6165d:	50                   	push   eax
  c6165e:	51                   	push   ecx
  c6165f:	e8 cc c7 87 ff       	call   0x4dde30
  c61664:	83 c4 08             	add    esp,0x8
  c61667:	8b ce                	mov    ecx,esi
  c61669:	50                   	push   eax
  c6166a:	e8 81 63 b7 ff       	call   0x7d79f0
  c6166f:	8b ce                	mov    ecx,esi
  c61671:	e8 fa 63 b7 ff       	call   0x7d7a70
  c61676:	5b                   	pop    ebx
  c61677:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  c6167a:	5f                   	pop    edi
  c6167b:	5e                   	pop    esi
  c6167c:	83 c4 18             	add    esp,0x18
  c6167f:	c2 04 00             	ret    0x4
