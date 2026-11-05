# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec0f30 (ScriptCore.GameUtils::GameUtils_HasValidFilenameChars)
Paired Ghidra pseudocode: 00EC0F30_ScriptCore_GameUtils_GameUtils_HasValidFilenameChars.c
Window: [0x00ec0f30, 0x00ec0f80) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec0f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec0f30: 56 e8 5a 84 8a ff 8b 4c 24 08 8b 10 8b 52 58 51
00ec0f40: 8b c8 ff d2 8b f0 0f b7 06 66 85 c0 74 1d 8b ff
00ec0f50: 6a 05 50 e8 08 ba 62 ff 83 c4 08 84 c0 74 10 0f
00ec0f60: b7 46 02 83 c6 02 66 85 c0 75 e5 b0 01 5e c3 32
00ec0f70: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec0f30 <.text+0xabff30>:
  ec0f30:	56                                              	push   esi
  ec0f31:	e8 5a 84 8a ff                                  	call   0x769390
  ec0f36:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec0f3a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec0f3c:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec0f3f:	51                                              	push   ecx
  ec0f40:	8b c8                                           	mov    ecx,eax
  ec0f42:	ff d2                                           	call   edx
  ec0f44:	8b f0                                           	mov    esi,eax
  ec0f46:	0f b7 06                                        	movzx  eax,WORD PTR [esi]
  ec0f49:	66 85 c0                                        	test   ax,ax
  ec0f4c:	74 1d                                           	je     0xec0f6b
  ec0f4e:	8b ff                                           	mov    edi,edi
  ec0f50:	6a 05                                           	push   0x5
  ec0f52:	50                                              	push   eax
  ec0f53:	e8 08 ba 62 ff                                  	call   0x4ec960
  ec0f58:	83 c4 08                                        	add    esp,0x8
  ec0f5b:	84 c0                                           	test   al,al
  ec0f5d:	74 10                                           	je     0xec0f6f
  ec0f5f:	0f b7 46 02                                     	movzx  eax,WORD PTR [esi+0x2]
  ec0f63:	83 c6 02                                        	add    esi,0x2
  ec0f66:	66 85 c0                                        	test   ax,ax
  ec0f69:	75 e5                                           	jne    0xec0f50
  ec0f6b:	b0 01                                           	mov    al,0x1
  ec0f6d:	5e                                              	pop    esi
  ec0f6e:	c3                                              	ret
  ec0f6f:	32 c0                                           	xor    al,al
  ec0f71:	5e                                              	pop    esi
  ec0f72:	c3                                              	ret
  ec0f73:	cc                                              	int3
  ec0f74:	cc                                              	int3
  ec0f75:	cc                                              	int3
  ec0f76:	cc                                              	int3
  ec0f77:	cc                                              	int3
  ec0f78:	cc                                              	int3
  ec0f79:	cc                                              	int3
  ec0f7a:	cc                                              	int3
  ec0f7b:	cc                                              	int3
  ec0f7c:	cc                                              	int3
  ec0f7d:	cc                                              	int3
  ec0f7e:	cc                                              	int3
  ec0f7f:	cc                                              	int3
