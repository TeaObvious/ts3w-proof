# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795840 (ScriptCore.World::World_GetWorldFileName)
Paired Ghidra pseudocode: 00795840_ScriptCore_World_World_GetWorldFileName.c
Window: [0x00795840, 0x007959b0) (368 bytes; stop exclusive)
Next defined Ghidra entry: 0x007959b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795840: 81 ec 6c 06 00 00 56 8b 35 c4 db 1e 01 57 e8 3d
00795850: 3b fd ff 85 f6 8b f8 0f 84 47 01 00 00 85 ff 0f
00795860: 84 3f 01 00 00 8d 8c 24 64 02 00 00 e8 6f 6f d5
00795870: ff 8b ce e8 c8 38 28 00 50 8d 8c 24 68 02 00 00
00795880: e8 db 86 d5 ff 68 04 01 00 00 8d 44 24 60 50 8d
00795890: 8c 24 6c 02 00 00 e8 f5 85 d5 ff 66 83 7c 24 5c
007958a0: 00 b8 54 8e 1c 01 89 44 24 0c 89 44 24 10 c7 44
007958b0: 24 18 18 1c 01 01 c7 44 24 14 56 8e 1c 01 8d 44
007958c0: 24 5c 74 09 83 c0 02 66 83 38 00 75 f7 8d 4c 24
007958d0: 5c 2b c1 d1 f8 8d 54 44 5c 8b c1 52 50 8d 4c 24
007958e0: 14 e8 7a 34 c7 ff 6a 01 6a 10 8d 4c 24 14 51 6a
007958f0: 09 be f4 a6 fb 00 6a 13 8d 4c 24 30 89 74 24 30
00795900: 66 c7 44 24 38 00 00 66 c7 44 24 3a 00 00 e8 ad
00795910: 00 d6 ff 8d 54 24 1c 52 8d 4c 24 40 c7 44 24 40
00795920: 6c 88 00 01 66 c7 44 24 4a 13 00 66 c7 44 24 48
00795930: 02 00 e8 79 0b d6 ff f6 44 24 24 04 89 74 24 1c
00795940: 74 0b 6a 00 8d 4c 24 20 e8 13 fe d5 ff 8b 07 8b
00795950: 40 50 8d 4c 24 08 51 8d 54 24 40 52 8b cf ff d0
00795960: f6 44 24 44 04 8b 7c 24 08 89 74 24 3c 74 0b 6a
00795970: 00 8d 4c 24 40 e8 e6 fd d5 ff 8b 4c 24 14 8b 44
00795980: 24 0c 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09
00795990: 50 e8 4a eb d4 ff 83 c4 04 8b c7 5f 5e 81 c4 6c
007959a0: 06 00 00 c3 5f 33 c0 5e 81 c4 6c 06 00 00 c3 cc

