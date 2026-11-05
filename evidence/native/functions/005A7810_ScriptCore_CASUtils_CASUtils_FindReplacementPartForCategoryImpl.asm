# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7810 (ScriptCore.CASUtils::CASUtils_FindReplacementPartForCategoryImpl)
Paired Ghidra pseudocode: 005A7810_ScriptCore_CASUtils_CASUtils_FindReplacementPartForCategoryImpl.c
Window: [0x005a7810, 0x005a78d0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a78d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7810: 83 ec 50 56 57 8b 7c 24 5c 6a 48 33 f6 56 57 e8
005a7820: 74 7a 9d 00 83 c4 0c e8 84 71 00 00 8b 4c 24 68
005a7830: 8b 54 24 6c 89 4c 24 18 8b 4c 24 60 89 54 24 1c
005a7840: 8b 54 24 64 89 4c 24 20 89 54 24 24 8d 4c 24 28
005a7850: 51 8b 4c 24 7c 8d 54 24 0c 52 8b 54 24 7c 6a 01
005a7860: 51 8b 8c 24 80 00 00 00 81 ca 00 00 20 00 52 51
005a7870: 8d 54 24 30 52 8b c8 89 74 24 54 89 74 24 58 89
005a7880: 74 24 5c 89 74 24 60 89 74 24 64 89 74 24 68 89
005a7890: 74 24 6c 89 74 24 70 89 74 24 24 89 74 24 28 89
005a78a0: 74 24 2c 89 74 24 30 e8 04 7f 00 00 84 c0 74 13
005a78b0: 57 8d 44 24 2c 50 8d 4c 24 10 51 e8 a0 df ff ff
005a78c0: 83 c4 0c 8b c7 5f 5e 83 c4 50 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005a7810 <.text+0x1a6810>:
  5a7810:	83 ec 50                                        	sub    esp,0x50
  5a7813:	56                                              	push   esi
  5a7814:	57                                              	push   edi
  5a7815:	8b 7c 24 5c                                     	mov    edi,DWORD PTR [esp+0x5c]
  5a7819:	6a 48                                           	push   0x48
  5a781b:	33 f6                                           	xor    esi,esi
  5a781d:	56                                              	push   esi
  5a781e:	57                                              	push   edi
  5a781f:	e8 74 7a 9d 00                                  	call   0xf7f298
  5a7824:	83 c4 0c                                        	add    esp,0xc
  5a7827:	e8 84 71 00 00                                  	call   0x5ae9b0
  5a782c:	8b 4c 24 68                                     	mov    ecx,DWORD PTR [esp+0x68]
  5a7830:	8b 54 24 6c                                     	mov    edx,DWORD PTR [esp+0x6c]
  5a7834:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a7838:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  5a783c:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5a7840:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  5a7844:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  5a7848:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a784c:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5a7850:	51                                              	push   ecx
  5a7851:	8b 4c 24 7c                                     	mov    ecx,DWORD PTR [esp+0x7c]
  5a7855:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  5a7859:	52                                              	push   edx
  5a785a:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
  5a785e:	6a 01                                           	push   0x1
  5a7860:	51                                              	push   ecx
  5a7861:	8b 8c 24 80 00 00 00                            	mov    ecx,DWORD PTR [esp+0x80]
  5a7868:	81 ca 00 00 20 00                               	or     edx,0x200000
  5a786e:	52                                              	push   edx
  5a786f:	51                                              	push   ecx
  5a7870:	8d 54 24 30                                     	lea    edx,[esp+0x30]
  5a7874:	52                                              	push   edx
  5a7875:	8b c8                                           	mov    ecx,eax
  5a7877:	89 74 24 54                                     	mov    DWORD PTR [esp+0x54],esi
  5a787b:	89 74 24 58                                     	mov    DWORD PTR [esp+0x58],esi
  5a787f:	89 74 24 5c                                     	mov    DWORD PTR [esp+0x5c],esi
  5a7883:	89 74 24 60                                     	mov    DWORD PTR [esp+0x60],esi
  5a7887:	89 74 24 64                                     	mov    DWORD PTR [esp+0x64],esi
  5a788b:	89 74 24 68                                     	mov    DWORD PTR [esp+0x68],esi
  5a788f:	89 74 24 6c                                     	mov    DWORD PTR [esp+0x6c],esi
  5a7893:	89 74 24 70                                     	mov    DWORD PTR [esp+0x70],esi
  5a7897:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
  5a789b:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
  5a789f:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
  5a78a3:	89 74 24 30                                     	mov    DWORD PTR [esp+0x30],esi
  5a78a7:	e8 04 7f 00 00                                  	call   0x5af7b0
  5a78ac:	84 c0                                           	test   al,al
  5a78ae:	74 13                                           	je     0x5a78c3
  5a78b0:	57                                              	push   edi
  5a78b1:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  5a78b5:	50                                              	push   eax
  5a78b6:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a78ba:	51                                              	push   ecx
  5a78bb:	e8 a0 df ff ff                                  	call   0x5a5860
  5a78c0:	83 c4 0c                                        	add    esp,0xc
  5a78c3:	8b c7                                           	mov    eax,edi
  5a78c5:	5f                                              	pop    edi
  5a78c6:	5e                                              	pop    esi
  5a78c7:	83 c4 50                                        	add    esp,0x50
  5a78ca:	c3                                              	ret
  5a78cb:	cc                                              	int3
  5a78cc:	cc                                              	int3
  5a78cd:	cc                                              	int3
  5a78ce:	cc                                              	int3
  5a78cf:	cc                                              	int3
