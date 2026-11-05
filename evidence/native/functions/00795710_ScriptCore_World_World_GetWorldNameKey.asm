# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795710 (ScriptCore.World::World_GetWorldNameKey)
Paired Ghidra pseudocode: 00795710_ScriptCore_World_World_GetWorldNameKey.c
Window: [0x00795710, 0x00795840) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795710: 83 ec 54 56 8b 35 c4 db 1e 01 57 e8 70 3c fd ff
00795720: 85 f6 8b f8 0f 84 04 01 00 00 85 ff 0f 84 fc 00
00795730: 00 00 8b 86 7c 02 00 00 3b 86 80 02 00 00 0f 84
00795740: ea 00 00 00 85 c0 0f 84 e2 00 00 00 b9 54 8e 1c
00795750: 01 89 4c 24 0c 89 4c 24 10 50 8d 4c 24 10 c7 44
00795760: 24 1c 18 1c 01 01 c7 44 24 18 56 8e 1c 01 e8 dd
00795770: 37 c7 ff 6a 01 6a 10 8d 4c 24 14 51 6a 09 be f4
00795780: a6 fb 00 6a 13 8d 4c 24 30 89 74 24 30 66 c7 44
00795790: 24 38 00 00 66 c7 44 24 3a 00 00 e8 20 02 d6 ff
007957a0: 8d 54 24 1c 52 8d 4c 24 40 c7 44 24 40 6c 88 00
007957b0: 01 66 c7 44 24 4a 13 00 66 c7 44 24 48 02 00 e8
007957c0: ec 0c d6 ff f6 44 24 24 04 89 74 24 1c 74 0b 6a
007957d0: 00 8d 4c 24 20 e8 86 ff d5 ff 8b 07 8b 40 50 8d
007957e0: 4c 24 08 51 8d 54 24 40 52 8b cf ff d0 f6 44 24
007957f0: 44 04 8b 7c 24 08 89 74 24 3c 74 0b 6a 00 8d 4c
00795800: 24 40 e8 59 ff d5 ff 8b 4c 24 14 8b 44 24 0c 2b
00795810: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 bd
00795820: ec d4 ff 83 c4 04 8b c7 5f 5e 83 c4 54 c3 5f 33
00795830: c0 5e 83 c4 54 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795710 <.text+0x394710>:
  795710:	83 ec 54                                        	sub    esp,0x54
  795713:	56                                              	push   esi
  795714:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  79571a:	57                                              	push   edi
  79571b:	e8 70 3c fd ff                                  	call   0x769390
  795720:	85 f6                                           	test   esi,esi
  795722:	8b f8                                           	mov    edi,eax
  795724:	0f 84 04 01 00 00                               	je     0x79582e
  79572a:	85 ff                                           	test   edi,edi
  79572c:	0f 84 fc 00 00 00                               	je     0x79582e
  795732:	8b 86 7c 02 00 00                               	mov    eax,DWORD PTR [esi+0x27c]
  795738:	3b 86 80 02 00 00                               	cmp    eax,DWORD PTR [esi+0x280]
  79573e:	0f 84 ea 00 00 00                               	je     0x79582e
  795744:	85 c0                                           	test   eax,eax
  795746:	0f 84 e2 00 00 00                               	je     0x79582e
  79574c:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  795751:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  795755:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  795759:	50                                              	push   eax
  79575a:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  79575e:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795766:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  79576e:	e8 dd 37 c7 ff                                  	call   0x408f50
  795773:	6a 01                                           	push   0x1
  795775:	6a 10                                           	push   0x10
  795777:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  79577b:	51                                              	push   ecx
  79577c:	6a 09                                           	push   0x9
  79577e:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  795783:	6a 13                                           	push   0x13
  795785:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795789:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  79578d:	66 c7 44 24 38 00 00                            	mov    WORD PTR [esp+0x38],0x0
  795794:	66 c7 44 24 3a 00 00                            	mov    WORD PTR [esp+0x3a],0x0
  79579b:	e8 20 02 d6 ff                                  	call   0x4f59c0
  7957a0:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  7957a4:	52                                              	push   edx
  7957a5:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  7957a9:	c7 44 24 40 6c 88 00 01                         	mov    DWORD PTR [esp+0x40],0x100886c
  7957b1:	66 c7 44 24 4a 13 00                            	mov    WORD PTR [esp+0x4a],0x13
  7957b8:	66 c7 44 24 48 02 00                            	mov    WORD PTR [esp+0x48],0x2
  7957bf:	e8 ec 0c d6 ff                                  	call   0x4f64b0
  7957c4:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7957c9:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
  7957cd:	74 0b                                           	je     0x7957da
  7957cf:	6a 00                                           	push   0x0
  7957d1:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7957d5:	e8 86 ff d5 ff                                  	call   0x4f5760
  7957da:	8b 07                                           	mov    eax,DWORD PTR [edi]
  7957dc:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  7957df:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7957e3:	51                                              	push   ecx
  7957e4:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  7957e8:	52                                              	push   edx
  7957e9:	8b cf                                           	mov    ecx,edi
  7957eb:	ff d0                                           	call   eax
  7957ed:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  7957f2:	8b 7c 24 08                                     	mov    edi,DWORD PTR [esp+0x8]
  7957f6:	89 74 24 3c                                     	mov    DWORD PTR [esp+0x3c],esi
  7957fa:	74 0b                                           	je     0x795807
  7957fc:	6a 00                                           	push   0x0
  7957fe:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  795802:	e8 59 ff d5 ff                                  	call   0x4f5760
  795807:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  79580b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  79580f:	2b c8                                           	sub    ecx,eax
  795811:	83 e1 fe                                        	and    ecx,0xfffffffe
  795814:	83 f9 02                                        	cmp    ecx,0x2
  795817:	7e 0d                                           	jle    0x795826
  795819:	85 c0                                           	test   eax,eax
  79581b:	74 09                                           	je     0x795826
  79581d:	50                                              	push   eax
  79581e:	e8 bd ec d4 ff                                  	call   0x4e44e0
  795823:	83 c4 04                                        	add    esp,0x4
  795826:	8b c7                                           	mov    eax,edi
  795828:	5f                                              	pop    edi
  795829:	5e                                              	pop    esi
  79582a:	83 c4 54                                        	add    esp,0x54
  79582d:	c3                                              	ret
  79582e:	5f                                              	pop    edi
  79582f:	33 c0                                           	xor    eax,eax
  795831:	5e                                              	pop    esi
  795832:	83 c4 54                                        	add    esp,0x54
  795835:	c3                                              	ret
  795836:	cc                                              	int3
  795837:	cc                                              	int3
  795838:	cc                                              	int3
  795839:	cc                                              	int3
  79583a:	cc                                              	int3
  79583b:	cc                                              	int3
  79583c:	cc                                              	int3
  79583d:	cc                                              	int3
  79583e:	cc                                              	int3
  79583f:	cc                                              	int3
