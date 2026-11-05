# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996670 (ScriptCore.DownloadContent::DownloadContent_ImportLotContentsFromExportBinImpl)
Paired Ghidra pseudocode: 00996670_ScriptCore_DownloadContent_DownloadContent_ImportLotContentsFromExportBinImpl.c
Window: [0x00996670, 0x009967a0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x009967a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996670: 83 ec 2c 53 56 57 e8 15 2d dd ff 33 db 3b c3 0f
00996680: 84 06 01 00 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b
00996690: c8 ff d2 50 8d 4c 24 14 89 5c 24 14 89 5c 24 18
009966a0: 89 5c 24 1c c7 44 24 20 54 a0 04 01 e8 df 4e a7
009966b0: ff 8b 35 a4 a6 1e 01 8b 3d f8 c4 1e 01 8b ce e8
009966c0: ac af 00 00 84 c0 0f 85 a0 00 00 00 8d 44 24 0c
009966d0: 50 8d 4c 24 14 51 8b ce 89 5c 24 14 e8 cf c7 00
009966e0: 00 84 c0 74 74 8b 54 24 0c 55 6a 01 52 8d 4c 24
009966f0: 2c e8 2a 12 e4 ff 8b 44 24 44 50 8d 4c 24 28 51
00996700: 8b cf e8 29 f4 13 00 8b ce 8b f8 8b ea e8 ee ae
00996710: 00 00 8d 4c 24 24 e8 75 12 e4 ff 8b 44 24 10 3b
00996720: c3 74 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 8b 4c
00996730: 24 1c 8b 44 24 14 2b c8 83 e1 fe 83 f9 02 7e 0d
00996740: 3b c3 74 09 50 e8 96 dd b4 ff 83 c4 04 8b d5 5d
00996750: 8b c7 5f 5e 5b 83 c4 2c c3 8b 44 24 0c 3b c3 74
00996760: 0b 8b 50 04 8d 48 04 8b 42 04 ff d0 8b 4c 24 18
00996770: 8b 44 24 10 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3
00996780: 74 09 50 e8 58 dd b4 ff 83 c4 04 5f 5e 33 c0 33
00996790: d2 5b 83 c4 2c c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00996670 <.text+0x595670>:
  996670:	83 ec 2c                                        	sub    esp,0x2c
  996673:	53                                              	push   ebx
  996674:	56                                              	push   esi
  996675:	57                                              	push   edi
  996676:	e8 15 2d dd ff                                  	call   0x769390
  99667b:	33 db                                           	xor    ebx,ebx
  99667d:	3b c3                                           	cmp    eax,ebx
  99667f:	0f 84 06 01 00 00                               	je     0x99678b
  996685:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  996689:	8b 10                                           	mov    edx,DWORD PTR [eax]
  99668b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  99668e:	51                                              	push   ecx
  99668f:	8b c8                                           	mov    ecx,eax
  996691:	ff d2                                           	call   edx
  996693:	50                                              	push   eax
  996694:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  996698:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  99669c:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  9966a0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  9966a4:	c7 44 24 20 54 a0 04 01                         	mov    DWORD PTR [esp+0x20],0x104a054
  9966ac:	e8 df 4e a7 ff                                  	call   0x40b590
  9966b1:	8b 35 a4 a6 1e 01                               	mov    esi,DWORD PTR ds:0x11ea6a4
  9966b7:	8b 3d f8 c4 1e 01                               	mov    edi,DWORD PTR ds:0x11ec4f8
  9966bd:	8b ce                                           	mov    ecx,esi
  9966bf:	e8 ac af 00 00                                  	call   0x9a1670
  9966c4:	84 c0                                           	test   al,al
  9966c6:	0f 85 a0 00 00 00                               	jne    0x99676c
  9966cc:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  9966d0:	50                                              	push   eax
  9966d1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  9966d5:	51                                              	push   ecx
  9966d6:	8b ce                                           	mov    ecx,esi
  9966d8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  9966dc:	e8 cf c7 00 00                                  	call   0x9a2eb0
  9966e1:	84 c0                                           	test   al,al
  9966e3:	74 74                                           	je     0x996759
  9966e5:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  9966e9:	55                                              	push   ebp
  9966ea:	6a 01                                           	push   0x1
  9966ec:	52                                              	push   edx
  9966ed:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  9966f1:	e8 2a 12 e4 ff                                  	call   0x7d7920
  9966f6:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  9966fa:	50                                              	push   eax
  9966fb:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  9966ff:	51                                              	push   ecx
  996700:	8b cf                                           	mov    ecx,edi
  996702:	e8 29 f4 13 00                                  	call   0xad5b30
  996707:	8b ce                                           	mov    ecx,esi
  996709:	8b f8                                           	mov    edi,eax
  99670b:	8b ea                                           	mov    ebp,edx
  99670d:	e8 ee ae 00 00                                  	call   0x9a1600
  996712:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  996716:	e8 75 12 e4 ff                                  	call   0x7d7990
  99671b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  99671f:	3b c3                                           	cmp    eax,ebx
  996721:	74 0b                                           	je     0x99672e
  996723:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  996726:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996729:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  99672c:	ff d0                                           	call   eax
  99672e:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  996732:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  996736:	2b c8                                           	sub    ecx,eax
  996738:	83 e1 fe                                        	and    ecx,0xfffffffe
  99673b:	83 f9 02                                        	cmp    ecx,0x2
  99673e:	7e 0d                                           	jle    0x99674d
  996740:	3b c3                                           	cmp    eax,ebx
  996742:	74 09                                           	je     0x99674d
  996744:	50                                              	push   eax
  996745:	e8 96 dd b4 ff                                  	call   0x4e44e0
  99674a:	83 c4 04                                        	add    esp,0x4
  99674d:	8b d5                                           	mov    edx,ebp
  99674f:	5d                                              	pop    ebp
  996750:	8b c7                                           	mov    eax,edi
  996752:	5f                                              	pop    edi
  996753:	5e                                              	pop    esi
  996754:	5b                                              	pop    ebx
  996755:	83 c4 2c                                        	add    esp,0x2c
  996758:	c3                                              	ret
  996759:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  99675d:	3b c3                                           	cmp    eax,ebx
  99675f:	74 0b                                           	je     0x99676c
  996761:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  996764:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996767:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  99676a:	ff d0                                           	call   eax
  99676c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  996770:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  996774:	2b c8                                           	sub    ecx,eax
  996776:	83 e1 fe                                        	and    ecx,0xfffffffe
  996779:	83 f9 02                                        	cmp    ecx,0x2
  99677c:	7e 0d                                           	jle    0x99678b
  99677e:	3b c3                                           	cmp    eax,ebx
  996780:	74 09                                           	je     0x99678b
  996782:	50                                              	push   eax
  996783:	e8 58 dd b4 ff                                  	call   0x4e44e0
  996788:	83 c4 04                                        	add    esp,0x4
  99678b:	5f                                              	pop    edi
  99678c:	5e                                              	pop    esi
  99678d:	33 c0                                           	xor    eax,eax
  99678f:	33 d2                                           	xor    edx,edx
  996791:	5b                                              	pop    ebx
  996792:	83 c4 2c                                        	add    esp,0x2c
  996795:	c3                                              	ret
  996796:	cc                                              	int3
  996797:	cc                                              	int3
  996798:	cc                                              	int3
  996799:	cc                                              	int3
  99679a:	cc                                              	int3
  99679b:	cc                                              	int3
  99679c:	cc                                              	int3
  99679d:	cc                                              	int3
  99679e:	cc                                              	int3
  99679f:	cc                                              	int3
