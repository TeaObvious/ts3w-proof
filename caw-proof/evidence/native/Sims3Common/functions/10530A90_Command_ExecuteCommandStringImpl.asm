# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10530a90 (Command_ExecuteCommandStringImpl)
Paired Ghidra pseudocode: 10530A90_Command_ExecuteCommandStringImpl.c
Window: [0x10530a90, 0x10530b00) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10530b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10530a90: 56 e8 8a a6 02 00 8b 4c 24 08 85 c9 74 23 8b 10
10530aa0: 51 8b c8 8b 42 58 ff d0 8b f0 85 f6 74 13 e8 9d
10530ab0: 67 e5 ff 85 c0 74 0a 56 8b c8 e8 91 7b e5 ff 5e
10530ac0: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc
10530ad0: 8b 44 24 08 8b 48 04 8b 10 8b 44 24 04 51 8b 48
10530ae0: 04 52 8b 10 51 52 e8 e5 ac 2a 00 33 c9 83 c4 10
10530af0: 85 c0 0f 9c c1 8a c1 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10530a90 <.text+0x52fa90>:
10530a90:	56                                              	push   esi
10530a91:	e8 8a a6 02 00                                  	call   0x1055b120
10530a96:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10530a9a:	85 c9                                           	test   ecx,ecx
10530a9c:	74 23                                           	je     0x10530ac1
10530a9e:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530aa0:	51                                              	push   ecx
10530aa1:	8b c8                                           	mov    ecx,eax
10530aa3:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
10530aa6:	ff d0                                           	call   eax
10530aa8:	8b f0                                           	mov    esi,eax
10530aaa:	85 f6                                           	test   esi,esi
10530aac:	74 13                                           	je     0x10530ac1
10530aae:	e8 9d 67 e5 ff                                  	call   0x10387250
10530ab3:	85 c0                                           	test   eax,eax
10530ab5:	74 0a                                           	je     0x10530ac1
10530ab7:	56                                              	push   esi
10530ab8:	8b c8                                           	mov    ecx,eax
10530aba:	e8 91 7b e5 ff                                  	call   0x10388650
10530abf:	5e                                              	pop    esi
10530ac0:	c3                                              	ret
10530ac1:	32 c0                                           	xor    al,al
10530ac3:	5e                                              	pop    esi
10530ac4:	c3                                              	ret
10530ac5:	cc                                              	int3
10530ac6:	cc                                              	int3
10530ac7:	cc                                              	int3
10530ac8:	cc                                              	int3
10530ac9:	cc                                              	int3
10530aca:	cc                                              	int3
10530acb:	cc                                              	int3
10530acc:	cc                                              	int3
10530acd:	cc                                              	int3
10530ace:	cc                                              	int3
10530acf:	cc                                              	int3
10530ad0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10530ad4:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10530ad7:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530ad9:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10530add:	51                                              	push   ecx
10530ade:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
10530ae1:	52                                              	push   edx
10530ae2:	8b 10                                           	mov    edx,DWORD PTR [eax]
10530ae4:	51                                              	push   ecx
10530ae5:	52                                              	push   edx
10530ae6:	e8 e5 ac 2a 00                                  	call   0x107db7d0
10530aeb:	33 c9                                           	xor    ecx,ecx
10530aed:	83 c4 10                                        	add    esp,0x10
10530af0:	85 c0                                           	test   eax,eax
10530af2:	0f 9c c1                                        	setl   cl
10530af5:	8a c1                                           	mov    al,cl
10530af7:	c3                                              	ret
10530af8:	cc                                              	int3
10530af9:	cc                                              	int3
10530afa:	cc                                              	int3
10530afb:	cc                                              	int3
10530afc:	cc                                              	int3
10530afd:	cc                                              	int3
10530afe:	cc                                              	int3
10530aff:	cc                                              	int3
