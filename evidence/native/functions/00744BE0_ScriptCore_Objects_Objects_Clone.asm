# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00744be0 (ScriptCore.Objects::Objects_Clone)
Paired Ghidra pseudocode: 00744BE0_ScriptCore_Objects_Objects_Clone.c
Window: [0x00744be0, 0x00744c50) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00744c50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00744be0: 53 56 57 e8 88 29 1f 00 8b 4c 24 14 8b 54 24 10
00744bf0: 51 52 8b c8 e8 87 33 1f 00 8b f0 e8 70 29 1f 00
00744c00: 85 f6 8b d8 74 0b 8b ce e8 23 a5 f4 ff 8b f8 eb
00744c10: 02 33 ff 85 db 74 30 85 f6 74 2c 85 ff 74 28 6a
00744c20: ff 6a 00 6a 00 56 8b cb e8 93 40 1f 00 8b f0 85
00744c30: f6 74 14 8b 07 8b 50 30 56 8b cf ff d2 8b 46 08
00744c40: 8b 56 0c 5f 5e 5b c3 5f 5e 33 c0 33 d2 5b c3 cc

LINEAR DISASSEMBLY
00744be0 <.text+0x343be0>:
  744be0:	53                                              	push   ebx
  744be1:	56                                              	push   esi
  744be2:	57                                              	push   edi
  744be3:	e8 88 29 1f 00                                  	call   0x937570
  744be8:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  744bec:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  744bf0:	51                                              	push   ecx
  744bf1:	52                                              	push   edx
  744bf2:	8b c8                                           	mov    ecx,eax
  744bf4:	e8 87 33 1f 00                                  	call   0x937f80
  744bf9:	8b f0                                           	mov    esi,eax
  744bfb:	e8 70 29 1f 00                                  	call   0x937570
  744c00:	85 f6                                           	test   esi,esi
  744c02:	8b d8                                           	mov    ebx,eax
  744c04:	74 0b                                           	je     0x744c11
  744c06:	8b ce                                           	mov    ecx,esi
  744c08:	e8 23 a5 f4 ff                                  	call   0x68f130
  744c0d:	8b f8                                           	mov    edi,eax
  744c0f:	eb 02                                           	jmp    0x744c13
  744c11:	33 ff                                           	xor    edi,edi
  744c13:	85 db                                           	test   ebx,ebx
  744c15:	74 30                                           	je     0x744c47
  744c17:	85 f6                                           	test   esi,esi
  744c19:	74 2c                                           	je     0x744c47
  744c1b:	85 ff                                           	test   edi,edi
  744c1d:	74 28                                           	je     0x744c47
  744c1f:	6a ff                                           	push   0xffffffff
  744c21:	6a 00                                           	push   0x0
  744c23:	6a 00                                           	push   0x0
  744c25:	56                                              	push   esi
  744c26:	8b cb                                           	mov    ecx,ebx
  744c28:	e8 93 40 1f 00                                  	call   0x938cc0
  744c2d:	8b f0                                           	mov    esi,eax
  744c2f:	85 f6                                           	test   esi,esi
  744c31:	74 14                                           	je     0x744c47
  744c33:	8b 07                                           	mov    eax,DWORD PTR [edi]
  744c35:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  744c38:	56                                              	push   esi
  744c39:	8b cf                                           	mov    ecx,edi
  744c3b:	ff d2                                           	call   edx
  744c3d:	8b 46 08                                        	mov    eax,DWORD PTR [esi+0x8]
  744c40:	8b 56 0c                                        	mov    edx,DWORD PTR [esi+0xc]
  744c43:	5f                                              	pop    edi
  744c44:	5e                                              	pop    esi
  744c45:	5b                                              	pop    ebx
  744c46:	c3                                              	ret
  744c47:	5f                                              	pop    edi
  744c48:	5e                                              	pop    esi
  744c49:	33 c0                                           	xor    eax,eax
  744c4b:	33 d2                                           	xor    edx,edx
  744c4d:	5b                                              	pop    ebx
  744c4e:	c3                                              	ret
  744c4f:	cc                                              	int3
