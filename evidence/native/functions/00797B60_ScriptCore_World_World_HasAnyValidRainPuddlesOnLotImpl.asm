# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797b60 (ScriptCore.World::World_HasAnyValidRainPuddlesOnLotImpl)
Paired Ghidra pseudocode: 00797B60_ScriptCore_World_World_HasAnyValidRainPuddlesOnLotImpl.c
Window: [0x00797b60, 0x00797bf0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797b60: 83 ec 10 56 8b 35 c4 db 1e 01 85 f6 57 74 62 8b
00797b70: 44 24 20 8b 4c 24 1c 6a 00 50 51 8b ce e8 8e ac
00797b80: 4c 00 8b f8 85 ff 74 49 8b 4e 74 85 c9 74 42 e8
00797b90: 4c 1f 5d 00 84 c0 74 39 8d 54 24 08 52 8b cf c7
00797ba0: 44 24 0c 00 00 00 00 c7 44 24 10 00 00 00 00 c7
00797bb0: 44 24 14 00 00 00 00 c7 44 24 18 d0 1c 01 01 e8
00797bc0: bc 86 31 00 84 c0 8d 4c 24 08 75 0d e8 df fa ff
00797bd0: ff 5f 32 c0 5e 83 c4 10 c3 e8 d2 fa ff ff 5f b0
00797be0: 01 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00797b60 <.text+0x396b60>:
  797b60:	83 ec 10                                        	sub    esp,0x10
  797b63:	56                                              	push   esi
  797b64:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  797b6a:	85 f6                                           	test   esi,esi
  797b6c:	57                                              	push   edi
  797b6d:	74 62                                           	je     0x797bd1
  797b6f:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  797b73:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  797b77:	6a 00                                           	push   0x0
  797b79:	50                                              	push   eax
  797b7a:	51                                              	push   ecx
  797b7b:	8b ce                                           	mov    ecx,esi
  797b7d:	e8 8e ac 4c 00                                  	call   0xc62810
  797b82:	8b f8                                           	mov    edi,eax
  797b84:	85 ff                                           	test   edi,edi
  797b86:	74 49                                           	je     0x797bd1
  797b88:	8b 4e 74                                        	mov    ecx,DWORD PTR [esi+0x74]
  797b8b:	85 c9                                           	test   ecx,ecx
  797b8d:	74 42                                           	je     0x797bd1
  797b8f:	e8 4c 1f 5d 00                                  	call   0xd69ae0
  797b94:	84 c0                                           	test   al,al
  797b96:	74 39                                           	je     0x797bd1
  797b98:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  797b9c:	52                                              	push   edx
  797b9d:	8b cf                                           	mov    ecx,edi
  797b9f:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  797ba7:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  797baf:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  797bb7:	c7 44 24 18 d0 1c 01 01                         	mov    DWORD PTR [esp+0x18],0x1011cd0
  797bbf:	e8 bc 86 31 00                                  	call   0xab0280
  797bc4:	84 c0                                           	test   al,al
  797bc6:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  797bca:	75 0d                                           	jne    0x797bd9
  797bcc:	e8 df fa ff ff                                  	call   0x7976b0
  797bd1:	5f                                              	pop    edi
  797bd2:	32 c0                                           	xor    al,al
  797bd4:	5e                                              	pop    esi
  797bd5:	83 c4 10                                        	add    esp,0x10
  797bd8:	c3                                              	ret
  797bd9:	e8 d2 fa ff ff                                  	call   0x7976b0
  797bde:	5f                                              	pop    edi
  797bdf:	b0 01                                           	mov    al,0x1
  797be1:	5e                                              	pop    esi
  797be2:	83 c4 10                                        	add    esp,0x10
  797be5:	c3                                              	ret
  797be6:	cc                                              	int3
  797be7:	cc                                              	int3
  797be8:	cc                                              	int3
  797be9:	cc                                              	int3
  797bea:	cc                                              	int3
  797beb:	cc                                              	int3
  797bec:	cc                                              	int3
  797bed:	cc                                              	int3
  797bee:	cc                                              	int3
  797bef:	cc                                              	int3
