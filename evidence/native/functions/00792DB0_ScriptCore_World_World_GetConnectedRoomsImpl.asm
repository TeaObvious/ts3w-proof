# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00792db0 (ScriptCore.World::World_GetConnectedRoomsImpl)
Paired Ghidra pseudocode: 00792DB0_ScriptCore_World_World_GetConnectedRoomsImpl.c
Window: [0x00792db0, 0x00792e70) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x00792e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00792db0: 83 ec 14 53 33 db 57 89 5c 24 08 e8 d0 65 fd ff
00792dc0: 8b f8 e8 29 5f 09 00 3b c3 0f 84 97 00 00 00 8b
00792dd0: c8 e8 ea 67 09 00 3b c3 0f 84 88 00 00 00 3b fb
00792de0: 0f 84 80 00 00 00 8b 54 24 2c 8d 4c 24 0c 51 8b
00792df0: 4c 24 2c 52 8b 54 24 2c 51 8b 4c 24 2c 52 51 8b
00792e00: c8 89 5c 24 20 89 5c 24 24 89 5c 24 28 c7 44 24
00792e10: 2c dc 1a 01 01 e8 b6 b6 ea ff 84 c0 74 37 8b 17
00792e20: 8b 92 8c 00 00 00 56 8b 74 24 14 2b 74 24 10 8d
00792e30: 44 24 0c c1 fe 02 56 50 8b cf ff d2 8b 4c 24 10
00792e40: 8b 07 8b 80 a4 00 00 00 56 53 51 8d 54 24 18 52
00792e50: 8b cf ff d0 5e 8b 44 24 0c 3b c3 74 09 50 e8 7d
00792e60: 16 d5 ff 83 c4 04 8b 44 24 08 5f 5b 83 c4 14 c3

LINEAR DISASSEMBLY
00792db0 <.text+0x391db0>:
  792db0:	83 ec 14                                        	sub    esp,0x14
  792db3:	53                                              	push   ebx
  792db4:	33 db                                           	xor    ebx,ebx
  792db6:	57                                              	push   edi
  792db7:	89 5c 24 08                                     	mov    DWORD PTR [esp+0x8],ebx
  792dbb:	e8 d0 65 fd ff                                  	call   0x769390
  792dc0:	8b f8                                           	mov    edi,eax
  792dc2:	e8 29 5f 09 00                                  	call   0x828cf0
  792dc7:	3b c3                                           	cmp    eax,ebx
  792dc9:	0f 84 97 00 00 00                               	je     0x792e66
  792dcf:	8b c8                                           	mov    ecx,eax
  792dd1:	e8 ea 67 09 00                                  	call   0x8295c0
  792dd6:	3b c3                                           	cmp    eax,ebx
  792dd8:	0f 84 88 00 00 00                               	je     0x792e66
  792dde:	3b fb                                           	cmp    edi,ebx
  792de0:	0f 84 80 00 00 00                               	je     0x792e66
  792de6:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  792dea:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  792dee:	51                                              	push   ecx
  792def:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  792df3:	52                                              	push   edx
  792df4:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  792df8:	51                                              	push   ecx
  792df9:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  792dfd:	52                                              	push   edx
  792dfe:	51                                              	push   ecx
  792dff:	8b c8                                           	mov    ecx,eax
  792e01:	89 5c 24 20                                     	mov    DWORD PTR [esp+0x20],ebx
  792e05:	89 5c 24 24                                     	mov    DWORD PTR [esp+0x24],ebx
  792e09:	89 5c 24 28                                     	mov    DWORD PTR [esp+0x28],ebx
  792e0d:	c7 44 24 2c dc 1a 01 01                         	mov    DWORD PTR [esp+0x2c],0x1011adc
  792e15:	e8 b6 b6 ea ff                                  	call   0x63e4d0
  792e1a:	84 c0                                           	test   al,al
  792e1c:	74 37                                           	je     0x792e55
  792e1e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  792e20:	8b 92 8c 00 00 00                               	mov    edx,DWORD PTR [edx+0x8c]
  792e26:	56                                              	push   esi
  792e27:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  792e2b:	2b 74 24 10                                     	sub    esi,DWORD PTR [esp+0x10]
  792e2f:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  792e33:	c1 fe 02                                        	sar    esi,0x2
  792e36:	56                                              	push   esi
  792e37:	50                                              	push   eax
  792e38:	8b cf                                           	mov    ecx,edi
  792e3a:	ff d2                                           	call   edx
  792e3c:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  792e40:	8b 07                                           	mov    eax,DWORD PTR [edi]
  792e42:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
  792e48:	56                                              	push   esi
  792e49:	53                                              	push   ebx
  792e4a:	51                                              	push   ecx
  792e4b:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  792e4f:	52                                              	push   edx
  792e50:	8b cf                                           	mov    ecx,edi
  792e52:	ff d0                                           	call   eax
  792e54:	5e                                              	pop    esi
  792e55:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  792e59:	3b c3                                           	cmp    eax,ebx
  792e5b:	74 09                                           	je     0x792e66
  792e5d:	50                                              	push   eax
  792e5e:	e8 7d 16 d5 ff                                  	call   0x4e44e0
  792e63:	83 c4 04                                        	add    esp,0x4
  792e66:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  792e6a:	5f                                              	pop    edi
  792e6b:	5b                                              	pop    ebx
  792e6c:	83 c4 14                                        	add    esp,0x14
  792e6f:	c3                                              	ret
