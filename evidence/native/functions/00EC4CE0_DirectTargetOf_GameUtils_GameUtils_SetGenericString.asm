# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4ce0 (DirectTargetOf_GameUtils_GameUtils_SetGenericString)
Paired Ghidra pseudocode: 00EC4CE0_DirectTargetOf_GameUtils_GameUtils_SetGenericString.c
Window: [0x00ec4ce0, 0x00ec4d70) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec4d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4ce0: 83 ec 10 e8 a8 46 8a ff 85 c0 75 06 32 c0 83 c4
00ec4cf0: 10 c3 8b 4c 24 18 8b 10 8b 52 58 51 8b c8 ff d2
00ec4d00: 85 c0 b9 54 8e 1c 01 c7 44 24 0c f0 3b 00 01 89
00ec4d10: 0c 24 89 4c 24 04 c7 44 24 08 56 8e 1c 01 74 10
00ec4d20: 66 83 38 00 74 0a 50 8d 4c 24 04 e8 20 42 54 ff
00ec4d30: 8b 4c 24 14 53 8d 44 24 04 50 51 e8 70 ec ff ff
00ec4d40: 8b 54 24 14 8a d8 8b 44 24 0c 2b d0 83 e2 fe 83
00ec4d50: c4 08 83 fa 02 7e 0d 85 c0 74 09 50 e8 7f f7 61
00ec4d60: ff 83 c4 04 8a c3 5b 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4ce0 <.text+0xac3ce0>:
  ec4ce0:	83 ec 10                                        	sub    esp,0x10
  ec4ce3:	e8 a8 46 8a ff                                  	call   0x769390
  ec4ce8:	85 c0                                           	test   eax,eax
  ec4cea:	75 06                                           	jne    0xec4cf2
  ec4cec:	32 c0                                           	xor    al,al
  ec4cee:	83 c4 10                                        	add    esp,0x10
  ec4cf1:	c3                                              	ret
  ec4cf2:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  ec4cf6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec4cf8:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec4cfb:	51                                              	push   ecx
  ec4cfc:	8b c8                                           	mov    ecx,eax
  ec4cfe:	ff d2                                           	call   edx
  ec4d00:	85 c0                                           	test   eax,eax
  ec4d02:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  ec4d07:	c7 44 24 0c f0 3b 00 01                         	mov    DWORD PTR [esp+0xc],0x1003bf0
  ec4d0f:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  ec4d12:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  ec4d16:	c7 44 24 08 56 8e 1c 01                         	mov    DWORD PTR [esp+0x8],0x11c8e56
  ec4d1e:	74 10                                           	je     0xec4d30
  ec4d20:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ec4d24:	74 0a                                           	je     0xec4d30
  ec4d26:	50                                              	push   eax
  ec4d27:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  ec4d2b:	e8 20 42 54 ff                                  	call   0x408f50
  ec4d30:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  ec4d34:	53                                              	push   ebx
  ec4d35:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ec4d39:	50                                              	push   eax
  ec4d3a:	51                                              	push   ecx
  ec4d3b:	e8 70 ec ff ff                                  	call   0xec39b0
  ec4d40:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  ec4d44:	8a d8                                           	mov    bl,al
  ec4d46:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ec4d4a:	2b d0                                           	sub    edx,eax
  ec4d4c:	83 e2 fe                                        	and    edx,0xfffffffe
  ec4d4f:	83 c4 08                                        	add    esp,0x8
  ec4d52:	83 fa 02                                        	cmp    edx,0x2
  ec4d55:	7e 0d                                           	jle    0xec4d64
  ec4d57:	85 c0                                           	test   eax,eax
  ec4d59:	74 09                                           	je     0xec4d64
  ec4d5b:	50                                              	push   eax
  ec4d5c:	e8 7f f7 61 ff                                  	call   0x4e44e0
  ec4d61:	83 c4 04                                        	add    esp,0x4
  ec4d64:	8a c3                                           	mov    al,bl
  ec4d66:	5b                                              	pop    ebx
  ec4d67:	83 c4 10                                        	add    esp,0x10
  ec4d6a:	c3                                              	ret
  ec4d6b:	cc                                              	int3
  ec4d6c:	cc                                              	int3
  ec4d6d:	cc                                              	int3
  ec4d6e:	cc                                              	int3
  ec4d6f:	cc                                              	int3
