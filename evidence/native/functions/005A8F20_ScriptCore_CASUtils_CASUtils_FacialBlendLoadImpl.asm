# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8f20 (ScriptCore.CASUtils::CASUtils_FacialBlendLoadImpl)
Paired Ghidra pseudocode: 005A8F20_ScriptCore_CASUtils_CASUtils_FacialBlendLoadImpl.c
Window: [0x005a8f20, 0x005a8fc0) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8f20: 83 ec 14 e8 58 6f f0 ff 8b 4c 24 20 8b 54 24 24
005a8f30: 6a 00 89 4c 24 08 8b 4c 24 1c 6a 00 6a 00 89 4c
005a8f40: 24 18 89 54 24 14 8b 54 24 28 6a 00 8d 4c 24 10
005a8f50: 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18 51 8b
005a8f60: c8 ff d2 84 c0 75 06 33 c0 83 c4 14 c3 8b 0c 24
005a8f70: 85 c9 56 74 16 8b 01 8b 50 0c 68 6a 3c 59 03 ff
005a8f80: d2 8b f0 85 f6 75 12 8b 4c 24 04 8b 01 8b 50 04
005a8f90: ff d2 33 c0 5e 83 c4 14 c3 e8 f2 03 1c 00 8b 10
005a8fa0: 6a 35 8b c8 8b 82 c8 00 00 00 56 ff d0 5e 83 c4
005a8fb0: 14 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8f20 <.text+0x1a7f20>:
  5a8f20:	83 ec 14                                        	sub    esp,0x14
  5a8f23:	e8 58 6f f0 ff                                  	call   0x4afe80
  5a8f28:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a8f2c:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  5a8f30:	6a 00                                           	push   0x0
  5a8f32:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a8f36:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  5a8f3a:	6a 00                                           	push   0x0
  5a8f3c:	6a 00                                           	push   0x0
  5a8f3e:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  5a8f42:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a8f46:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a8f4a:	6a 00                                           	push   0x0
  5a8f4c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a8f50:	51                                              	push   ecx
  5a8f51:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a8f55:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8f57:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a8f5a:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a8f5e:	51                                              	push   ecx
  5a8f5f:	8b c8                                           	mov    ecx,eax
  5a8f61:	ff d2                                           	call   edx
  5a8f63:	84 c0                                           	test   al,al
  5a8f65:	75 06                                           	jne    0x5a8f6d
  5a8f67:	33 c0                                           	xor    eax,eax
  5a8f69:	83 c4 14                                        	add    esp,0x14
  5a8f6c:	c3                                              	ret
  5a8f6d:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
  5a8f70:	85 c9                                           	test   ecx,ecx
  5a8f72:	56                                              	push   esi
  5a8f73:	74 16                                           	je     0x5a8f8b
  5a8f75:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a8f77:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a8f7a:	68 6a 3c 59 03                                  	push   0x3593c6a
  5a8f7f:	ff d2                                           	call   edx
  5a8f81:	8b f0                                           	mov    esi,eax
  5a8f83:	85 f6                                           	test   esi,esi
  5a8f85:	75 12                                           	jne    0x5a8f99
  5a8f87:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  5a8f8b:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a8f8d:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a8f90:	ff d2                                           	call   edx
  5a8f92:	33 c0                                           	xor    eax,eax
  5a8f94:	5e                                              	pop    esi
  5a8f95:	83 c4 14                                        	add    esp,0x14
  5a8f98:	c3                                              	ret
  5a8f99:	e8 f2 03 1c 00                                  	call   0x769390
  5a8f9e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8fa0:	6a 35                                           	push   0x35
  5a8fa2:	8b c8                                           	mov    ecx,eax
  5a8fa4:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  5a8faa:	56                                              	push   esi
  5a8fab:	ff d0                                           	call   eax
  5a8fad:	5e                                              	pop    esi
  5a8fae:	83 c4 14                                        	add    esp,0x14
  5a8fb1:	c3                                              	ret
  5a8fb2:	cc                                              	int3
  5a8fb3:	cc                                              	int3
  5a8fb4:	cc                                              	int3
  5a8fb5:	cc                                              	int3
  5a8fb6:	cc                                              	int3
  5a8fb7:	cc                                              	int3
  5a8fb8:	cc                                              	int3
  5a8fb9:	cc                                              	int3
  5a8fba:	cc                                              	int3
  5a8fbb:	cc                                              	int3
  5a8fbc:	cc                                              	int3
  5a8fbd:	cc                                              	int3
  5a8fbe:	cc                                              	int3
  5a8fbf:	cc                                              	int3
