# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6770 (ScriptCore.UserToolUtils::UserToolUtils_UpdateItemInCollectionImpl)
Paired Ghidra pseudocode: 00CE6770_ScriptCore_UserToolUtils_UserToolUtils_UpdateItemInCollectionImpl.c
Window: [0x00ce6770, 0x00ce6830) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6770: 83 ec 10 56 8b 35 c8 9a 1d 01 85 f6 0f 84 9f 00
00ce6780: 00 00 80 7c 24 18 00 8b 44 24 24 8b 4c 24 28 8b
00ce6790: 54 24 2c 89 44 24 04 8b 44 24 30 89 4c 24 08 89
00ce67a0: 44 24 0c 89 54 24 10 74 5d 3d 1d 4f 9e 31 75 36
00ce67b0: 8b 0d 34 e0 1e 01 85 c9 74 2c 6a 00 8d 44 24 08
00ce67c0: 50 e8 5a 60 fa ff 85 c0 74 1c 8b 48 08 89 4c 24
00ce67d0: 04 8b 50 0c 89 54 24 08 8b 48 10 89 4c 24 0c 8b
00ce67e0: 50 14 89 54 24 10 8b 44 24 34 8b 54 24 20 50 8b
00ce67f0: 44 24 20 8d 4c 24 08 51 52 50 8b ce e8 4f 8d af
00ce6800: ff 5e 83 c4 10 c3 8b 4c 24 34 8b 44 24 20 51 8b
00ce6810: 4c 24 20 8d 54 24 08 52 50 51 8b ce e8 9f 82 af
00ce6820: ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6770 <.text+0x8e5770>:
  ce6770:	83 ec 10                                        	sub    esp,0x10
  ce6773:	56                                              	push   esi
  ce6774:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  ce677a:	85 f6                                           	test   esi,esi
  ce677c:	0f 84 9f 00 00 00                               	je     0xce6821
  ce6782:	80 7c 24 18 00                                  	cmp    BYTE PTR [esp+0x18],0x0
  ce6787:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  ce678b:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ce678f:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  ce6793:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  ce6797:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  ce679b:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  ce679f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  ce67a3:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  ce67a7:	74 5d                                           	je     0xce6806
  ce67a9:	3d 1d 4f 9e 31                                  	cmp    eax,0x319e4f1d
  ce67ae:	75 36                                           	jne    0xce67e6
  ce67b0:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ce67b6:	85 c9                                           	test   ecx,ecx
  ce67b8:	74 2c                                           	je     0xce67e6
  ce67ba:	6a 00                                           	push   0x0
  ce67bc:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  ce67c0:	50                                              	push   eax
  ce67c1:	e8 5a 60 fa ff                                  	call   0xc8c820
  ce67c6:	85 c0                                           	test   eax,eax
  ce67c8:	74 1c                                           	je     0xce67e6
  ce67ca:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  ce67cd:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  ce67d1:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  ce67d4:	89 54 24 08                                     	mov    DWORD PTR [esp+0x8],edx
  ce67d8:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  ce67db:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  ce67df:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  ce67e2:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  ce67e6:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  ce67ea:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  ce67ee:	50                                              	push   eax
  ce67ef:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ce67f3:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  ce67f7:	51                                              	push   ecx
  ce67f8:	52                                              	push   edx
  ce67f9:	50                                              	push   eax
  ce67fa:	8b ce                                           	mov    ecx,esi
  ce67fc:	e8 4f 8d af ff                                  	call   0x7df550
  ce6801:	5e                                              	pop    esi
  ce6802:	83 c4 10                                        	add    esp,0x10
  ce6805:	c3                                              	ret
  ce6806:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ce680a:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  ce680e:	51                                              	push   ecx
  ce680f:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  ce6813:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  ce6817:	52                                              	push   edx
  ce6818:	50                                              	push   eax
  ce6819:	51                                              	push   ecx
  ce681a:	8b ce                                           	mov    ecx,esi
  ce681c:	e8 9f 82 af ff                                  	call   0x7deac0
  ce6821:	5e                                              	pop    esi
  ce6822:	83 c4 10                                        	add    esp,0x10
  ce6825:	c3                                              	ret
  ce6826:	cc                                              	int3
  ce6827:	cc                                              	int3
  ce6828:	cc                                              	int3
  ce6829:	cc                                              	int3
  ce682a:	cc                                              	int3
  ce682b:	cc                                              	int3
  ce682c:	cc                                              	int3
  ce682d:	cc                                              	int3
  ce682e:	cc                                              	int3
  ce682f:	cc                                              	int3
