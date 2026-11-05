# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1057a810 (World_AddObjectToSceneImpl)
Paired Ghidra pseudocode: 1057A810_World_AddObjectToSceneImpl.c
Window: [0x1057a810, 0x1057a870) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1057a870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1057a810: 51 56 e8 89 f9 1a 00 8b 4c 24 10 8b 54 24 0c 51
1057a820: 52 8b c8 e8 88 03 1b 00 8b f0 85 f6 74 3a 57 8d
1057a830: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 6a 00 56
1057a840: 6a 0b e8 a9 da 1a 00 83 c4 0c 8b d7 83 c8 ff f0
1057a850: 0f c1 02 48 75 11 b9 01 00 00 00 87 0f 8b 16 8b
1057a860: 02 6a 01 8b ce ff d0 5f 5e 59 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1057a810 <.text+0x579810>:
1057a810:	51                                              	push   ecx
1057a811:	56                                              	push   esi
1057a812:	e8 89 f9 1a 00                                  	call   0x1072a1a0
1057a817:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1057a81b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1057a81f:	51                                              	push   ecx
1057a820:	52                                              	push   edx
1057a821:	8b c8                                           	mov    ecx,eax
1057a823:	e8 88 03 1b 00                                  	call   0x1072abb0
1057a828:	8b f0                                           	mov    esi,eax
1057a82a:	85 f6                                           	test   esi,esi
1057a82c:	74 3a                                           	je     0x1057a868
1057a82e:	57                                              	push   edi
1057a82f:	8d 7e 04                                        	lea    edi,[esi+0x4]
1057a832:	8b c7                                           	mov    eax,edi
1057a834:	b9 01 00 00 00                                  	mov    ecx,0x1
1057a839:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
1057a83d:	6a 00                                           	push   0x0
1057a83f:	56                                              	push   esi
1057a840:	6a 0b                                           	push   0xb
1057a842:	e8 a9 da 1a 00                                  	call   0x107282f0
1057a847:	83 c4 0c                                        	add    esp,0xc
1057a84a:	8b d7                                           	mov    edx,edi
1057a84c:	83 c8 ff                                        	or     eax,0xffffffff
1057a84f:	f0 0f c1 02                                     	lock xadd DWORD PTR [edx],eax
1057a853:	48                                              	dec    eax
1057a854:	75 11                                           	jne    0x1057a867
1057a856:	b9 01 00 00 00                                  	mov    ecx,0x1
1057a85b:	87 0f                                           	xchg   DWORD PTR [edi],ecx
1057a85d:	8b 16                                           	mov    edx,DWORD PTR [esi]
1057a85f:	8b 02                                           	mov    eax,DWORD PTR [edx]
1057a861:	6a 01                                           	push   0x1
1057a863:	8b ce                                           	mov    ecx,esi
1057a865:	ff d0                                           	call   eax
1057a867:	5f                                              	pop    edi
1057a868:	5e                                              	pop    esi
1057a869:	59                                              	pop    ecx
1057a86a:	c3                                              	ret
1057a86b:	cc                                              	int3
1057a86c:	cc                                              	int3
1057a86d:	cc                                              	int3
1057a86e:	cc                                              	int3
1057a86f:	cc                                              	int3
