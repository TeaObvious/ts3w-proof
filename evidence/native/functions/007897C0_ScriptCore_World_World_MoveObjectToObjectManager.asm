# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007897c0 (ScriptCore.World::World_MoveObjectToObjectManager)
Paired Ghidra pseudocode: 007897C0_ScriptCore_World_World_MoveObjectToObjectManager.c
Window: [0x007897c0, 0x00789880) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789880
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007897c0: 51 e8 aa dd 1a 00 85 c0 0f 84 a8 00 00 00 8b 4c
007897d0: 24 0c 8b 54 24 08 57 51 52 8b c8 e8 a0 e7 1a 00
007897e0: 8b f8 85 ff 89 7c 24 04 0f 84 87 00 00 00 8d 47
007897f0: 04 b9 01 00 00 00 f0 0f c1 08 8b 0d c4 db 1e 01
00789800: 85 c9 75 0c 8d 4c 24 04 e8 d3 ca fb ff 5f 59 c3
00789810: 8b 44 24 14 8b 54 24 18 53 56 8b d8 33 f6 0b da
00789820: 74 1f 8b b1 b0 00 00 00 3b 46 48 75 05 3b 56 4c
00789830: 74 0f 6a 00 52 50 e8 05 6f 4d 00 8b f0 85 f6 74
00789840: 29 8b cf e8 e8 58 f0 ff 3b f0 74 1e 85 c0 74 0c
00789850: 8b 10 6a 00 8b c8 8b 42 3c 57 ff d0 85 f6 74 0a
00789860: 8b 16 8b 42 30 57 8b ce ff d0 8d 4c 24 0c e8 6d
00789870: ca fb ff 5e 5b 5f 59 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007897c0 <.text+0x3887c0>:
  7897c0:	51                                              	push   ecx
  7897c1:	e8 aa dd 1a 00                                  	call   0x937570
  7897c6:	85 c0                                           	test   eax,eax
  7897c8:	0f 84 a8 00 00 00                               	je     0x789876
  7897ce:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7897d2:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7897d6:	57                                              	push   edi
  7897d7:	51                                              	push   ecx
  7897d8:	52                                              	push   edx
  7897d9:	8b c8                                           	mov    ecx,eax
  7897db:	e8 a0 e7 1a 00                                  	call   0x937f80
  7897e0:	8b f8                                           	mov    edi,eax
  7897e2:	85 ff                                           	test   edi,edi
  7897e4:	89 7c 24 04                                     	mov    DWORD PTR [esp+0x4],edi
  7897e8:	0f 84 87 00 00 00                               	je     0x789875
  7897ee:	8d 47 04                                        	lea    eax,[edi+0x4]
  7897f1:	b9 01 00 00 00                                  	mov    ecx,0x1
  7897f6:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  7897fa:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  789800:	85 c9                                           	test   ecx,ecx
  789802:	75 0c                                           	jne    0x789810
  789804:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  789808:	e8 d3 ca fb ff                                  	call   0x7462e0
  78980d:	5f                                              	pop    edi
  78980e:	59                                              	pop    ecx
  78980f:	c3                                              	ret
  789810:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  789814:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  789818:	53                                              	push   ebx
  789819:	56                                              	push   esi
  78981a:	8b d8                                           	mov    ebx,eax
  78981c:	33 f6                                           	xor    esi,esi
  78981e:	0b da                                           	or     ebx,edx
  789820:	74 1f                                           	je     0x789841
  789822:	8b b1 b0 00 00 00                               	mov    esi,DWORD PTR [ecx+0xb0]
  789828:	3b 46 48                                        	cmp    eax,DWORD PTR [esi+0x48]
  78982b:	75 05                                           	jne    0x789832
  78982d:	3b 56 4c                                        	cmp    edx,DWORD PTR [esi+0x4c]
  789830:	74 0f                                           	je     0x789841
  789832:	6a 00                                           	push   0x0
  789834:	52                                              	push   edx
  789835:	50                                              	push   eax
  789836:	e8 05 6f 4d 00                                  	call   0xc60740
  78983b:	8b f0                                           	mov    esi,eax
  78983d:	85 f6                                           	test   esi,esi
  78983f:	74 29                                           	je     0x78986a
  789841:	8b cf                                           	mov    ecx,edi
  789843:	e8 e8 58 f0 ff                                  	call   0x68f130
  789848:	3b f0                                           	cmp    esi,eax
  78984a:	74 1e                                           	je     0x78986a
  78984c:	85 c0                                           	test   eax,eax
  78984e:	74 0c                                           	je     0x78985c
  789850:	8b 10                                           	mov    edx,DWORD PTR [eax]
  789852:	6a 00                                           	push   0x0
  789854:	8b c8                                           	mov    ecx,eax
  789856:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  789859:	57                                              	push   edi
  78985a:	ff d0                                           	call   eax
  78985c:	85 f6                                           	test   esi,esi
  78985e:	74 0a                                           	je     0x78986a
  789860:	8b 16                                           	mov    edx,DWORD PTR [esi]
  789862:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  789865:	57                                              	push   edi
  789866:	8b ce                                           	mov    ecx,esi
  789868:	ff d0                                           	call   eax
  78986a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  78986e:	e8 6d ca fb ff                                  	call   0x7462e0
  789873:	5e                                              	pop    esi
  789874:	5b                                              	pop    ebx
  789875:	5f                                              	pop    edi
  789876:	59                                              	pop    ecx
  789877:	c3                                              	ret
  789878:	cc                                              	int3
  789879:	cc                                              	int3
  78987a:	cc                                              	int3
  78987b:	cc                                              	int3
  78987c:	cc                                              	int3
  78987d:	cc                                              	int3
  78987e:	cc                                              	int3
  78987f:	cc                                              	int3
