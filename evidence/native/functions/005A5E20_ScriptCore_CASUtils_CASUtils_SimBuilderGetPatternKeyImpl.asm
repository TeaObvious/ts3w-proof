# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5e20 (ScriptCore.CASUtils::CASUtils_SimBuilderGetPatternKeyImpl)
Paired Ghidra pseudocode: 005A5E20_ScriptCore_CASUtils_CASUtils_SimBuilderGetPatternKeyImpl.c
Window: [0x005a5e20, 0x005a5ed0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5ed0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5e20: 33 c0 83 ec 20 56 8b 74 24 28 89 06 89 46 04 89
005a5e30: 46 08 57 8b 7c 24 30 89 46 0c 8b c7 25 00 00 00
005a5e40: ff 3d 00 00 00 35 74 04 33 ff eb 14 e8 3f 35 1c
005a5e50: 00 8b 10 8b c8 8b 82 cc 00 00 00 57 ff d0 8b f8
005a5e60: e8 2b 35 1c 00 85 ff 74 51 8b 54 24 40 8b 4c 24
005a5e70: 3c 8b 44 24 34 89 4c 24 08 8b 4c 24 38 89 54 24
005a5e80: 0c 8b 54 24 44 89 44 24 10 52 89 4c 24 18 8d 44
005a5e90: 24 0c 50 8d 4c 24 20 51 8b cf e8 f1 d5 03 00 8b
005a5ea0: 54 24 20 8b 44 24 24 8b 4c 24 18 89 16 8b 54 24
005a5eb0: 1c 89 46 04 89 4e 08 89 56 0c 5f 8b c6 5e 83 c4
005a5ec0: 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5e20 <.text+0x1a4e20>:
  5a5e20:	33 c0                                           	xor    eax,eax
  5a5e22:	83 ec 20                                        	sub    esp,0x20
  5a5e25:	56                                              	push   esi
  5a5e26:	8b 74 24 28                                     	mov    esi,DWORD PTR [esp+0x28]
  5a5e2a:	89 06                                           	mov    DWORD PTR [esi],eax
  5a5e2c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a5e2f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a5e32:	57                                              	push   edi
  5a5e33:	8b 7c 24 30                                     	mov    edi,DWORD PTR [esp+0x30]
  5a5e37:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5a5e3a:	8b c7                                           	mov    eax,edi
  5a5e3c:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5e41:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5e46:	74 04                                           	je     0x5a5e4c
  5a5e48:	33 ff                                           	xor    edi,edi
  5a5e4a:	eb 14                                           	jmp    0x5a5e60
  5a5e4c:	e8 3f 35 1c 00                                  	call   0x769390
  5a5e51:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5e53:	8b c8                                           	mov    ecx,eax
  5a5e55:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5e5b:	57                                              	push   edi
  5a5e5c:	ff d0                                           	call   eax
  5a5e5e:	8b f8                                           	mov    edi,eax
  5a5e60:	e8 2b 35 1c 00                                  	call   0x769390
  5a5e65:	85 ff                                           	test   edi,edi
  5a5e67:	74 51                                           	je     0x5a5eba
  5a5e69:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  5a5e6d:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  5a5e71:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  5a5e75:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a5e79:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  5a5e7d:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  5a5e81:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
  5a5e85:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  5a5e89:	52                                              	push   edx
  5a5e8a:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a5e8e:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  5a5e92:	50                                              	push   eax
  5a5e93:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  5a5e97:	51                                              	push   ecx
  5a5e98:	8b cf                                           	mov    ecx,edi
  5a5e9a:	e8 f1 d5 03 00                                  	call   0x5e3490
  5a5e9f:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  5a5ea3:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  5a5ea7:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a5eab:	89 16                                           	mov    DWORD PTR [esi],edx
  5a5ead:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a5eb1:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5a5eb4:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  5a5eb7:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a5eba:	5f                                              	pop    edi
  5a5ebb:	8b c6                                           	mov    eax,esi
  5a5ebd:	5e                                              	pop    esi
  5a5ebe:	83 c4 20                                        	add    esp,0x20
  5a5ec1:	c3                                              	ret
  5a5ec2:	cc                                              	int3
  5a5ec3:	cc                                              	int3
  5a5ec4:	cc                                              	int3
  5a5ec5:	cc                                              	int3
  5a5ec6:	cc                                              	int3
  5a5ec7:	cc                                              	int3
  5a5ec8:	cc                                              	int3
  5a5ec9:	cc                                              	int3
  5a5eca:	cc                                              	int3
  5a5ecb:	cc                                              	int3
  5a5ecc:	cc                                              	int3
  5a5ecd:	cc                                              	int3
  5a5ece:	cc                                              	int3
  5a5ecf:	cc                                              	int3
