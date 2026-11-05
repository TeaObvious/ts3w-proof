# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6830 (ScriptCore.UserToolUtils::UserToolUtils_IsBlueprintOnLotImpl)
Paired Ghidra pseudocode: 00CE6830_ScriptCore_UserToolUtils_UserToolUtils_IsBlueprintOnLotImpl.c
Window: [0x00ce6830, 0x00ce68d0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce68d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6830: 83 ec 10 53 56 8b 35 c4 db 1e 01 85 f6 57 74 77
00ce6840: 6a 00 8b ce e8 17 8d f7 ff 52 50 8b ce e8 be bf
00ce6850: f7 ff 85 c0 74 61 8b 1d 34 e0 1e 01 8b c8 e8 ed
00ce6860: 73 f8 ff 8b 30 8b 78 04 3b f7 74 4b 8d 64 24 00
00ce6870: 8b 06 85 c0 74 3a 8b 48 18 8b 50 1c 89 4c 24 0c
00ce6880: 8b 48 20 89 54 24 10 8b 50 24 8d 44 24 0c 89 4c
00ce6890: 24 14 50 8b cb 89 54 24 1c e8 12 83 fa ff 85 c0
00ce68a0: 74 0e 8b 88 d0 00 00 00 c1 e9 1c f6 c1 01 75 10
00ce68b0: 83 c6 04 3b f7 75 b9 5f 5e 32 c0 5b 83 c4 10 c3
00ce68c0: 5f 5e b0 01 5b 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6830 <.text+0x8e5830>:
  ce6830:	83 ec 10                                        	sub    esp,0x10
  ce6833:	53                                              	push   ebx
  ce6834:	56                                              	push   esi
  ce6835:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  ce683b:	85 f6                                           	test   esi,esi
  ce683d:	57                                              	push   edi
  ce683e:	74 77                                           	je     0xce68b7
  ce6840:	6a 00                                           	push   0x0
  ce6842:	8b ce                                           	mov    ecx,esi
  ce6844:	e8 17 8d f7 ff                                  	call   0xc5f560
  ce6849:	52                                              	push   edx
  ce684a:	50                                              	push   eax
  ce684b:	8b ce                                           	mov    ecx,esi
  ce684d:	e8 be bf f7 ff                                  	call   0xc62810
  ce6852:	85 c0                                           	test   eax,eax
  ce6854:	74 61                                           	je     0xce68b7
  ce6856:	8b 1d 34 e0 1e 01                               	mov    ebx,DWORD PTR ds:0x11ee034
  ce685c:	8b c8                                           	mov    ecx,eax
  ce685e:	e8 ed 73 f8 ff                                  	call   0xc6dc50
  ce6863:	8b 30                                           	mov    esi,DWORD PTR [eax]
  ce6865:	8b 78 04                                        	mov    edi,DWORD PTR [eax+0x4]
  ce6868:	3b f7                                           	cmp    esi,edi
  ce686a:	74 4b                                           	je     0xce68b7
  ce686c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  ce6870:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ce6872:	85 c0                                           	test   eax,eax
  ce6874:	74 3a                                           	je     0xce68b0
  ce6876:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
  ce6879:	8b 50 1c                                        	mov    edx,DWORD PTR [eax+0x1c]
  ce687c:	89 4c 24 0c                                     	mov    DWORD PTR [esp+0xc],ecx
  ce6880:	8b 48 20                                        	mov    ecx,DWORD PTR [eax+0x20]
  ce6883:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  ce6887:	8b 50 24                                        	mov    edx,DWORD PTR [eax+0x24]
  ce688a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  ce688e:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  ce6892:	50                                              	push   eax
  ce6893:	8b cb                                           	mov    ecx,ebx
  ce6895:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  ce6899:	e8 12 83 fa ff                                  	call   0xc8ebb0
  ce689e:	85 c0                                           	test   eax,eax
  ce68a0:	74 0e                                           	je     0xce68b0
  ce68a2:	8b 88 d0 00 00 00                               	mov    ecx,DWORD PTR [eax+0xd0]
  ce68a8:	c1 e9 1c                                        	shr    ecx,0x1c
  ce68ab:	f6 c1 01                                        	test   cl,0x1
  ce68ae:	75 10                                           	jne    0xce68c0
  ce68b0:	83 c6 04                                        	add    esi,0x4
  ce68b3:	3b f7                                           	cmp    esi,edi
  ce68b5:	75 b9                                           	jne    0xce6870
  ce68b7:	5f                                              	pop    edi
  ce68b8:	5e                                              	pop    esi
  ce68b9:	32 c0                                           	xor    al,al
  ce68bb:	5b                                              	pop    ebx
  ce68bc:	83 c4 10                                        	add    esp,0x10
  ce68bf:	c3                                              	ret
  ce68c0:	5f                                              	pop    edi
  ce68c1:	5e                                              	pop    esi
  ce68c2:	b0 01                                           	mov    al,0x1
  ce68c4:	5b                                              	pop    ebx
  ce68c5:	83 c4 10                                        	add    esp,0x10
  ce68c8:	c3                                              	ret
  ce68c9:	cc                                              	int3
  ce68ca:	cc                                              	int3
  ce68cb:	cc                                              	int3
  ce68cc:	cc                                              	int3
  ce68cd:	cc                                              	int3
  ce68ce:	cc                                              	int3
  ce68cf:	cc                                              	int3
