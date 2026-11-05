# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec4dc0 (ScriptCore.GameUtils::GameUtils_WorldFileSearchFreeSearchImpl)
Paired Ghidra pseudocode: 00EC4DC0_ScriptCore_GameUtils_GameUtils_WorldFileSearchFreeSearchImpl.c
Window: [0x00ec4dc0, 0x00ec4e40) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec4e40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec4dc0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00ec4dd0: 40 75 5d 57 e8 b7 45 8a ff 8b 10 8b c8 8b 82 cc
00ec4de0: 00 00 00 56 ff d0 8b f8 85 ff 74 43 e8 9f 45 8a
00ec4df0: ff 8b 10 8b c8 8b 82 d8 00 00 00 56 ff d0 8b 4f
00ec4e00: 24 8b 57 20 8d 77 20 51 52 8b ce e8 60 b7 dd ff
00ec4e10: 8b 36 85 f6 74 09 56 e8 c4 f6 61 ff 83 c4 04 8b
00ec4e20: cf e8 9a 20 59 ff 57 e8 b4 f6 61 ff 83 c4 04 5f
00ec4e30: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec4dc0 <.text+0xac3dc0>:
  ec4dc0:	56                                              	push   esi
  ec4dc1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec4dc5:	8b c6                                           	mov    eax,esi
  ec4dc7:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec4dcc:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec4dd1:	75 5d                                           	jne    0xec4e30
  ec4dd3:	57                                              	push   edi
  ec4dd4:	e8 b7 45 8a ff                                  	call   0x769390
  ec4dd9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec4ddb:	8b c8                                           	mov    ecx,eax
  ec4ddd:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec4de3:	56                                              	push   esi
  ec4de4:	ff d0                                           	call   eax
  ec4de6:	8b f8                                           	mov    edi,eax
  ec4de8:	85 ff                                           	test   edi,edi
  ec4dea:	74 43                                           	je     0xec4e2f
  ec4dec:	e8 9f 45 8a ff                                  	call   0x769390
  ec4df1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec4df3:	8b c8                                           	mov    ecx,eax
  ec4df5:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  ec4dfb:	56                                              	push   esi
  ec4dfc:	ff d0                                           	call   eax
  ec4dfe:	8b 4f 24                                        	mov    ecx,DWORD PTR [edi+0x24]
  ec4e01:	8b 57 20                                        	mov    edx,DWORD PTR [edi+0x20]
  ec4e04:	8d 77 20                                        	lea    esi,[edi+0x20]
  ec4e07:	51                                              	push   ecx
  ec4e08:	52                                              	push   edx
  ec4e09:	8b ce                                           	mov    ecx,esi
  ec4e0b:	e8 60 b7 dd ff                                  	call   0xca0570
  ec4e10:	8b 36                                           	mov    esi,DWORD PTR [esi]
  ec4e12:	85 f6                                           	test   esi,esi
  ec4e14:	74 09                                           	je     0xec4e1f
  ec4e16:	56                                              	push   esi
  ec4e17:	e8 c4 f6 61 ff                                  	call   0x4e44e0
  ec4e1c:	83 c4 04                                        	add    esp,0x4
  ec4e1f:	8b cf                                           	mov    ecx,edi
  ec4e21:	e8 9a 20 59 ff                                  	call   0x456ec0
  ec4e26:	57                                              	push   edi
  ec4e27:	e8 b4 f6 61 ff                                  	call   0x4e44e0
  ec4e2c:	83 c4 04                                        	add    esp,0x4
  ec4e2f:	5f                                              	pop    edi
  ec4e30:	5e                                              	pop    esi
  ec4e31:	c3                                              	ret
  ec4e32:	cc                                              	int3
  ec4e33:	cc                                              	int3
  ec4e34:	cc                                              	int3
  ec4e35:	cc                                              	int3
  ec4e36:	cc                                              	int3
  ec4e37:	cc                                              	int3
  ec4e38:	cc                                              	int3
  ec4e39:	cc                                              	int3
  ec4e3a:	cc                                              	int3
  ec4e3b:	cc                                              	int3
  ec4e3c:	cc                                              	int3
  ec4e3d:	cc                                              	int3
  ec4e3e:	cc                                              	int3
  ec4e3f:	cc                                              	int3
