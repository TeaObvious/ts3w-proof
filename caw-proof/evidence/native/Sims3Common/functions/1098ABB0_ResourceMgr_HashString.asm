# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098abb0 (ResourceMgr_HashString)
Paired Ghidra pseudocode: 1098ABB0_ResourceMgr_HashString.c
Window: [0x1098abb0, 0x1098ac40) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098ac40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098abb0: 83 ec 10 8b 44 24 14 53 55 56 57 33 ed 50 8d 4c
1098abc0: 24 14 89 6c 24 14 89 6c 24 18 89 6c 24 1c c7 44
1098abd0: 24 20 d4 6e b9 10 e8 a5 4b 6e ff 8b 5c 24 10 8b
1098abe0: 7c 24 14 3b df 8b f3 73 1b 8b 2d 1c b6 aa 10 90
1098abf0: 0f b6 0e 51 ff d5 88 06 83 c6 01 83 c4 04 3b f7
1098ac00: 72 ee 33 ed 68 c5 9d 1c 81 2b fb 57 53 e8 be c7
1098ac10: f1 ff 8b 54 24 24 2b d3 83 c4 0c 83 fa 01 8b f0
1098ac20: 7e 0d 3b dd 74 09 53 e8 64 e2 f8 ff 83 c4 04 5f
1098ac30: 8b c6 5e 5d 5b 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098abb0 <.text+0x989bb0>:
1098abb0:	83 ec 10                                        	sub    esp,0x10
1098abb3:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098abb7:	53                                              	push   ebx
1098abb8:	55                                              	push   ebp
1098abb9:	56                                              	push   esi
1098abba:	57                                              	push   edi
1098abbb:	33 ed                                           	xor    ebp,ebp
1098abbd:	50                                              	push   eax
1098abbe:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098abc2:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
1098abc6:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
1098abca:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
1098abce:	c7 44 24 20 d4 6e b9 10                         	mov    DWORD PTR [esp+0x20],0x10b96ed4
1098abd6:	e8 a5 4b 6e ff                                  	call   0x1006f780
1098abdb:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
1098abdf:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
1098abe3:	3b df                                           	cmp    ebx,edi
1098abe5:	8b f3                                           	mov    esi,ebx
1098abe7:	73 1b                                           	jae    0x1098ac04
1098abe9:	8b 2d 1c b6 aa 10                               	mov    ebp,DWORD PTR ds:0x10aab61c
1098abef:	90                                              	nop
1098abf0:	0f b6 0e                                        	movzx  ecx,BYTE PTR [esi]
1098abf3:	51                                              	push   ecx
1098abf4:	ff d5                                           	call   ebp
1098abf6:	88 06                                           	mov    BYTE PTR [esi],al
1098abf8:	83 c6 01                                        	add    esi,0x1
1098abfb:	83 c4 04                                        	add    esp,0x4
1098abfe:	3b f7                                           	cmp    esi,edi
1098ac00:	72 ee                                           	jb     0x1098abf0
1098ac02:	33 ed                                           	xor    ebp,ebp
1098ac04:	68 c5 9d 1c 81                                  	push   0x811c9dc5
1098ac09:	2b fb                                           	sub    edi,ebx
1098ac0b:	57                                              	push   edi
1098ac0c:	53                                              	push   ebx
1098ac0d:	e8 be c7 f1 ff                                  	call   0x108a73d0
1098ac12:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
1098ac16:	2b d3                                           	sub    edx,ebx
1098ac18:	83 c4 0c                                        	add    esp,0xc
1098ac1b:	83 fa 01                                        	cmp    edx,0x1
1098ac1e:	8b f0                                           	mov    esi,eax
1098ac20:	7e 0d                                           	jle    0x1098ac2f
1098ac22:	3b dd                                           	cmp    ebx,ebp
1098ac24:	74 09                                           	je     0x1098ac2f
1098ac26:	53                                              	push   ebx
1098ac27:	e8 64 e2 f8 ff                                  	call   0x10918e90
1098ac2c:	83 c4 04                                        	add    esp,0x4
1098ac2f:	5f                                              	pop    edi
1098ac30:	8b c6                                           	mov    eax,esi
1098ac32:	5e                                              	pop    esi
1098ac33:	5d                                              	pop    ebp
1098ac34:	5b                                              	pop    ebx
1098ac35:	83 c4 10                                        	add    esp,0x10
1098ac38:	c3                                              	ret
1098ac39:	cc                                              	int3
1098ac3a:	cc                                              	int3
1098ac3b:	cc                                              	int3
1098ac3c:	cc                                              	int3
1098ac3d:	cc                                              	int3
1098ac3e:	cc                                              	int3
1098ac3f:	cc                                              	int3
