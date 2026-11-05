# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009967a0 (ScriptCore.DownloadContent::DownloadContent_ImportHouseholdContentsFromExportBinImpl)
Paired Ghidra pseudocode: 009967A0_ScriptCore_DownloadContent_DownloadContent_ImportHouseholdContentsFromExportBinImpl.c
Window: [0x009967a0, 0x009968d0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x009968d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009967a0: 83 ec 2c 53 56 57 e8 e5 2b dd ff 33 db 3b c3 0f
009967b0: 84 01 01 00 00 8b 4c 24 3c 8b 10 8b 52 58 51 8b
009967c0: c8 ff d2 50 8d 4c 24 14 89 5c 24 14 89 5c 24 18
009967d0: 89 5c 24 1c c7 44 24 20 54 a0 04 01 e8 af 4d a7
009967e0: ff 8b 35 a4 a6 1e 01 8b 3d f8 c4 1e 01 8b ce e8
009967f0: 7c ae 00 00 84 c0 0f 85 9b 00 00 00 8d 44 24 0c
00996800: 50 8d 4c 24 14 51 8b ce 89 5c 24 14 e8 9f c6 00
00996810: 00 84 c0 74 6f 8b 54 24 0c 55 6a 01 52 8d 4c 24
00996820: 2c e8 fa 10 e4 ff 8d 44 24 24 50 8b cf e8 1e f9
00996830: 13 00 8b ce 8b f8 8b ea e8 c3 ad 00 00 8d 4c 24
00996840: 24 e8 4a 11 e4 ff 8b 44 24 10 3b c3 74 0b 8b 50
00996850: 04 8d 48 04 8b 42 04 ff d0 8b 4c 24 1c 8b 44 24
00996860: 14 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50
00996870: e8 6b dc b4 ff 83 c4 04 8b d5 5d 8b c7 5f 5e 5b
00996880: 83 c4 2c c3 8b 44 24 0c 3b c3 74 0b 8b 50 04 8d
00996890: 48 04 8b 42 04 ff d0 8b 4c 24 18 8b 44 24 10 2b
009968a0: c8 83 e1 fe 83 f9 02 7e 0d 3b c3 74 09 50 e8 2d
009968b0: dc b4 ff 83 c4 04 5f 5e 33 c0 33 d2 5b 83 c4 2c
009968c0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009967a0 <.text+0x5957a0>:
  9967a0:	83 ec 2c                                        	sub    esp,0x2c
  9967a3:	53                                              	push   ebx
  9967a4:	56                                              	push   esi
  9967a5:	57                                              	push   edi
  9967a6:	e8 e5 2b dd ff                                  	call   0x769390
  9967ab:	33 db                                           	xor    ebx,ebx
  9967ad:	3b c3                                           	cmp    eax,ebx
  9967af:	0f 84 01 01 00 00                               	je     0x9968b6
  9967b5:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  9967b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9967bb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  9967be:	51                                              	push   ecx
  9967bf:	8b c8                                           	mov    ecx,eax
  9967c1:	ff d2                                           	call   edx
  9967c3:	50                                              	push   eax
  9967c4:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  9967c8:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  9967cc:	89 5c 24 18                                     	mov    DWORD PTR [esp+0x18],ebx
  9967d0:	89 5c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebx
  9967d4:	c7 44 24 20 54 a0 04 01                         	mov    DWORD PTR [esp+0x20],0x104a054
  9967dc:	e8 af 4d a7 ff                                  	call   0x40b590
  9967e1:	8b 35 a4 a6 1e 01                               	mov    esi,DWORD PTR ds:0x11ea6a4
  9967e7:	8b 3d f8 c4 1e 01                               	mov    edi,DWORD PTR ds:0x11ec4f8
  9967ed:	8b ce                                           	mov    ecx,esi
  9967ef:	e8 7c ae 00 00                                  	call   0x9a1670
  9967f4:	84 c0                                           	test   al,al
  9967f6:	0f 85 9b 00 00 00                               	jne    0x996897
  9967fc:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  996800:	50                                              	push   eax
  996801:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  996805:	51                                              	push   ecx
  996806:	8b ce                                           	mov    ecx,esi
  996808:	89 5c 24 14                                     	mov    DWORD PTR [esp+0x14],ebx
  99680c:	e8 9f c6 00 00                                  	call   0x9a2eb0
  996811:	84 c0                                           	test   al,al
  996813:	74 6f                                           	je     0x996884
  996815:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  996819:	55                                              	push   ebp
  99681a:	6a 01                                           	push   0x1
  99681c:	52                                              	push   edx
  99681d:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  996821:	e8 fa 10 e4 ff                                  	call   0x7d7920
  996826:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  99682a:	50                                              	push   eax
  99682b:	8b cf                                           	mov    ecx,edi
  99682d:	e8 1e f9 13 00                                  	call   0xad6150
  996832:	8b ce                                           	mov    ecx,esi
  996834:	8b f8                                           	mov    edi,eax
  996836:	8b ea                                           	mov    ebp,edx
  996838:	e8 c3 ad 00 00                                  	call   0x9a1600
  99683d:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  996841:	e8 4a 11 e4 ff                                  	call   0x7d7990
  996846:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  99684a:	3b c3                                           	cmp    eax,ebx
  99684c:	74 0b                                           	je     0x996859
  99684e:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  996851:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996854:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  996857:	ff d0                                           	call   eax
  996859:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  99685d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  996861:	2b c8                                           	sub    ecx,eax
  996863:	83 e1 fe                                        	and    ecx,0xfffffffe
  996866:	83 f9 02                                        	cmp    ecx,0x2
  996869:	7e 0d                                           	jle    0x996878
  99686b:	3b c3                                           	cmp    eax,ebx
  99686d:	74 09                                           	je     0x996878
  99686f:	50                                              	push   eax
  996870:	e8 6b dc b4 ff                                  	call   0x4e44e0
  996875:	83 c4 04                                        	add    esp,0x4
  996878:	8b d5                                           	mov    edx,ebp
  99687a:	5d                                              	pop    ebp
  99687b:	8b c7                                           	mov    eax,edi
  99687d:	5f                                              	pop    edi
  99687e:	5e                                              	pop    esi
  99687f:	5b                                              	pop    ebx
  996880:	83 c4 2c                                        	add    esp,0x2c
  996883:	c3                                              	ret
  996884:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  996888:	3b c3                                           	cmp    eax,ebx
  99688a:	74 0b                                           	je     0x996897
  99688c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  99688f:	8d 48 04                                        	lea    ecx,[eax+0x4]
  996892:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  996895:	ff d0                                           	call   eax
  996897:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  99689b:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  99689f:	2b c8                                           	sub    ecx,eax
  9968a1:	83 e1 fe                                        	and    ecx,0xfffffffe
  9968a4:	83 f9 02                                        	cmp    ecx,0x2
  9968a7:	7e 0d                                           	jle    0x9968b6
  9968a9:	3b c3                                           	cmp    eax,ebx
  9968ab:	74 09                                           	je     0x9968b6
  9968ad:	50                                              	push   eax
  9968ae:	e8 2d dc b4 ff                                  	call   0x4e44e0
  9968b3:	83 c4 04                                        	add    esp,0x4
  9968b6:	5f                                              	pop    edi
  9968b7:	5e                                              	pop    esi
  9968b8:	33 c0                                           	xor    eax,eax
  9968ba:	33 d2                                           	xor    edx,edx
  9968bc:	5b                                              	pop    ebx
  9968bd:	83 c4 2c                                        	add    esp,0x2c
  9968c0:	c3                                              	ret
  9968c1:	cc                                              	int3
  9968c2:	cc                                              	int3
  9968c3:	cc                                              	int3
  9968c4:	cc                                              	int3
  9968c5:	cc                                              	int3
  9968c6:	cc                                              	int3
  9968c7:	cc                                              	int3
  9968c8:	cc                                              	int3
  9968c9:	cc                                              	int3
  9968ca:	cc                                              	int3
  9968cb:	cc                                              	int3
  9968cc:	cc                                              	int3
  9968cd:	cc                                              	int3
  9968ce:	cc                                              	int3
  9968cf:	cc                                              	int3
