# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5a60 (ScriptCore.CASUtils::CASUtils_CASCameraModeImpl)
Paired Ghidra pseudocode: 005A5A60_ScriptCore_CASUtils_CASUtils_CASCameraModeImpl.c
Window: [0x005a5a60, 0x005a5b10) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5a60: 53 56 e8 09 27 14 00 8b 5c 24 0c 8b f0 85 f6 74
005a5a70: 4c 8a c3 f6 d8 57 68 00 f0 ff 7f 8b ce 1b c0 83
005a5a80: e0 0f 83 c0 01 8b f8 57 e8 d3 27 14 00 88 9e 69
005a5a90: 02 00 00 8b 76 38 85 f6 74 22 84 db 0f 94 c1 51
005a5aa0: 8b ce e8 09 93 13 00 53 8b ce e8 f1 92 13 00 68
005a5ab0: 00 f0 ff 7f 57 8b ce e8 c4 92 13 00 5f e8 0e 41
005a5ac0: 3c 00 8b c8 e8 27 c5 97 00 85 c0 74 37 84 db 74
005a5ad0: 23 8b 88 90 00 00 00 83 f9 04 74 06 89 0d e4 61
005a5ae0: 15 01 6a 00 6a 04 8b c8 e8 73 55 3c 00 5e 5b e9
005a5af0: 3c 3e 14 00 8b 15 e4 61 15 01 6a 00 52 8b c8 e8
005a5b00: 5c 55 3c 00 5e 5b e9 25 3e 14 00 cc cc cc cc cc

LINEAR DISASSEMBLY
005a5a60 <.text+0x1a4a60>:
  5a5a60:	53                                              	push   ebx
  5a5a61:	56                                              	push   esi
  5a5a62:	e8 09 27 14 00                                  	call   0x6e8170
  5a5a67:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  5a5a6b:	8b f0                                           	mov    esi,eax
  5a5a6d:	85 f6                                           	test   esi,esi
  5a5a6f:	74 4c                                           	je     0x5a5abd
  5a5a71:	8a c3                                           	mov    al,bl
  5a5a73:	f6 d8                                           	neg    al
  5a5a75:	57                                              	push   edi
  5a5a76:	68 00 f0 ff 7f                                  	push   0x7ffff000
  5a5a7b:	8b ce                                           	mov    ecx,esi
  5a5a7d:	1b c0                                           	sbb    eax,eax
  5a5a7f:	83 e0 0f                                        	and    eax,0xf
  5a5a82:	83 c0 01                                        	add    eax,0x1
  5a5a85:	8b f8                                           	mov    edi,eax
  5a5a87:	57                                              	push   edi
  5a5a88:	e8 d3 27 14 00                                  	call   0x6e8260
  5a5a8d:	88 9e 69 02 00 00                               	mov    BYTE PTR [esi+0x269],bl
  5a5a93:	8b 76 38                                        	mov    esi,DWORD PTR [esi+0x38]
  5a5a96:	85 f6                                           	test   esi,esi
  5a5a98:	74 22                                           	je     0x5a5abc
  5a5a9a:	84 db                                           	test   bl,bl
  5a5a9c:	0f 94 c1                                        	sete   cl
  5a5a9f:	51                                              	push   ecx
  5a5aa0:	8b ce                                           	mov    ecx,esi
  5a5aa2:	e8 09 93 13 00                                  	call   0x6dedb0
  5a5aa7:	53                                              	push   ebx
  5a5aa8:	8b ce                                           	mov    ecx,esi
  5a5aaa:	e8 f1 92 13 00                                  	call   0x6deda0
  5a5aaf:	68 00 f0 ff 7f                                  	push   0x7ffff000
  5a5ab4:	57                                              	push   edi
  5a5ab5:	8b ce                                           	mov    ecx,esi
  5a5ab7:	e8 c4 92 13 00                                  	call   0x6ded80
  5a5abc:	5f                                              	pop    edi
  5a5abd:	e8 0e 41 3c 00                                  	call   0x969bd0
  5a5ac2:	8b c8                                           	mov    ecx,eax
  5a5ac4:	e8 27 c5 97 00                                  	call   0xf21ff0
  5a5ac9:	85 c0                                           	test   eax,eax
  5a5acb:	74 37                                           	je     0x5a5b04
  5a5acd:	84 db                                           	test   bl,bl
  5a5acf:	74 23                                           	je     0x5a5af4
  5a5ad1:	8b 88 90 00 00 00                               	mov    ecx,DWORD PTR [eax+0x90]
  5a5ad7:	83 f9 04                                        	cmp    ecx,0x4
  5a5ada:	74 06                                           	je     0x5a5ae2
  5a5adc:	89 0d e4 61 15 01                               	mov    DWORD PTR ds:0x11561e4,ecx
  5a5ae2:	6a 00                                           	push   0x0
  5a5ae4:	6a 04                                           	push   0x4
  5a5ae6:	8b c8                                           	mov    ecx,eax
  5a5ae8:	e8 73 55 3c 00                                  	call   0x96b060
  5a5aed:	5e                                              	pop    esi
  5a5aee:	5b                                              	pop    ebx
  5a5aef:	e9 3c 3e 14 00                                  	jmp    0x6e9930
  5a5af4:	8b 15 e4 61 15 01                               	mov    edx,DWORD PTR ds:0x11561e4
  5a5afa:	6a 00                                           	push   0x0
  5a5afc:	52                                              	push   edx
  5a5afd:	8b c8                                           	mov    ecx,eax
  5a5aff:	e8 5c 55 3c 00                                  	call   0x96b060
  5a5b04:	5e                                              	pop    esi
  5a5b05:	5b                                              	pop    ebx
  5a5b06:	e9 25 3e 14 00                                  	jmp    0x6e9930
  5a5b0b:	cc                                              	int3
  5a5b0c:	cc                                              	int3
  5a5b0d:	cc                                              	int3
  5a5b0e:	cc                                              	int3
  5a5b0f:	cc                                              	int3
