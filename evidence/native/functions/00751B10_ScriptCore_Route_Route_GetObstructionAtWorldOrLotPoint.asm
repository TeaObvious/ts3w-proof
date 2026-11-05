# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751b10 (ScriptCore.Route::Route_GetObstructionAtWorldOrLotPoint)
Paired Ghidra pseudocode: 00751B10_ScriptCore_Route_Route_GetObstructionAtWorldOrLotPoint.c
Window: [0x00751b10, 0x00751bf0) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x00751bf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751b10: 8b 0d c4 50 1d 01 83 ec 30 53 33 db 3b cb 56 0f
00751b20: 84 b3 00 00 00 8b 44 24 3c 50 e8 81 99 ff ff 8b
00751b30: f0 3b f3 0f 84 9f 00 00 00 8b 16 8b 42 10 8b ce
00751b40: ff d0 e8 a9 71 0d 00 3b c3 0f 84 80 00 00 00 8b
00751b50: c8 e8 aa 7a 0d 00 3b c3 74 75 d9 44 24 48 8b 56
00751b60: 3c 57 53 83 ec 0c d9 5c 24 08 8d 8e 58 01 00 00
00751b70: d9 44 24 58 89 4c 24 44 8b 4e 40 d9 5c 24 04 d9
00751b80: 44 24 54 89 4c 24 24 8d 4c 24 1c d9 1c 24 89 54
00751b90: 24 1c 8b 56 44 51 8b c8 89 5c 24 40 c6 44 24 44
00751ba0: 01 88 5c 24 45 89 54 24 2c e8 02 43 f0 ff 8d 4c
00751bb0: 24 0c 8b f8 8b da e8 75 20 ef ff 8b 16 8b 42 14
00751bc0: 8b ce ff d0 8b c7 5f 5e 8b d3 5b 83 c4 30 c3 8b
00751bd0: 16 8b 42 14 8b ce ff d0 5e 33 c0 33 d2 5b 83 c4
00751be0: 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00751b10 <.text+0x350b10>:
  751b10:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751b16:	83 ec 30                                        	sub    esp,0x30
  751b19:	53                                              	push   ebx
  751b1a:	33 db                                           	xor    ebx,ebx
  751b1c:	3b cb                                           	cmp    ecx,ebx
  751b1e:	56                                              	push   esi
  751b1f:	0f 84 b3 00 00 00                               	je     0x751bd8
  751b25:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  751b29:	50                                              	push   eax
  751b2a:	e8 81 99 ff ff                                  	call   0x74b4b0
  751b2f:	8b f0                                           	mov    esi,eax
  751b31:	3b f3                                           	cmp    esi,ebx
  751b33:	0f 84 9f 00 00 00                               	je     0x751bd8
  751b39:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751b3b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  751b3e:	8b ce                                           	mov    ecx,esi
  751b40:	ff d0                                           	call   eax
  751b42:	e8 a9 71 0d 00                                  	call   0x828cf0
  751b47:	3b c3                                           	cmp    eax,ebx
  751b49:	0f 84 80 00 00 00                               	je     0x751bcf
  751b4f:	8b c8                                           	mov    ecx,eax
  751b51:	e8 aa 7a 0d 00                                  	call   0x829600
  751b56:	3b c3                                           	cmp    eax,ebx
  751b58:	74 75                                           	je     0x751bcf
  751b5a:	d9 44 24 48                                     	fld    DWORD PTR [esp+0x48]
  751b5e:	8b 56 3c                                        	mov    edx,DWORD PTR [esi+0x3c]
  751b61:	57                                              	push   edi
  751b62:	53                                              	push   ebx
  751b63:	83 ec 0c                                        	sub    esp,0xc
  751b66:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  751b6a:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  751b70:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
  751b74:	89 4c 24 44                                     	mov    DWORD PTR [esp+0x44],ecx
  751b78:	8b 4e 40                                        	mov    ecx,DWORD PTR [esi+0x40]
  751b7b:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  751b7f:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
  751b83:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  751b87:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  751b8b:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  751b8e:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  751b92:	8b 56 44                                        	mov    edx,DWORD PTR [esi+0x44]
  751b95:	51                                              	push   ecx
  751b96:	8b c8                                           	mov    ecx,eax
  751b98:	89 5c 24 40                                     	mov    DWORD PTR [esp+0x40],ebx
  751b9c:	c6 44 24 44 01                                  	mov    BYTE PTR [esp+0x44],0x1
  751ba1:	88 5c 24 45                                     	mov    BYTE PTR [esp+0x45],bl
  751ba5:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  751ba9:	e8 02 43 f0 ff                                  	call   0x655eb0
  751bae:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  751bb2:	8b f8                                           	mov    edi,eax
  751bb4:	8b da                                           	mov    ebx,edx
  751bb6:	e8 75 20 ef ff                                  	call   0x643c30
  751bbb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751bbd:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751bc0:	8b ce                                           	mov    ecx,esi
  751bc2:	ff d0                                           	call   eax
  751bc4:	8b c7                                           	mov    eax,edi
  751bc6:	5f                                              	pop    edi
  751bc7:	5e                                              	pop    esi
  751bc8:	8b d3                                           	mov    edx,ebx
  751bca:	5b                                              	pop    ebx
  751bcb:	83 c4 30                                        	add    esp,0x30
  751bce:	c3                                              	ret
  751bcf:	8b 16                                           	mov    edx,DWORD PTR [esi]
  751bd1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  751bd4:	8b ce                                           	mov    ecx,esi
  751bd6:	ff d0                                           	call   eax
  751bd8:	5e                                              	pop    esi
  751bd9:	33 c0                                           	xor    eax,eax
  751bdb:	33 d2                                           	xor    edx,edx
  751bdd:	5b                                              	pop    ebx
  751bde:	83 c4 30                                        	add    esp,0x30
  751be1:	c3                                              	ret
  751be2:	cc                                              	int3
  751be3:	cc                                              	int3
  751be4:	cc                                              	int3
  751be5:	cc                                              	int3
  751be6:	cc                                              	int3
  751be7:	cc                                              	int3
  751be8:	cc                                              	int3
  751be9:	cc                                              	int3
  751bea:	cc                                              	int3
  751beb:	cc                                              	int3
  751bec:	cc                                              	int3
  751bed:	cc                                              	int3
  751bee:	cc                                              	int3
  751bef:	cc                                              	int3