LINEAR DISASSEMBLY
00795840 <.text+0x394840>:
  795840:	81 ec 6c 06 00 00                               	sub    esp,0x66c
  795846:	56                                              	push   esi
  795847:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  79584d:	57                                              	push   edi
  79584e:	e8 3d 3b fd ff                                  	call   0x769390
  795853:	85 f6                                           	test   esi,esi
  795855:	8b f8                                           	mov    edi,eax
  795857:	0f 84 47 01 00 00                               	je     0x7959a4
  79585d:	85 ff                                           	test   edi,edi
  79585f:	0f 84 3f 01 00 00                               	je     0x7959a4
  795865:	8d 8c 24 64 02 00 00                            	lea    ecx,[esp+0x264]
  79586c:	e8 6f 6f d5 ff                                  	call   0x4ec7e0
  795871:	8b ce                                           	mov    ecx,esi
  795873:	e8 c8 38 28 00                                  	call   0xa19140
  795878:	50                                              	push   eax
  795879:	8d 8c 24 68 02 00 00                            	lea    ecx,[esp+0x268]
  795880:	e8 db 86 d5 ff                                  	call   0x4edf60
  795885:	68 04 01 00 00                                  	push   0x104
  79588a:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  79588e:	50                                              	push   eax
  79588f:	8d 8c 24 6c 02 00 00                            	lea    ecx,[esp+0x26c]
  795896:	e8 f5 85 d5 ff                                  	call   0x4ede90
  79589b:	66 83 7c 24 5c 00                               	cmp    WORD PTR [esp+0x5c],0x0
  7958a1:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  7958a6:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7958aa:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7958ae:	c7 44 24 18 18 1c 01 01                         	mov    DWORD PTR [esp+0x18],0x1011c18
  7958b6:	c7 44 24 14 56 8e 1c 01                         	mov    DWORD PTR [esp+0x14],0x11c8e56
  7958be:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  7958c2:	74 09                                           	je     0x7958cd
  7958c4:	83 c0 02                                        	add    eax,0x2
  7958c7:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  7958cb:	75 f7                                           	jne    0x7958c4
  7958cd:	8d 4c 24 5c                                     	lea    ecx,[esp+0x5c]
  7958d1:	2b c1                                           	sub    eax,ecx
  7958d3:	d1 f8                                           	sar    eax,1
  7958d5:	8d 54 44 5c                                     	lea    edx,[esp+eax*2+0x5c]
  7958d9:	8b c1                                           	mov    eax,ecx
  7958db:	52                                              	push   edx
  7958dc:	50                                              	push   eax
  7958dd:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7958e1:	e8 7a 34 c7 ff                                  	call   0x408d60
  7958e6:	6a 01                                           	push   0x1
  7958e8:	6a 10                                           	push   0x10
  7958ea:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  7958ee:	51                                              	push   ecx
  7958ef:	6a 09                                           	push   0x9
  7958f1:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  7958f6:	6a 13                                           	push   0x13
  7958f8:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  7958fc:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  795900:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  795907:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  79590e:	e8 ad 00 d6 ff                                  	call   0x4f59c0
  795913:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  795917:	52                                              	push   edx
  795918:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  79591c:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  795924:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  79592b:	66 c7 44 24 48 02 00                            	mov    WORD PTR [esp+0x48],0x2
  795932:	e8 79 0b d6 ff                                  	call   0x4f64b0
  795937:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  79593c:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  795940:	74 0b                                           	je     0x79594d
  795942:	6a 00                                           	push   0x0
  795944:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795948:	e8 13 fe d5 ff                                  	call   0x4f5760
  79594d:	8b 07                                           	mov    eax,DWORD PTR [edi]
  79594f:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  795952:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  795956:	51                                              	push   ecx
  795957:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  79595b:	52                                              	push   edx
  79595c:	8b cf                                           	mov    ecx,edi
  79595e:	ff d0                                           	call   eax
  795960:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  795965:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  795969:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  79596d:	74 0b                                           	je     0x79597a
  79596f:	6a 00                                           	push   0x0
  795971:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795975:	e8 e6 fd d5 ff                                  	call   0x4f5760
  79597a:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  79597e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795982:	2b c8                                           	sub    ecx,eax
  795984:	83 e1 fe                                        	and    ecx,0xfffffffe
  795987:	83 f9 02                                        	cmp    ecx,0x2
  79598a:	7e 0d                                           	jle    0x795999
  79598c:	85 c0                                           	test   eax,eax
  79598e:	74 09                                           	je     0x795999
  795990:	50                                              	push   eax
  795991:	e8 4a eb d4 ff                                  	call   0x4e44e0
  795996:	83 c4 04                                        	add    esp,0x4
  795999:	8b c7                                           	mov    eax,edi
  79599b:	5f                                              	pop    edi
  79599c:	5e                                              	pop    esi
  79599d:	81 c4 6c 06 00 00                               	add    esp,0x66c
  7959a3:	c3                                              	ret
  7959a4:	5f                                              	pop    edi
  7959a5:	33 c0                                           	xor    eax,eax
  7959a7:	5e                                              	pop    esi
  7959a8:	81 c4 6c 06 00 00                               	add    esp,0x66c
  7959ae:	c3                                              	ret
  7959af:	cc                                              	int3
