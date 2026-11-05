# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8e20 (ScriptCore.CASUtils::CASUtils_SetCameraOrientationImpl)
Paired Ghidra pseudocode: 005A8E20_ScriptCore_CASUtils_CASUtils_SetCameraOrientationImpl.c
Window: [0x005a8e20, 0x005a8ee0) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8e20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a8e30: 30 0f 85 9b 00 00 00 e8 54 05 1c 00 8b 10 8b c8
005a8e40: 8b 82 cc 00 00 00 56 ff d0 85 c0 0f 84 81 00 00
005a8e50: 00 8b 10 8b c8 8b 42 0c 68 6f 43 9a 03 ff d0 8b
005a8e60: f0 85 f6 74 6d 57 e8 85 36 ea ff 6a 40 8b f8 e8
005a8e70: ac 1f 1c 00 83 c4 04 85 c0 74 2e d9 44 24 1c 83
005a8e80: ec 10 d9 5c 24 0c 8b c8 d9 44 24 28 d9 5c 24 08
005a8e90: d9 44 24 24 d9 5c 24 04 d9 44 24 20 d9 1c 24 56
005a8ea0: e8 8b ec ff ff 8b f0 eb 02 33 f6 8b 16 8b 42 04
005a8eb0: 8b ce ff d0 8b 17 8b 42 1c 6a 00 6a 00 56 68 f0
005a8ec0: 90 02 03 8b cf ff d0 8b 16 8b 42 08 5f 8b ce 5e
005a8ed0: ff e0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8e20 <.text+0x1a7e20>:
  5a8e20:	56                                              	push   esi
  5a8e21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a8e25:	8b c6                                           	mov    eax,esi
  5a8e27:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a8e2c:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  5a8e31:	0f 85 9b 00 00 00                               	jne    0x5a8ed2
  5a8e37:	e8 54 05 1c 00                                  	call   0x769390
  5a8e3c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8e3e:	8b c8                                           	mov    ecx,eax
  5a8e40:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8e46:	56                                              	push   esi
  5a8e47:	ff d0                                           	call   eax
  5a8e49:	85 c0                                           	test   eax,eax
  5a8e4b:	0f 84 81 00 00 00                               	je     0x5a8ed2
  5a8e51:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8e53:	8b c8                                           	mov    ecx,eax
  5a8e55:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  5a8e58:	68 6f 43 9a 03                                  	push   0x39a436f
  5a8e5d:	ff d0                                           	call   eax
  5a8e5f:	8b f0                                           	mov    esi,eax
  5a8e61:	85 f6                                           	test   esi,esi
  5a8e63:	74 6d                                           	je     0x5a8ed2
  5a8e65:	57                                              	push   edi
  5a8e66:	e8 85 36 ea ff                                  	call   0x44c4f0
  5a8e6b:	6a 40                                           	push   0x40
  5a8e6d:	8b f8                                           	mov    edi,eax
  5a8e6f:	e8 ac 1f 1c 00                                  	call   0x76ae20
  5a8e74:	83 c4 04                                        	add    esp,0x4
  5a8e77:	85 c0                                           	test   eax,eax
  5a8e79:	74 2e                                           	je     0x5a8ea9
  5a8e7b:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  5a8e7f:	83 ec 10                                        	sub    esp,0x10
  5a8e82:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  5a8e86:	8b c8                                           	mov    ecx,eax
  5a8e88:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  5a8e8c:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  5a8e90:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  5a8e94:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  5a8e98:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  5a8e9c:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  5a8e9f:	56                                              	push   esi
  5a8ea0:	e8 8b ec ff ff                                  	call   0x5a7b30
  5a8ea5:	8b f0                                           	mov    esi,eax
  5a8ea7:	eb 02                                           	jmp    0x5a8eab
  5a8ea9:	33 f6                                           	xor    esi,esi
  5a8eab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8ead:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a8eb0:	8b ce                                           	mov    ecx,esi
  5a8eb2:	ff d0                                           	call   eax
  5a8eb4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a8eb6:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a8eb9:	6a 00                                           	push   0x0
  5a8ebb:	6a 00                                           	push   0x0
  5a8ebd:	56                                              	push   esi
  5a8ebe:	68 f0 90 02 03                                  	push   0x30290f0
  5a8ec3:	8b cf                                           	mov    ecx,edi
  5a8ec5:	ff d0                                           	call   eax
  5a8ec7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a8ec9:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a8ecc:	5f                                              	pop    edi
  5a8ecd:	8b ce                                           	mov    ecx,esi
  5a8ecf:	5e                                              	pop    esi
  5a8ed0:	ff e0                                           	jmp    eax
  5a8ed2:	5e                                              	pop    esi
  5a8ed3:	c3                                              	ret
  5a8ed4:	cc                                              	int3
  5a8ed5:	cc                                              	int3
  5a8ed6:	cc                                              	int3
  5a8ed7:	cc                                              	int3
  5a8ed8:	cc                                              	int3
  5a8ed9:	cc                                              	int3
  5a8eda:	cc                                              	int3
  5a8edb:	cc                                              	int3
  5a8edc:	cc                                              	int3
  5a8edd:	cc                                              	int3
  5a8ede:	cc                                              	int3
  5a8edf:	cc                                              	int3
