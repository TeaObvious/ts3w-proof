# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779c10 (ScriptCore.UIManager::UIManager_DestroyEffectImpl)
Paired Ghidra pseudocode: 00779C10_ScriptCore_UIManager_UIManager_DestroyEffectImpl.c
Window: [0x00779c10, 0x00779c70) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779c10: 56 e8 7a f7 fe ff 8b f0 85 f6 74 4c 57 8b 7c 24
00779c20: 0c 8b c7 25 00 00 00 ff 3d 00 00 00 30 75 38 8b
00779c30: 16 8b 82 d8 00 00 00 57 8b ce ff d0 85 c0 74 0b
00779c40: 8b 10 5f 8b c8 8b 42 04 5e ff e0 8b 16 8b 82 d8
00779c50: 00 00 00 57 8b ce ff d0 85 c0 74 0b 8b 10 5f 8b
00779c60: c8 8b 42 04 5e ff e0 5f 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779c10 <.text+0x378c10>:
  779c10:	56                                              	push   esi
  779c11:	e8 7a f7 fe ff                                  	call   0x769390
  779c16:	8b f0                                           	mov    esi,eax
  779c18:	85 f6                                           	test   esi,esi
  779c1a:	74 4c                                           	je     0x779c68
  779c1c:	57                                              	push   edi
  779c1d:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  779c21:	8b c7                                           	mov    eax,edi
  779c23:	25 00 00 00 ff                                  	and    eax,0xff000000
  779c28:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  779c2d:	75 38                                           	jne    0x779c67
  779c2f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779c31:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  779c37:	57                                              	push   edi
  779c38:	8b ce                                           	mov    ecx,esi
  779c3a:	ff d0                                           	call   eax
  779c3c:	85 c0                                           	test   eax,eax
  779c3e:	74 0b                                           	je     0x779c4b
  779c40:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779c42:	5f                                              	pop    edi
  779c43:	8b c8                                           	mov    ecx,eax
  779c45:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  779c48:	5e                                              	pop    esi
  779c49:	ff e0                                           	jmp    eax
  779c4b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779c4d:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  779c53:	57                                              	push   edi
  779c54:	8b ce                                           	mov    ecx,esi
  779c56:	ff d0                                           	call   eax
  779c58:	85 c0                                           	test   eax,eax
  779c5a:	74 0b                                           	je     0x779c67
  779c5c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779c5e:	5f                                              	pop    edi
  779c5f:	8b c8                                           	mov    ecx,eax
  779c61:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  779c64:	5e                                              	pop    esi
  779c65:	ff e0                                           	jmp    eax
  779c67:	5f                                              	pop    edi
  779c68:	5e                                              	pop    esi
  779c69:	c3                                              	ret
  779c6a:	cc                                              	int3
  779c6b:	cc                                              	int3
  779c6c:	cc                                              	int3
  779c6d:	cc                                              	int3
  779c6e:	cc                                              	int3
  779c6f:	cc                                              	int3
