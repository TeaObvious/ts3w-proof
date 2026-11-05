# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1058a810 (World_HasAnyValidRainPuddlesOnLotImpl)
Paired Ghidra pseudocode: 1058A810_World_HasAnyValidRainPuddlesOnLotImpl.c
Window: [0x1058a810, 0x1058a8a0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1058a8a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1058a810: 83 ec 10 56 8b 35 c4 00 c7 10 85 f6 57 74 62 8b
1058a820: 44 24 20 8b 4c 24 1c 6a 00 50 51 8b ce e8 de c7
1058a830: ca ff 8b f8 85 ff 74 49 8b 4e 74 85 c9 74 42 e8
1058a840: 3c 85 db ff 84 c0 74 39 8d 54 24 08 52 8b cf c7
1058a850: 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 c7
1058a860: 44 24 14 00 00 00 00 c7 44 24 18 bc 1c b2 10 e8
1058a870: 7c ac ae ff 84 c0 8d 4c 24 08 75 0d e8 3f a4 ad
1058a880: ff 5f 32 c0 5e 83 c4 10 c3 e8 32 a4 ad ff 5f b0
1058a890: 01 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1058a810 <.text+0x589810>:
1058a810:	83 ec 10                                        	sub    esp,0x10
1058a813:	56                                              	push   esi
1058a814:	8b 35 c4 00 c7 10                               	mov    esi,DWORD PTR ds:0x10c700c4
1058a81a:	85 f6                                           	test   esi,esi
1058a81c:	57                                              	push   edi
1058a81d:	74 62                                           	je     0x1058a881
1058a81f:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1058a823:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1058a827:	6a 00                                           	push   0x0
1058a829:	50                                              	push   eax
1058a82a:	51                                              	push   ecx
1058a82b:	8b ce                                           	mov    ecx,esi
1058a82d:	e8 de c7 ca ff                                  	call   0x10237010
1058a832:	8b f8                                           	mov    edi,eax
1058a834:	85 ff                                           	test   edi,edi
1058a836:	74 49                                           	je     0x1058a881
1058a838:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
1058a83b:	85 c9                                           	test   ecx,ecx
1058a83d:	74 42                                           	je     0x1058a881
1058a83f:	e8 3c 85 db ff                                  	call   0x10342d80
1058a844:	84 c0                                           	test   al,al
1058a846:	74 39                                           	je     0x1058a881
1058a848:	8d 54 24 08                                     	lea    edx,[esp+0x8]
1058a84c:	52                                              	push   edx
1058a84d:	8b cf                                           	mov    ecx,edi
1058a84f:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
1058a857:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
1058a85f:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1058a867:	c7 44 24 18 bc 1c b2 10                         	mov    DWORD PTR [esp+0x18],0x10b21cbc
1058a86f:	e8 7c ac ae ff                                  	call   0x100754f0
1058a874:	84 c0                                           	test   al,al
1058a876:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1058a87a:	75 0d                                           	jne    0x1058a889
1058a87c:	e8 3f a4 ad ff                                  	call   0x10064cc0
1058a881:	5f                                              	pop    edi
1058a882:	32 c0                                           	xor    al,al
1058a884:	5e                                              	pop    esi
1058a885:	83 c4 10                                        	add    esp,0x10
1058a888:	c3                                              	ret
1058a889:	e8 32 a4 ad ff                                  	call   0x10064cc0
1058a88e:	5f                                              	pop    edi
1058a88f:	b0 01                                           	mov    al,0x1
1058a891:	5e                                              	pop    esi
1058a892:	83 c4 10                                        	add    esp,0x10
1058a895:	c3                                              	ret
1058a896:	cc                                              	int3
1058a897:	cc                                              	int3
1058a898:	cc                                              	int3
1058a899:	cc                                              	int3
1058a89a:	cc                                              	int3
1058a89b:	cc                                              	int3
1058a89c:	cc                                              	int3
1058a89d:	cc                                              	int3
1058a89e:	cc                                              	int3
1058a89f:	cc                                              	int3
