# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9a60 (ScriptCore.CASUtils::CASUtils_SimBuilderFreeImpl)
Paired Ghidra pseudocode: 005A9A60_ScriptCore_CASUtils_CASUtils_SimBuilderFreeImpl.c
Window: [0x005a9a60, 0x005a9b10) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9b10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9a60: 53 57 e8 89 2a ea ff 8b d8 e8 22 f9 1b 00 8b f8
005a9a70: 85 ff 0f 84 86 00 00 00 55 8b 6c 24 10 8b c5 25
005a9a80: 00 00 00 ff 3d 00 00 00 35 75 72 8b 17 8b 82 cc
005a9a90: 00 00 00 56 55 8b cf ff d0 8b f0 85 f6 74 5d 6a
005a9aa0: 00 6a 00 6a 00 6a 00 68 44 f8 fd 00 6a 14 e8 4d
005a9ab0: aa f3 ff 83 c4 18 85 c0 74 0c 56 8b c8 e8 7e fb
005a9ac0: ff ff 8b f0 eb 02 33 f6 8b 16 8b 42 04 8b ce ff
005a9ad0: d0 8b 13 8b 52 1c 8d 46 04 50 6a 00 56 68 87 ad
005a9ae0: c9 1f 8b cb ff d2 8b 06 8b 50 08 8b ce ff d2 8b
005a9af0: 07 8b 90 d8 00 00 00 55 8b cf ff d2 5e 5d 5f 5b
005a9b00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9a60 <.text+0x1a8a60>:
  5a9a60:	53                                              	push   ebx
  5a9a61:	57                                              	push   edi
  5a9a62:	e8 89 2a ea ff                                  	call   0x44c4f0
  5a9a67:	8b d8                                           	mov    ebx,eax
  5a9a69:	e8 22 f9 1b 00                                  	call   0x769390
  5a9a6e:	8b f8                                           	mov    edi,eax
  5a9a70:	85 ff                                           	test   edi,edi
  5a9a72:	0f 84 86 00 00 00                               	je     0x5a9afe
  5a9a78:	55                                              	push   ebp
  5a9a79:	8b 6c 24 10                                     	mov    ebp,DWORD PTR [esp+0x10]
  5a9a7d:	8b c5                                           	mov    eax,ebp
  5a9a7f:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a9a84:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a9a89:	75 72                                           	jne    0x5a9afd
  5a9a8b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a9a8d:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a9a93:	56                                              	push   esi
  5a9a94:	55                                              	push   ebp
  5a9a95:	8b cf                                           	mov    ecx,edi
  5a9a97:	ff d0                                           	call   eax
  5a9a99:	8b f0                                           	mov    esi,eax
  5a9a9b:	85 f6                                           	test   esi,esi
  5a9a9d:	74 5d                                           	je     0x5a9afc
  5a9a9f:	6a 00                                           	push   0x0
  5a9aa1:	6a 00                                           	push   0x0
  5a9aa3:	6a 00                                           	push   0x0
  5a9aa5:	6a 00                                           	push   0x0
  5a9aa7:	68 44 f8 fd 00                                  	push   0xfdf844
  5a9aac:	6a 14                                           	push   0x14
  5a9aae:	e8 4d aa f3 ff                                  	call   0x4e4500
  5a9ab3:	83 c4 18                                        	add    esp,0x18
  5a9ab6:	85 c0                                           	test   eax,eax
  5a9ab8:	74 0c                                           	je     0x5a9ac6
  5a9aba:	56                                              	push   esi
  5a9abb:	8b c8                                           	mov    ecx,eax
  5a9abd:	e8 7e fb ff ff                                  	call   0x5a9640
  5a9ac2:	8b f0                                           	mov    esi,eax
  5a9ac4:	eb 02                                           	jmp    0x5a9ac8
  5a9ac6:	33 f6                                           	xor    esi,esi
  5a9ac8:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a9aca:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a9acd:	8b ce                                           	mov    ecx,esi
  5a9acf:	ff d0                                           	call   eax
  5a9ad1:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  5a9ad3:	8b 52 1c                                        	mov    edx,DWORD PTR [edx+0x1c]
  5a9ad6:	8d 46 04                                        	lea    eax,[esi+0x4]
  5a9ad9:	50                                              	push   eax
  5a9ada:	6a 00                                           	push   0x0
  5a9adc:	56                                              	push   esi
  5a9add:	68 87 ad c9 1f                                  	push   0x1fc9ad87
  5a9ae2:	8b cb                                           	mov    ecx,ebx
  5a9ae4:	ff d2                                           	call   edx
  5a9ae6:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a9ae8:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5a9aeb:	8b ce                                           	mov    ecx,esi
  5a9aed:	ff d2                                           	call   edx
  5a9aef:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a9af1:	8b 90 d8 00 00 00                               	mov    edx,DWORD PTR [eax+0xd8]
  5a9af7:	55                                              	push   ebp
  5a9af8:	8b cf                                           	mov    ecx,edi
  5a9afa:	ff d2                                           	call   edx
  5a9afc:	5e                                              	pop    esi
  5a9afd:	5d                                              	pop    ebp
  5a9afe:	5f                                              	pop    edi
  5a9aff:	5b                                              	pop    ebx
  5a9b00:	c3                                              	ret
  5a9b01:	cc                                              	int3
  5a9b02:	cc                                              	int3
  5a9b03:	cc                                              	int3
  5a9b04:	cc                                              	int3
  5a9b05:	cc                                              	int3
  5a9b06:	cc                                              	int3
  5a9b07:	cc                                              	int3
  5a9b08:	cc                                              	int3
  5a9b09:	cc                                              	int3
  5a9b0a:	cc                                              	int3
  5a9b0b:	cc                                              	int3
  5a9b0c:	cc                                              	int3
  5a9b0d:	cc                                              	int3
  5a9b0e:	cc                                              	int3
  5a9b0f:	cc                                              	int3
