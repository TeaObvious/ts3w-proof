# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073abb0 (ScriptCore.Animation::Animation_HasAnimation)
Paired Ghidra pseudocode: 0073ABB0_ScriptCore_Animation_Animation_HasAnimation.c
Window: [0x0073abb0, 0x0073ac90) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073ac90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073abb0: b8 44 43 00 00 e8 86 4c 84 00 53 56 57 e8 ae c9
0073abc0: 1f 00 8b 8c 24 58 43 00 00 8b 94 24 54 43 00 00
0073abd0: 51 52 8b c8 e8 a7 d3 1f 00 8b f0 85 f6 0f 84 a0
0073abe0: 00 00 00 8d 7e 04 8b c7 b9 01 00 00 00 f0 0f c1
0073abf0: 08 8b 15 84 d4 1d 01 52 8b ce e8 61 96 1f 00 85
0073ac00: c0 74 63 8b 8c 24 5c 43 00 00 51 8b c8 e8 8e 1f
0073ac10: 20 00 8b d8 85 db 74 4e 8d 4c 24 10 e8 1f 1e e1
0073ac20: ff 8b 13 8b 52 0c 8d 44 24 10 50 8b cb ff d2 85
0073ac30: c0 8d 4c 24 10 0f 95 c3 e8 c3 1d e1 ff 8b c7 83
0073ac40: c9 ff f0 0f c1 08 49 75 11 ba 01 00 00 00 87 17
0073ac50: 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 8a c3 5b 81
0073ac60: c4 44 43 00 00 c3 8b c7 83 c9 ff f0 0f c1 08 49
0073ac70: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0073ac80: ce ff d2 5f 5e 32 c0 5b 81 c4 44 43 00 00 c3 cc

LINEAR DISASSEMBLY
0073abb0 <.text+0x339bb0>:
  73abb0:	b8 44 43 00 00                                  	mov    eax,0x4344
  73abb5:	e8 86 4c 84 00                                  	call   0xf7f840
  73abba:	53                                              	push   ebx
  73abbb:	56                                              	push   esi
  73abbc:	57                                              	push   edi
  73abbd:	e8 ae c9 1f 00                                  	call   0x937570
  73abc2:	8b 8c 24 58 43 00 00                            	mov    ecx,DWORD PTR [esp+0x4358]
  73abc9:	8b 94 24 54 43 00 00                            	mov    edx,DWORD PTR [esp+0x4354]
  73abd0:	51                                              	push   ecx
  73abd1:	52                                              	push   edx
  73abd2:	8b c8                                           	mov    ecx,eax
  73abd4:	e8 a7 d3 1f 00                                  	call   0x937f80
  73abd9:	8b f0                                           	mov    esi,eax
  73abdb:	85 f6                                           	test   esi,esi
  73abdd:	0f 84 a0 00 00 00                               	je     0x73ac83
  73abe3:	8d 7e 04                                        	lea    edi,[esi+0x4]
  73abe6:	8b c7                                           	mov    eax,edi
  73abe8:	b9 01 00 00 00                                  	mov    ecx,0x1
  73abed:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73abf1:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  73abf7:	52                                              	push   edx
  73abf8:	8b ce                                           	mov    ecx,esi
  73abfa:	e8 61 96 1f 00                                  	call   0x934260
  73abff:	85 c0                                           	test   eax,eax
  73ac01:	74 63                                           	je     0x73ac66
  73ac03:	8b 8c 24 5c 43 00 00                            	mov    ecx,DWORD PTR [esp+0x435c]
  73ac0a:	51                                              	push   ecx
  73ac0b:	8b c8                                           	mov    ecx,eax
  73ac0d:	e8 8e 1f 20 00                                  	call   0x93cba0
  73ac12:	8b d8                                           	mov    ebx,eax
  73ac14:	85 db                                           	test   ebx,ebx
  73ac16:	74 4e                                           	je     0x73ac66
  73ac18:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73ac1c:	e8 1f 1e e1 ff                                  	call   0x54ca40
  73ac21:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  73ac23:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  73ac26:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73ac2a:	50                                              	push   eax
  73ac2b:	8b cb                                           	mov    ecx,ebx
  73ac2d:	ff d2                                           	call   edx
  73ac2f:	85 c0                                           	test   eax,eax
  73ac31:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  73ac35:	0f 95 c3                                        	setne  bl
  73ac38:	e8 c3 1d e1 ff                                  	call   0x54ca00
  73ac3d:	8b c7                                           	mov    eax,edi
  73ac3f:	83 c9 ff                                        	or     ecx,0xffffffff
  73ac42:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73ac46:	49                                              	dec    ecx
  73ac47:	75 11                                           	jne    0x73ac5a
  73ac49:	ba 01 00 00 00                                  	mov    edx,0x1
  73ac4e:	87 17                                           	xchg   DWORD PTR [edi],edx
  73ac50:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73ac52:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73ac54:	6a 01                                           	push   0x1
  73ac56:	8b ce                                           	mov    ecx,esi
  73ac58:	ff d2                                           	call   edx
  73ac5a:	5f                                              	pop    edi
  73ac5b:	5e                                              	pop    esi
  73ac5c:	8a c3                                           	mov    al,bl
  73ac5e:	5b                                              	pop    ebx
  73ac5f:	81 c4 44 43 00 00                               	add    esp,0x4344
  73ac65:	c3                                              	ret
  73ac66:	8b c7                                           	mov    eax,edi
  73ac68:	83 c9 ff                                        	or     ecx,0xffffffff
  73ac6b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  73ac6f:	49                                              	dec    ecx
  73ac70:	75 11                                           	jne    0x73ac83
  73ac72:	ba 01 00 00 00                                  	mov    edx,0x1
  73ac77:	87 17                                           	xchg   DWORD PTR [edi],edx
  73ac79:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73ac7b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  73ac7d:	6a 01                                           	push   0x1
  73ac7f:	8b ce                                           	mov    ecx,esi
  73ac81:	ff d2                                           	call   edx
  73ac83:	5f                                              	pop    edi
  73ac84:	5e                                              	pop    esi
  73ac85:	32 c0                                           	xor    al,al
  73ac87:	5b                                              	pop    ebx
  73ac88:	81 c4 44 43 00 00                               	add    esp,0x4344
  73ac8e:	c3                                              	ret
  73ac8f:	cc                                              	int3
