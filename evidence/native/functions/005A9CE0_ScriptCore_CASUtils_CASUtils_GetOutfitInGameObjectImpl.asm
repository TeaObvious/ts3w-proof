# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9ce0 (ScriptCore.CASUtils::CASUtils_GetOutfitInGameObjectImpl)
Paired Ghidra pseudocode: 005A9CE0_ScriptCore_CASUtils_CASUtils_GetOutfitInGameObjectImpl.c
Window: [0x005a9ce0, 0x005a9d90) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9ce0: 83 ec 10 53 55 56 57 33 ff 33 ed 89 7c 24 18 89
005a9cf0: 7c 24 1c e8 78 d8 38 00 8b 4c 24 2c 8b 54 24 28
005a9d00: 51 52 8b c8 e8 77 e2 38 00 8b f0 85 f6 74 32 8d
005a9d10: 46 04 b9 01 00 00 00 f0 0f c1 08 8b 15 fc a0 1e
005a9d20: 01 52 8b ce e8 37 a5 38 00 85 c0 74 14 8b 48 10
005a9d30: 8b 50 14 8b 68 18 8b 78 1c 89 4c 24 18 89 54 24
005a9d40: 1c 85 f6 8b 5c 24 24 8b 44 24 18 8b 4c 24 1c 89
005a9d50: 2b 89 7b 04 89 43 08 89 4b 0c 74 20 8d 46 04 8b
005a9d60: d0 83 c9 ff f0 0f c1 0a 49 75 11 ba 01 00 00 00
005a9d70: 87 10 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e 5d 8b
005a9d80: c3 5b 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9ce0 <.text+0x1a8ce0>:
  5a9ce0:	83 ec 10                                        	sub    esp,0x10
  5a9ce3:	53                                              	push   ebx
  5a9ce4:	55                                              	push   ebp
  5a9ce5:	56                                              	push   esi
  5a9ce6:	57                                              	push   edi
  5a9ce7:	33 ff                                           	xor    edi,edi
  5a9ce9:	33 ed                                           	xor    ebp,ebp
  5a9ceb:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  5a9cef:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  5a9cf3:	e8 78 d8 38 00                                  	call   0x937570
  5a9cf8:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  5a9cfc:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a9d00:	51                                              	push   ecx
  5a9d01:	52                                              	push   edx
  5a9d02:	8b c8                                           	mov    ecx,eax
  5a9d04:	e8 77 e2 38 00                                  	call   0x937f80
  5a9d09:	8b f0                                           	mov    esi,eax
  5a9d0b:	85 f6                                           	test   esi,esi
  5a9d0d:	74 32                                           	je     0x5a9d41
  5a9d0f:	8d 46 04                                        	lea    eax,[esi+0x4]
  5a9d12:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9d17:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9d1b:	8b 15 fc a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0fc
  5a9d21:	52                                              	push   edx
  5a9d22:	8b ce                                           	mov    ecx,esi
  5a9d24:	e8 37 a5 38 00                                  	call   0x934260
  5a9d29:	85 c0                                           	test   eax,eax
  5a9d2b:	74 14                                           	je     0x5a9d41
  5a9d2d:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  5a9d30:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  5a9d33:	8b 68 18                                        	mov    ebp,DWORD PTR [eax+0x18]
  5a9d36:	8b 78 1c                                        	mov    edi,DWORD PTR [eax+0x1c]
  5a9d39:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a9d3d:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5a9d41:	85 f6                                           	test   esi,esi
  5a9d43:	8b 5c 24 24                                     	mov    ebx,DWORD PTR [esp+0x24]
  5a9d47:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5a9d4b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a9d4f:	89 2b                                           	mov    DWORD PTR [ebx],ebp
  5a9d51:	89 7b 04                                        	mov    DWORD PTR [ebx+0x4],edi
  5a9d54:	89 43 08                                        	mov    DWORD PTR [ebx+0x8],eax
  5a9d57:	89 4b 0c                                        	mov    DWORD PTR [ebx+0xc],ecx
  5a9d5a:	74 20                                           	je     0x5a9d7c
  5a9d5c:	8d 46 04                                        	lea    eax,[esi+0x4]
  5a9d5f:	8b d0                                           	mov    edx,eax
  5a9d61:	83 c9 ff                                        	or     ecx,0xffffffff
  5a9d64:	f0 0f c1 0a                                     	lock xadd DWORD PTR [edx],ecx
  5a9d68:	49                                              	dec    ecx
  5a9d69:	75 11                                           	jne    0x5a9d7c
  5a9d6b:	ba 01 00 00 00                                  	mov    edx,0x1
  5a9d70:	87 10                                           	xchg   DWORD PTR [eax],edx
  5a9d72:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a9d74:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9d76:	6a 01                                           	push   0x1
  5a9d78:	8b ce                                           	mov    ecx,esi
  5a9d7a:	ff d2                                           	call   edx
  5a9d7c:	5f                                              	pop    edi
  5a9d7d:	5e                                              	pop    esi
  5a9d7e:	5d                                              	pop    ebp
  5a9d7f:	8b c3                                           	mov    eax,ebx
  5a9d81:	5b                                              	pop    ebx
  5a9d82:	83 c4 10                                        	add    esp,0x10
  5a9d85:	c3                                              	ret
  5a9d86:	cc                                              	int3
  5a9d87:	cc                                              	int3
  5a9d88:	cc                                              	int3
  5a9d89:	cc                                              	int3
  5a9d8a:	cc                                              	int3
  5a9d8b:	cc                                              	int3
  5a9d8c:	cc                                              	int3
  5a9d8d:	cc                                              	int3
  5a9d8e:	cc                                              	int3
  5a9d8f:	cc                                              	int3
