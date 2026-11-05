# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00795bf0 (ScriptCore.World::World_GetLotDescription)
Paired Ghidra pseudocode: 00795BF0_ScriptCore_World_World_GetLotDescription.c
Window: [0x00795bf0, 0x00795cf0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00795bf0: 8b 0d c4 db 1e 01 83 ec 34 85 c9 56 57 74 15 8b
00795c00: 44 24 44 8b 54 24 40 6a 00 50 52 e8 00 cc 4c 00
00795c10: 8b f8 eb 02 33 ff e8 75 37 fd ff 85 ff 8b f0 0f
00795c20: 84 b5 00 00 00 85 f6 0f 84 ad 00 00 00 b8 54 8e
00795c30: 1c 01 89 44 24 0c 89 44 24 10 8d 44 24 0c 50 8b
00795c40: cf c7 44 24 1c 18 1c 01 01 c7 44 24 18 56 8e 1c
00795c50: 01 e8 ca 76 32 00 6a 01 6a 10 8d 4c 24 14 51 6a
00795c60: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00795c70: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 3e fd
00795c80: d5 ff 8b 16 8b 52 50 8d 44 24 08 50 8d 4c 24 20
00795c90: 51 8b ce ff d2 f6 44 24 24 04 8b 74 24 08 c7 44
00795ca0: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 ad
00795cb0: fa d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe
00795cc0: 83 f9 02 7e 0d 85 c0 74 09 50 e8 11 e8 d4 ff 83
00795cd0: c4 04 5f 8b c6 5e 83 c4 34 c3 5f 33 c0 5e 83 c4
00795ce0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00795bf0 <.text+0x394bf0>:
  795bf0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  795bf6:	83 ec 34                                        	sub    esp,0x34
  795bf9:	85 c9                                           	test   ecx,ecx
  795bfb:	56                                              	push   esi
  795bfc:	57                                              	push   edi
  795bfd:	74 15                                           	je     0x795c14
  795bff:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  795c03:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  795c07:	6a 00                                           	push   0x0
  795c09:	50                                              	push   eax
  795c0a:	52                                              	push   edx
  795c0b:	e8 00 cc 4c 00                                  	call   0xc62810
  795c10:	8b f8                                           	mov    edi,eax
  795c12:	eb 02                                           	jmp    0x795c16
  795c14:	33 ff                                           	xor    edi,edi
  795c16:	e8 75 37 fd ff                                  	call   0x769390
  795c1b:	85 ff                                           	test   edi,edi
  795c1d:	8b f0                                           	mov    esi,eax
  795c1f:	0f 84 b5 00 00 00                               	je     0x795cda
  795c25:	85 f6                                           	test   esi,esi
  795c27:	0f 84 ad 00 00 00                               	je     0x795cda
  795c2d:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  795c32:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  795c36:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  795c3a:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  795c3e:	50                                              	push   eax
  795c3f:	8b cf                                           	mov    ecx,edi
  795c41:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795c49:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795c51:	e8 ca 76 32 00                                  	call   0xabd320
  795c56:	6a 01                                           	push   0x1
  795c58:	6a 10                                           	push   0x10
  795c5a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  795c5e:	51                                              	push   ecx
  795c5f:	6a 09                                           	push   0x9
  795c61:	6a 13                                           	push   0x13
  795c63:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795c67:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  795c6f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  795c76:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  795c7d:	e8 3e fd d5 ff                                  	call   0x4f59c0
  795c82:	8b 16                                           	mov    edx,DWORD PTR [esi]
  795c84:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  795c87:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  795c8b:	50                                              	push   eax
  795c8c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795c90:	51                                              	push   ecx
  795c91:	8b ce                                           	mov    ecx,esi
  795c93:	ff d2                                           	call   edx
  795c95:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795c9a:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  795c9e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  795ca6:	74 0b                                           	je     0x795cb3
  795ca8:	6a 00                                           	push   0x0
  795caa:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795cae:	e8 ad fa d5 ff                                  	call   0x4f5760
  795cb3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  795cb7:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795cbb:	2b c8                                           	sub    ecx,eax
  795cbd:	83 e1 fe                                        	and    ecx,0xfffffffe
  795cc0:	83 f9 02                                        	cmp    ecx,0x2
  795cc3:	7e 0d                                           	jle    0x795cd2
  795cc5:	85 c0                                           	test   eax,eax
  795cc7:	74 09                                           	je     0x795cd2
  795cc9:	50                                              	push   eax
  795cca:	e8 11 e8 d4 ff                                  	call   0x4e44e0
  795ccf:	83 c4 04                                        	add    esp,0x4
  795cd2:	5f                                              	pop    edi
  795cd3:	8b c6                                           	mov    eax,esi
  795cd5:	5e                                              	pop    esi
  795cd6:	83 c4 34                                        	add    esp,0x34
  795cd9:	c3                                              	ret
  795cda:	5f                                              	pop    edi
  795cdb:	33 c0                                           	xor    eax,eax
  795cdd:	5e                                              	pop    esi
  795cde:	83 c4 34                                        	add    esp,0x34
  795ce1:	c3                                              	ret
  795ce2:	cc                                              	int3
  795ce3:	cc                                              	int3
  795ce4:	cc                                              	int3
  795ce5:	cc                                              	int3
  795ce6:	cc                                              	int3
  795ce7:	cc                                              	int3
  795ce8:	cc                                              	int3
  795ce9:	cc                                              	int3
  795cea:	cc                                              	int3
  795ceb:	cc                                              	int3
  795cec:	cc                                              	int3
  795ced:	cc                                              	int3
  795cee:	cc                                              	int3
  795cef:	cc                                              	int3
