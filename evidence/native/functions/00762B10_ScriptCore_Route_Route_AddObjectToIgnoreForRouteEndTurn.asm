# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00762b10 (ScriptCore.Route::Route_AddObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 00762B10_ScriptCore_Route_Route_AddObjectToIgnoreForRouteEndTurn.c
Window: [0x00762b10, 0x00762bb0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00762bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00762b10: 8b 0d c4 50 1d 01 85 c9 0f 84 82 00 00 00 8b 44
00762b20: 24 04 57 50 e8 87 89 fe ff 8b f8 85 ff 74 70 8b
00762b30: 17 8b 42 10 53 56 8b cf ff d0 8d 8f 58 01 00 00
00762b40: e8 eb 99 0b 00 8b 70 04 8b 10 3b d6 8b 4c 24 18
00762b50: 8b 5c 24 14 74 1a 55 8b 2a 3b eb 75 07 8b 6a 04
00762b60: 3b e9 74 07 83 c2 08 3b d6 75 ec 3b d6 5d 75 23
00762b70: 3b 70 08 73 11 85 f6 8d 56 08 89 50 04 74 14 89
00762b80: 1e 89 4e 04 eb 0d 8d 4c 24 14 51 56 8b c8 e8 cd
00762b90: f7 e0 ff 8b 17 8b 42 14 5e 5b 8b cf 5f ff e0 5f
00762ba0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00762b10 <.text+0x361b10>:
  762b10:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  762b16:	85 c9                                           	test   ecx,ecx
  762b18:	0f 84 82 00 00 00                               	je     0x762ba0
  762b1e:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  762b22:	57                                              	push   edi
  762b23:	50                                              	push   eax
  762b24:	e8 87 89 fe ff                                  	call   0x74b4b0
  762b29:	8b f8                                           	mov    edi,eax
  762b2b:	85 ff                                           	test   edi,edi
  762b2d:	74 70                                           	je     0x762b9f
  762b2f:	8b 17                                           	mov    edx,DWORD PTR [edi]
  762b31:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  762b34:	53                                              	push   ebx
  762b35:	56                                              	push   esi
  762b36:	8b cf                                           	mov    ecx,edi
  762b38:	ff d0                                           	call   eax
  762b3a:	8d 8f 58 01 00 00                               	lea    ecx,[edi+0x158]
  762b40:	e8 eb 99 0b 00                                  	call   0x81c530
  762b45:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  762b48:	8b 10                                           	mov    edx,DWORD PTR [eax]
  762b4a:	3b d6                                           	cmp    edx,esi
  762b4c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  762b50:	8b 5c 24 14                                     	mov    ebx,DWORD PTR [esp+0x14]
  762b54:	74 1a                                           	je     0x762b70
  762b56:	55                                              	push   ebp
  762b57:	8b 2a                                           	mov    ebp,DWORD PTR [edx]
  762b59:	3b eb                                           	cmp    ebp,ebx
  762b5b:	75 07                                           	jne    0x762b64
  762b5d:	8b 6a 04                                        	mov    ebp,DWORD PTR [edx+0x4]
  762b60:	3b e9                                           	cmp    ebp,ecx
  762b62:	74 07                                           	je     0x762b6b
  762b64:	83 c2 08                                        	add    edx,0x8
  762b67:	3b d6                                           	cmp    edx,esi
  762b69:	75 ec                                           	jne    0x762b57
  762b6b:	3b d6                                           	cmp    edx,esi
  762b6d:	5d                                              	pop    ebp
  762b6e:	75 23                                           	jne    0x762b93
  762b70:	3b 70 08                                        	cmp    esi,DWORD PTR [eax+0x8]
  762b73:	73 11                                           	jae    0x762b86
  762b75:	85 f6                                           	test   esi,esi
  762b77:	8d 56 08                                        	lea    edx,[esi+0x8]
  762b7a:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  762b7d:	74 14                                           	je     0x762b93
  762b7f:	89 1e                                           	mov    DWORD PTR [esi],ebx
  762b81:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  762b84:	eb 0d                                           	jmp    0x762b93
  762b86:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  762b8a:	51                                              	push   ecx
  762b8b:	56                                              	push   esi
  762b8c:	8b c8                                           	mov    ecx,eax
  762b8e:	e8 cd f7 e0 ff                                  	call   0x572360
  762b93:	8b 17                                           	mov    edx,DWORD PTR [edi]
  762b95:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  762b98:	5e                                              	pop    esi
  762b99:	5b                                              	pop    ebx
  762b9a:	8b cf                                           	mov    ecx,edi
  762b9c:	5f                                              	pop    edi
  762b9d:	ff e0                                           	jmp    eax
  762b9f:	5f                                              	pop    edi
  762ba0:	c3                                              	ret
  762ba1:	cc                                              	int3
  762ba2:	cc                                              	int3
  762ba3:	cc                                              	int3
  762ba4:	cc                                              	int3
  762ba5:	cc                                              	int3
  762ba6:	cc                                              	int3
  762ba7:	cc                                              	int3
  762ba8:	cc                                              	int3
  762ba9:	cc                                              	int3
  762baa:	cc                                              	int3
  762bab:	cc                                              	int3
  762bac:	cc                                              	int3
  762bad:	cc                                              	int3
  762bae:	cc                                              	int3
  762baf:	cc                                              	int3
