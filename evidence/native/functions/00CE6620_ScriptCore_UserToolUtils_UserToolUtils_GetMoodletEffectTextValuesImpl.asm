# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6620 (ScriptCore.UserToolUtils::UserToolUtils_GetMoodletEffectTextValuesImpl)
Paired Ghidra pseudocode: 00CE6620_ScriptCore_UserToolUtils_UserToolUtils_GetMoodletEffectTextValuesImpl.c
Window: [0x00ce6620, 0x00ce6770) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6620: 83 ec 40 8b 0d 34 e0 1e 01 33 c0 85 c9 89 04 24
00ce6630: 0f 84 1c 01 00 00 8b 44 24 48 8b 54 24 4c 89 44
00ce6640: 24 10 8b 44 24 44 89 44 24 18 89 54 24 14 8b 54
00ce6650: 24 50 8d 44 24 10 50 89 54 24 20 e8 50 85 fa ff
00ce6660: 85 c0 89 44 24 0c 0f 84 f4 00 00 00 55 57 8b c8
00ce6670: e8 5b 15 fb ff 8b f8 e8 14 2d a8 ff 85 ff 8b e8
00ce6680: 0f 86 d0 00 00 00 85 ed 0f 84 c8 00 00 00 53 6a
00ce6690: 00 8d 0c bd 00 00 00 00 51 8b 0d 64 c8 1c 01 e8
00ce66a0: 7c 08 80 ff 8b d8 85 db 0f 84 9d 00 00 00 56 33
00ce66b0: c0 33 f6 3b f8 76 39 eb 07 8d a4 24 00 00 00 00
00ce66c0: 8b 4c 24 1c 8d 54 24 14 89 44 24 18 89 44 24 14
00ce66d0: 52 8d 44 24 1c 50 56 e8 34 15 fb ff 84 c0 74 07
00ce66e0: 8b 4c 24 14 89 0c b3 83 c6 01 33 c0 3b f7 72 d0
00ce66f0: 57 6a 04 53 6a 18 be f4 a6 fb 00 6a 0a 8d 4c 24
00ce6700: 44 89 74 24 44 66 89 44 24 4c 66 89 44 24 4e e8
00ce6710: ac f2 80 ff 8b 55 00 8b 52 50 8d 44 24 10 50 8d
00ce6720: 4c 24 34 51 8b cd ff d2 8b 0d 64 c8 1c 01 53 e8
00ce6730: 3c f7 7f ff f6 44 24 38 04 89 74 24 30 5e 74 0b
00ce6740: 6a 00 8d 4c 24 30 e8 15 f0 80 ff 8b 44 24 0c 5b
00ce6750: 5f 5d 83 c4 40 c3 8b 44 24 08 5f 5d 83 c4 40 c3
00ce6760: 8b 04 24 83 c4 40 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6620 <.text+0x8e5620>:
  ce6620:	83 ec 40                                        	sub    esp,0x40
  ce6623:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce6629:	33 c0                                           	xor    eax,eax
  ce662b:	85 c9                                           	test   ecx,ecx
  ce662d:	89 04 24                                        	mov    DWORD PTR [esp],eax
  ce6630:	0f 84 1c 01 00 00                               	je     0xce6752
  ce6636:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
  ce663a:	8b 54 24 4c                                     	mov    edx,DWORD PTR [esp+0x4c]
  ce663e:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  ce6642:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  ce6646:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  ce664a:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  ce664e:	8b 54 24 50                                     	mov    edx,DWORD PTR [esp+0x50]
  ce6652:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce6656:	50                                              	push   eax
  ce6657:	89 54 24 20                                     	mov    DWORD PTR [esp+0x20],edx
  ce665b:	e8 50 85 fa ff                                  	call   0xc8ebb0
  ce6660:	85 c0                                           	test   eax,eax
  ce6662:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce6666:	0f 84 f4 00 00 00                               	je     0xce6760
  ce666c:	55                                              	push   ebp
  ce666d:	57                                              	push   edi
  ce666e:	8b c8                                           	mov    ecx,eax
  ce6670:	e8 5b 15 fb ff                                  	call   0xc97bd0
  ce6675:	8b f8                                           	mov    edi,eax
  ce6677:	e8 14 2d a8 ff                                  	call   0x769390
  ce667c:	85 ff                                           	test   edi,edi
  ce667e:	8b e8                                           	mov    ebp,eax
  ce6680:	0f 86 d0 00 00 00                               	jbe    0xce6756
  ce6686:	85 ed                                           	test   ebp,ebp
  ce6688:	0f 84 c8 00 00 00                               	je     0xce6756
  ce668e:	53                                              	push   ebx
  ce668f:	6a 00                                           	push   0x0
  ce6691:	8d 0c bd 00 00 00 00                            	lea    ecx,[edi*4+0x0]
  ce6698:	51                                              	push   ecx
  ce6699:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce669f:	e8 7c 08 80 ff                                  	call   0x4e6f20
  ce66a4:	8b d8                                           	mov    ebx,eax
  ce66a6:	85 db                                           	test   ebx,ebx
  ce66a8:	0f 84 9d 00 00 00                               	je     0xce674b
  ce66ae:	56                                              	push   esi
  ce66af:	33 c0                                           	xor    eax,eax
  ce66b1:	33 f6                                           	xor    esi,esi
  ce66b3:	3b f8                                           	cmp    edi,eax
  ce66b5:	76 39                                           	jbe    0xce66f0
  ce66b7:	eb 07                                           	jmp    0xce66c0
  ce66b9:	8d a4 24 00 00 00 00                            	lea    esp,[esp+0x0]
  ce66c0:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  ce66c4:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  ce66c8:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  ce66cc:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  ce66d0:	52                                              	push   edx
  ce66d1:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  ce66d5:	50                                              	push   eax
  ce66d6:	56                                              	push   esi
  ce66d7:	e8 34 15 fb ff                                  	call   0xc97c10
  ce66dc:	84 c0                                           	test   al,al
  ce66de:	74 07                                           	je     0xce66e7
  ce66e0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ce66e4:	89 0c b3                                        	mov    DWORD PTR [ebx+esi*4],ecx
  ce66e7:	83 c6 01                                        	add    esi,0x1
  ce66ea:	33 c0                                           	xor    eax,eax
  ce66ec:	3b f7                                           	cmp    esi,edi
  ce66ee:	72 d0                                           	jb     0xce66c0
  ce66f0:	57                                              	push   edi
  ce66f1:	6a 04                                           	push   0x4
  ce66f3:	53                                              	push   ebx
  ce66f4:	6a 18                                           	push   0x18
  ce66f6:	be f4 a6 fb 00                                  	mov    esi,0xfba6f4
  ce66fb:	6a 0a                                           	push   0xa
  ce66fd:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  ce6701:	89 74 24 44                                     	mov    DWORD PTR [esp+0x44],esi
  ce6705:	66 89 44 24 4c                                  	mov    WORD PTR [esp+0x4c],ax
  ce670a:	66 89 44 24 4e                                  	mov    WORD PTR [esp+0x4e],ax
  ce670f:	e8 ac f2 80 ff                                  	call   0x4f59c0
  ce6714:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  ce6717:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  ce671a:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  ce671e:	50                                              	push   eax
  ce671f:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce6723:	51                                              	push   ecx
  ce6724:	8b cd                                           	mov    ecx,ebp
  ce6726:	ff d2                                           	call   edx
  ce6728:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  ce672e:	53                                              	push   ebx
  ce672f:	e8 3c f7 7f ff                                  	call   0x4e5e70
  ce6734:	f6 44 24 38 04                                  	test   BYTE PTR [esp+0x38],0x4
  ce6739:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  ce673d:	5e                                              	pop    esi
  ce673e:	74 0b                                           	je     0xce674b
  ce6740:	6a 00                                           	push   0x0
  ce6742:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  ce6746:	e8 15 f0 80 ff                                  	call   0x4f5760
  ce674b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ce674f:	5b                                              	pop    ebx
  ce6750:	5f                                              	pop    edi
  ce6751:	5d                                              	pop    ebp
  ce6752:	83 c4 40                                        	add    esp,0x40
  ce6755:	c3                                              	ret
  ce6756:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce675a:	5f                                              	pop    edi
  ce675b:	5d                                              	pop    ebp
  ce675c:	83 c4 40                                        	add    esp,0x40
  ce675f:	c3                                              	ret
  ce6760:	8b 04 24                                        	mov    eax,DWORD PTR [esp]
  ce6763:	83 c4 40                                        	add    esp,0x40
  ce6766:	c3                                              	ret
  ce6767:	cc                                              	int3
  ce6768:	cc                                              	int3
  ce6769:	cc                                              	int3
  ce676a:	cc                                              	int3
  ce676b:	cc                                              	int3
  ce676c:	cc                                              	int3
  ce676d:	cc                                              	int3
  ce676e:	cc                                              	int3
  ce676f:	cc                                              	int3
