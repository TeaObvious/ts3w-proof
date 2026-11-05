# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007959b0 (ScriptCore.World::World_GetLotName)
Paired Ghidra pseudocode: 007959B0_ScriptCore_World_World_GetLotName.c
Window: [0x007959b0, 0x00795ab0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00795ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007959b0: 8b 0d c4 db 1e 01 83 ec 34 85 c9 56 57 74 15 8b
007959c0: 44 24 44 8b 54 24 40 6a 00 50 52 e8 40 ce 4c 00
007959d0: 8b f8 eb 02 33 ff e8 b5 39 fd ff 85 ff 8b f0 0f
007959e0: 84 b5 00 00 00 85 f6 0f 84 ad 00 00 00 b8 54 8e
007959f0: 1c 01 89 44 24 0c 89 44 24 10 8d 44 24 0c 50 8b
00795a00: cf c7 44 24 1c 18 1c 01 01 c7 44 24 18 56 8e 1c
00795a10: 01 e8 2a 77 32 00 6a 01 6a 10 8d 4c 24 14 51 6a
00795a20: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00795a30: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 7e ff
00795a40: d5 ff 8b 16 8b 52 50 8d 44 24 08 50 8d 4c 24 20
00795a50: 51 8b ce ff d2 f6 44 24 24 04 8b 74 24 08 c7 44
00795a60: 24 1c f4 a6 fb 00 74 0b 6a 00 8d 4c 24 20 e8 ed
00795a70: fc d5 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe
00795a80: 83 f9 02 7e 0d 85 c0 74 09 50 e8 51 ea d4 ff 83
00795a90: c4 04 5f 8b c6 5e 83 c4 34 c3 5f 33 c0 5e 83 c4
00795aa0: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007959b0 <.text+0x3949b0>:
  7959b0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7959b6:	83 ec 34                                        	sub    esp,0x34
  7959b9:	85 c9                                           	test   ecx,ecx
  7959bb:	56                                              	push   esi
  7959bc:	57                                              	push   edi
  7959bd:	74 15                                           	je     0x7959d4
  7959bf:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  7959c3:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  7959c7:	6a 00                                           	push   0x0
  7959c9:	50                                              	push   eax
  7959ca:	52                                              	push   edx
  7959cb:	e8 40 ce 4c 00                                  	call   0xc62810
  7959d0:	8b f8                                           	mov    edi,eax
  7959d2:	eb 02                                           	jmp    0x7959d6
  7959d4:	33 ff                                           	xor    edi,edi
  7959d6:	e8 b5 39 fd ff                                  	call   0x769390
  7959db:	85 ff                                           	test   edi,edi
  7959dd:	8b f0                                           	mov    esi,eax
  7959df:	0f 84 b5 00 00 00                               	je     0x795a9a
  7959e5:	85 f6                                           	test   esi,esi
  7959e7:	0f 84 ad 00 00 00                               	je     0x795a9a
  7959ed:	b8 54 8e 1c 01                                  	mov    eax,0x11c8e54
  7959f2:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7959f6:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  7959fa:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  7959fe:	50                                              	push   eax
  7959ff:	8b cf                                           	mov    ecx,edi
  795a01:	c7 44 24 1c 18 1c 01 01                         	mov    DWORD PTR [esp+0x1c],0x1011c18
  795a09:	c7 44 24 18 56 8e 1c 01                         	mov    DWORD PTR [esp+0x18],0x11c8e56
  795a11:	e8 2a 77 32 00                                  	call   0xabd140
  795a16:	6a 01                                           	push   0x1
  795a18:	6a 10                                           	push   0x10
  795a1a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  795a1e:	51                                              	push   ecx
  795a1f:	6a 09                                           	push   0x9
  795a21:	6a 13                                           	push   0x13
  795a23:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  795a27:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  795a2f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  795a36:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  795a3d:	e8 7e ff d5 ff                                  	call   0x4f59c0
  795a42:	8b 16                                           	mov    edx,DWORD PTR [esi]
  795a44:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  795a47:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  795a4b:	50                                              	push   eax
  795a4c:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795a50:	51                                              	push   ecx
  795a51:	8b ce                                           	mov    ecx,esi
  795a53:	ff d2                                           	call   edx
  795a55:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  795a5a:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  795a5e:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  795a66:	74 0b                                           	je     0x795a73
  795a68:	6a 00                                           	push   0x0
  795a6a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  795a6e:	e8 ed fc d5 ff                                  	call   0x4f5760
  795a73:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  795a77:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  795a7b:	2b c8                                           	sub    ecx,eax
  795a7d:	83 e1 fe                                        	and    ecx,0xfffffffe
  795a80:	83 f9 02                                        	cmp    ecx,0x2
  795a83:	7e 0d                                           	jle    0x795a92
  795a85:	85 c0                                           	test   eax,eax
  795a87:	74 09                                           	je     0x795a92
  795a89:	50                                              	push   eax
  795a8a:	e8 51 ea d4 ff                                  	call   0x4e44e0
  795a8f:	83 c4 04                                        	add    esp,0x4
  795a92:	5f                                              	pop    edi
  795a93:	8b c6                                           	mov    eax,esi
  795a95:	5e                                              	pop    esi
  795a96:	83 c4 34                                        	add    esp,0x34
  795a99:	c3                                              	ret
  795a9a:	5f                                              	pop    edi
  795a9b:	33 c0                                           	xor    eax,eax
  795a9d:	5e                                              	pop    esi
  795a9e:	83 c4 34                                        	add    esp,0x34
  795aa1:	c3                                              	ret
  795aa2:	cc                                              	int3
  795aa3:	cc                                              	int3
  795aa4:	cc                                              	int3
  795aa5:	cc                                              	int3
  795aa6:	cc                                              	int3
  795aa7:	cc                                              	int3
  795aa8:	cc                                              	int3
  795aa9:	cc                                              	int3
  795aaa:	cc                                              	int3
  795aab:	cc                                              	int3
  795aac:	cc                                              	int3
  795aad:	cc                                              	int3
  795aae:	cc                                              	int3
  795aaf:	cc                                              	int3
