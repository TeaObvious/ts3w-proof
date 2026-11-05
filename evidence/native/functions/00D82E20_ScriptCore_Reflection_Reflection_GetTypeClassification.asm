# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00d82e20 (ScriptCore.Reflection::Reflection_GetTypeClassification)
Paired Ghidra pseudocode: 00D82E20_ScriptCore_Reflection_Reflection_GetTypeClassification.c
Window: [0x00d82e20, 0x00d82f10) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00d82f10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00d82e20: 8b 44 24 04 85 c0 75 01 c3 53 8b 58 04 57 53 e8
00d82e30: 0c e2 0e 00 8b f8 83 c4 04 85 ff 75 03 5f 5b c3
00d82e40: f6 47 60 20 56 75 3e 8a 87 a6 00 00 00 3c 13 74
00d82e50: 34 3c 1e 74 30 57 e8 75 8b 0e 00 83 c4 04 8b f0
00d82e60: f7 de 1b f6 83 e6 f4 83 c6 10 80 7f 10 00 74 03
00d82e70: 83 ce 02 57 e8 67 8b 0e 00 83 c4 04 85 c0 74 0a
00d82e80: 83 ce 01 eb 05 be 08 00 00 00 f6 47 60 80 74 03
00d82e90: 83 ce 20 f7 43 04 00 00 00 40 75 16 8a 43 06 3c
00d82ea0: 02 72 04 3c 0d 76 08 3c 18 74 04 3c 19 75 03 83
00d82eb0: ce 40 80 7b 06 0f 75 06 81 ce 80 00 00 00 53 e8
00d82ec0: 5c b1 11 00 83 c4 04 85 c0 74 0c 81 ce 00 01 00
00d82ed0: 00 8b c6 5e 5f 5b c3 83 bf ac 00 00 00 00 74 0c
00d82ee0: 81 ce 00 06 00 00 8b c6 5e 5f 5b c3 83 bf a8 00
00d82ef0: 00 00 00 74 06 81 ce 00 02 00 00 8b c6 5e 5f 5b
00d82f00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00d82e20 <.text+0x981e20>:
  d82e20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  d82e24:	85 c0                                           	test   eax,eax
  d82e26:	75 01                                           	jne    0xd82e29
  d82e28:	c3                                              	ret
  d82e29:	53                                              	push   ebx
  d82e2a:	8b 58 04                                        	mov    ebx,DWORD PTR [eax+0x4]
  d82e2d:	57                                              	push   edi
  d82e2e:	53                                              	push   ebx
  d82e2f:	e8 0c e2 0e 00                                  	call   0xe71040
  d82e34:	8b f8                                           	mov    edi,eax
  d82e36:	83 c4 04                                        	add    esp,0x4
  d82e39:	85 ff                                           	test   edi,edi
  d82e3b:	75 03                                           	jne    0xd82e40
  d82e3d:	5f                                              	pop    edi
  d82e3e:	5b                                              	pop    ebx
  d82e3f:	c3                                              	ret
  d82e40:	f6 47 60 20                                     	test   BYTE PTR [edi+0x60],0x20
  d82e44:	56                                              	push   esi
  d82e45:	75 3e                                           	jne    0xd82e85
  d82e47:	8a 87 a6 00 00 00                               	mov    al,BYTE PTR [edi+0xa6]
  d82e4d:	3c 13                                           	cmp    al,0x13
  d82e4f:	74 34                                           	je     0xd82e85
  d82e51:	3c 1e                                           	cmp    al,0x1e
  d82e53:	74 30                                           	je     0xd82e85
  d82e55:	57                                              	push   edi
  d82e56:	e8 75 8b 0e 00                                  	call   0xe6b9d0
  d82e5b:	83 c4 04                                        	add    esp,0x4
  d82e5e:	8b f0                                           	mov    esi,eax
  d82e60:	f7 de                                           	neg    esi
  d82e62:	1b f6                                           	sbb    esi,esi
  d82e64:	83 e6 f4                                        	and    esi,0xfffffff4
  d82e67:	83 c6 10                                        	add    esi,0x10
  d82e6a:	80 7f 10 00                                     	cmp    BYTE PTR [edi+0x10],0x0
  d82e6e:	74 03                                           	je     0xd82e73
  d82e70:	83 ce 02                                        	or     esi,0x2
  d82e73:	57                                              	push   edi
  d82e74:	e8 67 8b 0e 00                                  	call   0xe6b9e0
  d82e79:	83 c4 04                                        	add    esp,0x4
  d82e7c:	85 c0                                           	test   eax,eax
  d82e7e:	74 0a                                           	je     0xd82e8a
  d82e80:	83 ce 01                                        	or     esi,0x1
  d82e83:	eb 05                                           	jmp    0xd82e8a
  d82e85:	be 08 00 00 00                                  	mov    esi,0x8
  d82e8a:	f6 47 60 80                                     	test   BYTE PTR [edi+0x60],0x80
  d82e8e:	74 03                                           	je     0xd82e93
  d82e90:	83 ce 20                                        	or     esi,0x20
  d82e93:	f7 43 04 00 00 00 40                            	test   DWORD PTR [ebx+0x4],0x40000000
  d82e9a:	75 16                                           	jne    0xd82eb2
  d82e9c:	8a 43 06                                        	mov    al,BYTE PTR [ebx+0x6]
  d82e9f:	3c 02                                           	cmp    al,0x2
  d82ea1:	72 04                                           	jb     0xd82ea7
  d82ea3:	3c 0d                                           	cmp    al,0xd
  d82ea5:	76 08                                           	jbe    0xd82eaf
  d82ea7:	3c 18                                           	cmp    al,0x18
  d82ea9:	74 04                                           	je     0xd82eaf
  d82eab:	3c 19                                           	cmp    al,0x19
  d82ead:	75 03                                           	jne    0xd82eb2
  d82eaf:	83 ce 40                                        	or     esi,0x40
  d82eb2:	80 7b 06 0f                                     	cmp    BYTE PTR [ebx+0x6],0xf
  d82eb6:	75 06                                           	jne    0xd82ebe
  d82eb8:	81 ce 80 00 00 00                               	or     esi,0x80
  d82ebe:	53                                              	push   ebx
  d82ebf:	e8 5c b1 11 00                                  	call   0xe9e020
  d82ec4:	83 c4 04                                        	add    esp,0x4
  d82ec7:	85 c0                                           	test   eax,eax
  d82ec9:	74 0c                                           	je     0xd82ed7
  d82ecb:	81 ce 00 01 00 00                               	or     esi,0x100
  d82ed1:	8b c6                                           	mov    eax,esi
  d82ed3:	5e                                              	pop    esi
  d82ed4:	5f                                              	pop    edi
  d82ed5:	5b                                              	pop    ebx
  d82ed6:	c3                                              	ret
  d82ed7:	83 bf ac 00 00 00 00                            	cmp    DWORD PTR [edi+0xac],0x0
  d82ede:	74 0c                                           	je     0xd82eec
  d82ee0:	81 ce 00 06 00 00                               	or     esi,0x600
  d82ee6:	8b c6                                           	mov    eax,esi
  d82ee8:	5e                                              	pop    esi
  d82ee9:	5f                                              	pop    edi
  d82eea:	5b                                              	pop    ebx
  d82eeb:	c3                                              	ret
  d82eec:	83 bf a8 00 00 00 00                            	cmp    DWORD PTR [edi+0xa8],0x0
  d82ef3:	74 06                                           	je     0xd82efb
  d82ef5:	81 ce 00 02 00 00                               	or     esi,0x200
  d82efb:	8b c6                                           	mov    eax,esi
  d82efd:	5e                                              	pop    esi
  d82efe:	5f                                              	pop    edi
  d82eff:	5b                                              	pop    ebx
  d82f00:	c3                                              	ret
  d82f01:	cc                                              	int3
  d82f02:	cc                                              	int3
  d82f03:	cc                                              	int3
  d82f04:	cc                                              	int3
  d82f05:	cc                                              	int3
  d82f06:	cc                                              	int3
  d82f07:	cc                                              	int3
  d82f08:	cc                                              	int3
  d82f09:	cc                                              	int3
  d82f0a:	cc                                              	int3
  d82f0b:	cc                                              	int3
  d82f0c:	cc                                              	int3
  d82f0d:	cc                                              	int3
  d82f0e:	cc                                              	int3
  d82f0f:	cc                                              	int3
