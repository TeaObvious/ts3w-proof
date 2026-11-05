# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4e40 (ScriptCore.GameUtils::GameUtils_CreateCSVFileImpl)
Paired Ghidra pseudocode: 00EC4E40_ScriptCore_GameUtils_GameUtils_CreateCSVFileImpl.c
Window: [0x00ec4e40, 0x00ec4eb0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec4eb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4e40: 56 57 e8 49 45 8a ff 8b 4c 24 0c 8b f0 8b 06 8b
00ec4e50: 50 58 51 8b ce ff d2 6a 00 6a 00 6a 00 6a 00 68
00ec4e60: 00 3a 0f 01 68 90 00 00 00 8b f8 e8 90 f6 61 ff
00ec4e70: 83 c4 18 85 c0 74 15 51 8b cc c7 01 00 00 00 00
00ec4e80: 57 8b c8 e8 48 4d 9c ff 8b f8 eb 02 33 ff 8b cf
00ec4e90: e8 eb 66 90 ff 8b 06 8b 90 c8 00 00 00 6a 40 57
00ec4ea0: 8b ce ff d2 5f 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4e40 <.text+0xac3e40>:
  ec4e40:	56                                              	push   esi
  ec4e41:	57                                              	push   edi
  ec4e42:	e8 49 45 8a ff                                  	call   0x769390
  ec4e47:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ec4e4b:	8b f0                                           	mov    esi,eax
  ec4e4d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec4e4f:	8b 50 58                                        	mov    edx,DWORD PTR [eax+0x58]
  ec4e52:	51                                              	push   ecx
  ec4e53:	8b ce                                           	mov    ecx,esi
  ec4e55:	ff d2                                           	call   edx
  ec4e57:	6a 00                                           	push   0x0
  ec4e59:	6a 00                                           	push   0x0
  ec4e5b:	6a 00                                           	push   0x0
  ec4e5d:	6a 00                                           	push   0x0
  ec4e5f:	68 00 3a 0f 01                                  	push   0x10f3a00
  ec4e64:	68 90 00 00 00                                  	push   0x90
  ec4e69:	8b f8                                           	mov    edi,eax
  ec4e6b:	e8 90 f6 61 ff                                  	call   0x4e4500
  ec4e70:	83 c4 18                                        	add    esp,0x18
  ec4e73:	85 c0                                           	test   eax,eax
  ec4e75:	74 15                                           	je     0xec4e8c
  ec4e77:	51                                              	push   ecx
  ec4e78:	8b cc                                           	mov    ecx,esp
  ec4e7a:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
  ec4e80:	57                                              	push   edi
  ec4e81:	8b c8                                           	mov    ecx,eax
  ec4e83:	e8 48 4d 9c ff                                  	call   0x889bd0
  ec4e88:	8b f8                                           	mov    edi,eax
  ec4e8a:	eb 02                                           	jmp    0xec4e8e
  ec4e8c:	33 ff                                           	xor    edi,edi
  ec4e8e:	8b cf                                           	mov    ecx,edi
  ec4e90:	e8 eb 66 90 ff                                  	call   0x7cb580
  ec4e95:	8b 06                                           	mov    eax,DWORD PTR [esi]
  ec4e97:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  ec4e9d:	6a 40                                           	push   0x40
  ec4e9f:	57                                              	push   edi
  ec4ea0:	8b ce                                           	mov    ecx,esi
  ec4ea2:	ff d2                                           	call   edx
  ec4ea4:	5f                                              	pop    edi
  ec4ea5:	5e                                              	pop    esi
  ec4ea6:	c3                                              	ret
  ec4ea7:	cc                                              	int3
  ec4ea8:	cc                                              	int3
  ec4ea9:	cc                                              	int3
  ec4eaa:	cc                                              	int3
  ec4eab:	cc                                              	int3
  ec4eac:	cc                                              	int3
  ec4ead:	cc                                              	int3
  ec4eae:	cc                                              	int3
  ec4eaf:	cc                                              	int3
