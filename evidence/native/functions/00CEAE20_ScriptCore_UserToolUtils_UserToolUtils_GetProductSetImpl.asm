# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceae20 (ScriptCore.UserToolUtils::UserToolUtils_GetProductSetImpl)
Paired Ghidra pseudocode: 00CEAE20_ScriptCore_UserToolUtils_UserToolUtils_GetProductSetImpl.c
Window: [0x00ceae20, 0x00ceaf30) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceaf30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceae20: 8b 54 24 04 83 ec 24 83 fa 14 76 0b 83 fa 17 74
00ceae30: 06 33 c0 83 c4 24 c3 8b 0d 34 e0 1e 01 55 33 ed
00ceae40: 3b cd 0f 84 d2 00 00 00 53 56 b8 2c 17 08 01 57
00ceae50: 89 44 24 30 89 44 24 20 8d 44 24 24 50 33 ff 33
00ceae60: f6 52 89 6c 24 2c 89 6c 24 30 89 6c 24 34 89 7c
00ceae70: 24 1c 89 74 24 20 89 6c 24 24 e8 71 61 fa ff 8b
00ceae80: 44 24 24 3b 44 24 28 8b d8 74 52 8b 7c 24 3c 90
00ceae90: 8b 0b 3b cd 89 4c 24 10 74 36 3b fd 74 32 3b b9
00ceaea0: 80 00 00 00 75 2a 3b 74 24 1c 73 11 8b c6 83 c6
00ceaeb0: 04 3b c5 89 74 24 18 74 17 89 08 eb 13 8d 4c 24
00ceaec0: 10 51 56 8d 4c 24 1c e8 54 75 c9 ff 8b 74 24 18
00ceaed0: 83 c3 04 3b 5c 24 28 75 b7 8b 7c 24 14 8b 54 24
00ceaee0: 38 55 52 8d 44 24 1c 50 e8 33 f9 ff ff 83 c4 0c
00ceaef0: 3b fd 8b f0 74 09 57 e8 e4 95 7f ff 83 c4 04 8b
00ceaf00: 44 24 24 3b c5 74 09 50 e8 d3 95 7f ff 83 c4 04
00ceaf10: 5f 8b c6 5e 5b 5d 83 c4 24 c3 33 c0 5d 83 c4 24
00ceaf20: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ceae20 <.text+0x8e9e20>:
  ceae20:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ceae24:	83 ec 24                                        	sub    esp,0x24
  ceae27:	83 fa 14                                        	cmp    edx,0x14
  ceae2a:	76 0b                                           	jbe    0xceae37
  ceae2c:	83 fa 17                                        	cmp    edx,0x17
  ceae2f:	74 06                                           	je     0xceae37
  ceae31:	33 c0                                           	xor    eax,eax
  ceae33:	83 c4 24                                        	add    esp,0x24
  ceae36:	c3                                              	ret
  ceae37:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  ceae3d:	55                                              	push   ebp
  ceae3e:	33 ed                                           	xor    ebp,ebp
  ceae40:	3b cd                                           	cmp    ecx,ebp
  ceae42:	0f 84 d2 00 00 00                               	je     0xceaf1a
  ceae48:	53                                              	push   ebx
  ceae49:	56                                              	push   esi
  ceae4a:	b8 2c 17 08 01                                  	mov    eax,0x108172c
  ceae4f:	57                                              	push   edi
  ceae50:	89 44 24 30                                     	mov    DWORD PTR [esp+0x30],eax
  ceae54:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  ceae58:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  ceae5c:	50                                              	push   eax
  ceae5d:	33 ff                                           	xor    edi,edi
  ceae5f:	33 f6                                           	xor    esi,esi
  ceae61:	52                                              	push   edx
  ceae62:	89 6c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ebp
  ceae66:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  ceae6a:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  ceae6e:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  ceae72:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
  ceae76:	89 6c 24 24                                     	mov    DWORD PTR [esp+0x24],ebp
  ceae7a:	e8 71 61 fa ff                                  	call   0xc90ff0
  ceae7f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  ceae83:	3b 44 24 28                                     	cmp    eax,DWORD PTR [esp+0x28]
  ceae87:	8b d8                                           	mov    ebx,eax
  ceae89:	74 52                                           	je     0xceaedd
  ceae8b:	8b 7c 24 3c                                     	mov    edi,DWORD PTR [esp+0x3c]
  ceae8f:	90                                              	nop
  ceae90:	8b 0b                                           	mov    ecx,DWORD PTR [ebx]
  ceae92:	3b cd                                           	cmp    ecx,ebp
  ceae94:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  ceae98:	74 36                                           	je     0xceaed0
  ceae9a:	3b fd                                           	cmp    edi,ebp
  ceae9c:	74 32                                           	je     0xceaed0
  ceae9e:	3b b9 80 00 00 00                               	cmp    edi,DWORD PTR [ecx+0x80]
  ceaea4:	75 2a                                           	jne    0xceaed0
  ceaea6:	3b 74 24 1c                                     	cmp    esi,DWORD PTR [esp+0x1c]
  ceaeaa:	73 11                                           	jae    0xceaebd
  ceaeac:	8b c6                                           	mov    eax,esi
  ceaeae:	83 c6 04                                        	add    esi,0x4
  ceaeb1:	3b c5                                           	cmp    eax,ebp
  ceaeb3:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  ceaeb7:	74 17                                           	je     0xceaed0
  ceaeb9:	89 08                                           	mov    DWORD PTR [eax],ecx
  ceaebb:	eb 13                                           	jmp    0xceaed0
  ceaebd:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ceaec1:	51                                              	push   ecx
  ceaec2:	56                                              	push   esi
  ceaec3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  ceaec7:	e8 54 75 c9 ff                                  	call   0x982420
  ceaecc:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  ceaed0:	83 c3 04                                        	add    ebx,0x4
  ceaed3:	3b 5c 24 28                                     	cmp    ebx,DWORD PTR [esp+0x28]
  ceaed7:	75 b7                                           	jne    0xceae90
  ceaed9:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  ceaedd:	8b 54 24 38                                     	mov    edx,DWORD PTR [esp+0x38]
  ceaee1:	55                                              	push   ebp
  ceaee2:	52                                              	push   edx
  ceaee3:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  ceaee7:	50                                              	push   eax
  ceaee8:	e8 33 f9 ff ff                                  	call   0xcea820
  ceaeed:	83 c4 0c                                        	add    esp,0xc
  ceaef0:	3b fd                                           	cmp    edi,ebp
  ceaef2:	8b f0                                           	mov    esi,eax
  ceaef4:	74 09                                           	je     0xceaeff
  ceaef6:	57                                              	push   edi
  ceaef7:	e8 e4 95 7f ff                                  	call   0x4e44e0
  ceaefc:	83 c4 04                                        	add    esp,0x4
  ceaeff:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  ceaf03:	3b c5                                           	cmp    eax,ebp
  ceaf05:	74 09                                           	je     0xceaf10
  ceaf07:	50                                              	push   eax
  ceaf08:	e8 d3 95 7f ff                                  	call   0x4e44e0
  ceaf0d:	83 c4 04                                        	add    esp,0x4
  ceaf10:	5f                                              	pop    edi
  ceaf11:	8b c6                                           	mov    eax,esi
  ceaf13:	5e                                              	pop    esi
  ceaf14:	5b                                              	pop    ebx
  ceaf15:	5d                                              	pop    ebp
  ceaf16:	83 c4 24                                        	add    esp,0x24
  ceaf19:	c3                                              	ret
  ceaf1a:	33 c0                                           	xor    eax,eax
  ceaf1c:	5d                                              	pop    ebp
  ceaf1d:	83 c4 24                                        	add    esp,0x24
  ceaf20:	c3                                              	ret
  ceaf21:	cc                                              	int3
  ceaf22:	cc                                              	int3
  ceaf23:	cc                                              	int3
  ceaf24:	cc                                              	int3
  ceaf25:	cc                                              	int3
  ceaf26:	cc                                              	int3
  ceaf27:	cc                                              	int3
  ceaf28:	cc                                              	int3
  ceaf29:	cc                                              	int3
  ceaf2a:	cc                                              	int3
  ceaf2b:	cc                                              	int3
  ceaf2c:	cc                                              	int3
  ceaf2d:	cc                                              	int3
  ceaf2e:	cc                                              	int3
  ceaf2f:	cc                                              	int3
