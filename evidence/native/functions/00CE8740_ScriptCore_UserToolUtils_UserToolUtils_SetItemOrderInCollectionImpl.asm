# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce8740 (ScriptCore.UserToolUtils::UserToolUtils_SetItemOrderInCollectionImpl)
Paired Ghidra pseudocode: 00CE8740_ScriptCore_UserToolUtils_UserToolUtils_SetItemOrderInCollectionImpl.c
Window: [0x00ce8740, 0x00ce8830) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce8830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce8740: 83 ec 54 57 8b 3d c8 9a 1d 01 85 ff 0f 84 d4 00
00ce8750: 00 00 56 e8 38 0c a8 ff 8d 4c 24 08 51 8b 4c 24
00ce8760: 6c 8b f0 8b 06 8d 54 24 10 52 8b 50 70 51 8b ce
00ce8770: ff d2 8b 44 24 08 85 c0 0f 84 a7 00 00 00 50 8b
00ce8780: 44 24 10 50 8d 4c 24 4c e8 03 66 7f ff 6a 01 8d
00ce8790: 4c 24 48 51 8d 4c 24 34 e8 43 0c af ff 8d 54 24
00ce87a0: 10 52 8d 4c 24 20 c7 44 24 14 04 16 08 01 e8 4d
00ce87b0: 0d af ff 8d 44 24 2c 50 8d 4c 24 20 e8 6f 11 af
00ce87c0: ff 84 c0 74 46 8b 16 8b 52 6c 8d 44 24 14 50 8b
00ce87d0: 44 24 70 8d 4c 24 1c 51 50 8b ce ff d2 8b 4c 24
00ce87e0: 20 8b 44 24 1c 2b c8 c1 f9 04 39 4c 24 14 75 1f
00ce87f0: 8b 54 24 18 8b 4c 24 64 52 8b 54 24 64 8d 44 24
00ce8800: 20 50 51 52 8b cf e8 e5 6f af ff 8b 44 24 1c 85
00ce8810: c0 74 09 50 e8 c7 bc 7f ff 83 c4 04 8d 4c 24 2c
00ce8820: e8 6b f1 ae ff 5e 5f 83 c4 54 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ce8740 <.text+0x8e7740>:
  ce8740:	83 ec 54                                        	sub    esp,0x54
  ce8743:	57                                              	push   edi
  ce8744:	8b 3d c8 9a 1d 01                               	mov    edi,DWORD PTR ds:0x11d9ac8
  ce874a:	85 ff                                           	test   edi,edi
  ce874c:	0f 84 d4 00 00 00                               	je     0xce8826
  ce8752:	56                                              	push   esi
  ce8753:	e8 38 0c a8 ff                                  	call   0x769390
  ce8758:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  ce875c:	51                                              	push   ecx
  ce875d:	8b 4c 24 6c                                     	mov    ecx,DWORD PTR [esp+0x6c]
  ce8761:	8b f0                                           	mov    esi,eax
  ce8763:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ce8765:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ce8769:	52                                              	push   edx
  ce876a:	8b 50 70                                        	mov    edx,DWORD PTR [eax+0x70]
  ce876d:	51                                              	push   ecx
  ce876e:	8b ce                                           	mov    ecx,esi
  ce8770:	ff d2                                           	call   edx
  ce8772:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce8776:	85 c0                                           	test   eax,eax
  ce8778:	0f 84 a7 00 00 00                               	je     0xce8825
  ce877e:	50                                              	push   eax
  ce877f:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  ce8783:	50                                              	push   eax
  ce8784:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  ce8788:	e8 03 66 7f ff                                  	call   0x4ded90
  ce878d:	6a 01                                           	push   0x1
  ce878f:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  ce8793:	51                                              	push   ecx
  ce8794:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  ce8798:	e8 43 0c af ff                                  	call   0x7d93e0
  ce879d:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ce87a1:	52                                              	push   edx
  ce87a2:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ce87a6:	c7 44 24 14 04 16 08 01                         	mov    DWORD PTR [esp+0x14],0x1081604
  ce87ae:	e8 4d 0d af ff                                  	call   0x7d9500
  ce87b3:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  ce87b7:	50                                              	push   eax
  ce87b8:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  ce87bc:	e8 6f 11 af ff                                  	call   0x7d9930
  ce87c1:	84 c0                                           	test   al,al
  ce87c3:	74 46                                           	je     0xce880b
  ce87c5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  ce87c7:	8b 52 6c                                        	mov    edx,DWORD PTR [edx+0x6c]
  ce87ca:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  ce87ce:	50                                              	push   eax
  ce87cf:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  ce87d3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  ce87d7:	51                                              	push   ecx
  ce87d8:	50                                              	push   eax
  ce87d9:	8b ce                                           	mov    ecx,esi
  ce87db:	ff d2                                           	call   edx
  ce87dd:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  ce87e1:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  ce87e5:	2b c8                                           	sub    ecx,eax
  ce87e7:	c1 f9 04                                        	sar    ecx,0x4
  ce87ea:	39 4c 24 14                                     	cmp    DWORD PTR [esp+0x14],ecx
  ce87ee:	75 1f                                           	jne    0xce880f
  ce87f0:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ce87f4:	8b 4c 24 64                                     	mov    ecx,DWORD PTR [esp+0x64]
  ce87f8:	52                                              	push   edx
  ce87f9:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  ce87fd:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  ce8801:	50                                              	push   eax
  ce8802:	51                                              	push   ecx
  ce8803:	52                                              	push   edx
  ce8804:	8b cf                                           	mov    ecx,edi
  ce8806:	e8 e5 6f af ff                                  	call   0x7df7f0
  ce880b:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  ce880f:	85 c0                                           	test   eax,eax
  ce8811:	74 09                                           	je     0xce881c
  ce8813:	50                                              	push   eax
  ce8814:	e8 c7 bc 7f ff                                  	call   0x4e44e0
  ce8819:	83 c4 04                                        	add    esp,0x4
  ce881c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  ce8820:	e8 6b f1 ae ff                                  	call   0x7d7990
  ce8825:	5e                                              	pop    esi
  ce8826:	5f                                              	pop    edi
  ce8827:	83 c4 54                                        	add    esp,0x54
  ce882a:	c3                                              	ret
  ce882b:	cc                                              	int3
  ce882c:	cc                                              	int3
  ce882d:	cc                                              	int3
  ce882e:	cc                                              	int3
  ce882f:	cc                                              	int3
