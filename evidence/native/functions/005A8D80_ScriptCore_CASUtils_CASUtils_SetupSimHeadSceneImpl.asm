# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8d80 (ScriptCore.CASUtils::CASUtils_SetupSimHeadSceneImpl)
Paired Ghidra pseudocode: 005A8D80_ScriptCore_CASUtils_CASUtils_SetupSimHeadSceneImpl.c
Window: [0x005a8d80, 0x005a8e20) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8e20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8d80: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a8d90: 30 0f 85 87 00 00 00 e8 f4 05 1c 00 8b 10 8b c8
005a8da0: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 71 8b 10 8b
005a8db0: c8 8b 42 0c 68 6f 43 9a 03 ff d0 8b f0 85 f6 74
005a8dc0: 5d 57 e8 29 37 ea ff 6a 30 8b f8 e8 50 20 1c 00
005a8dd0: 83 c4 04 85 c0 74 1e d9 44 24 14 83 ec 08 d9 5c
005a8de0: 24 04 8b c8 d9 44 24 18 d9 1c 24 56 e8 bf ec ff
005a8df0: ff 8b f0 eb 02 33 f6 8b 16 8b 42 04 8b ce ff d0
005a8e00: 8b 17 8b 42 1c 6a 00 6a 00 56 68 f0 90 02 03 8b
005a8e10: cf ff d0 8b 16 8b 42 08 5f 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
005a8d80 <.text+0x1a7d80>:
  5a8d80:	56                                              	push   esi
  5a8d81:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a8d85:	8b c6                                           	mov    eax,esi
  5a8d87:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a8d8c:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a8d91:	0f 85 87 00 00 00                               	jne    0x5a8e1e
  5a8d97:	e8 f4 05 1c 00                                  	call   0x769390
  5a8d9c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8d9e:	8b c8                                           	mov    ecx,eax
  5a8da0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8da6:	56                                              	push   esi
  5a8da7:	ff d0                                           	call   eax
  5a8da9:	85 c0                                           	test   eax,eax
  5a8dab:	74 71                                           	je     0x5a8e1e
  5a8dad:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8daf:	8b c8                                           	mov    ecx,eax
  5a8db1:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a8db4:	68 6f 43 9a 03                                  	push   0x39a436f
  5a8db9:	ff d0                                           	call   eax
  5a8dbb:	8b f0                                           	mov    esi,eax
  5a8dbd:	85 f6                                           	test   esi,esi
  5a8dbf:	74 5d                                           	je     0x5a8e1e
  5a8dc1:	57                                              	push   edi
  5a8dc2:	e8 29 37 ea ff                                  	call   0x44c4f0
  5a8dc7:	6a 30                                           	push   0x30
  5a8dc9:	8b f8                                           	mov    edi,eax
  5a8dcb:	e8 50 20 1c 00                                  	call   0x76ae20
  5a8dd0:	83 c4 04                                        	add    esp,0x4
  5a8dd3:	85 c0                                           	test   eax,eax
  5a8dd5:	74 1e                                           	je     0x5a8df5
  5a8dd7:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  5a8ddb:	83 ec 08                                        	sub    esp,0x8
  5a8dde:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5a8de2:	8b c8                                           	mov    ecx,eax
  5a8de4:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  5a8de8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a8deb:	56                                              	push   esi
  5a8dec:	e8 bf ec ff ff                                  	call   0x5a7ab0
  5a8df1:	8b f0                                           	mov    esi,eax
  5a8df3:	eb 02                                           	jmp    0x5a8df7
  5a8df5:	33 f6                                           	xor    esi,esi
  5a8df7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8df9:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8dfc:	8b ce                                           	mov    ecx,esi
  5a8dfe:	ff d0                                           	call   eax
  5a8e00:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8e02:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8e05:	6a 00                                           	push   0x0
  5a8e07:	6a 00                                           	push   0x0
  5a8e09:	56                                              	push   esi
  5a8e0a:	68 f0 90 02 03                                  	push   0x30290f0
  5a8e0f:	8b cf                                           	mov    ecx,edi
  5a8e11:	ff d0                                           	call   eax
  5a8e13:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8e15:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8e18:	5f                                              	pop    edi
  5a8e19:	8b ce                                           	mov    ecx,esi
  5a8e1b:	5e                                              	pop    esi
  5a8e1c:	ff e0                                           	jmp    eax
  5a8e1e:	5e                                              	pop    esi
  5a8e1f:	c3                                              	ret
