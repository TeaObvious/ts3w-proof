# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005ab9c0 (ScriptCore.CASUtils::CASUtils_FacialBlendGetNameImpl)
Paired Ghidra pseudocode: 005AB9C0_ScriptCore_CASUtils_CASUtils_FacialBlendGetNameImpl.c
Window: [0x005ab9c0, 0x005aba60) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aba60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005ab9c0: 83 ec 20 57 8b 7c 24 28 8b c7 25 00 00 00 ff 3d
005ab9d0: 00 00 00 35 74 07 33 c0 5f 83 c4 20 c3 56 e8 ad
005ab9e0: d9 1b 00 8b f0 8b 16 8b 82 cc 00 00 00 57 8b ce
005ab9f0: ff d0 85 c0 74 11 8b 48 2c 2b 48 28 83 c0 28 f7
005aba00: c1 fe ff ff ff 75 08 5e 33 c0 5f 83 c4 20 c3 50
005aba10: 8d 4c 24 0c e8 87 f8 ff ff 8b 16 8b 52 50 8d 44
005aba20: 24 2c 50 8d 4c 24 0c 51 8b ce ff d2 f6 44 24 10
005aba30: 04 8b 74 24 2c c7 44 24 08 f4 a6 fb 00 74 0b 6a
005aba40: 00 8d 4c 24 0c e8 16 9d f4 ff 8b c6 5e 5f 83 c4
005aba50: 20 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005ab9c0 <.text+0x1aa9c0>:
  5ab9c0:	83 ec 20                                        	sub    esp,0x20
  5ab9c3:	57                                              	push   edi
  5ab9c4:	8b 7c 24 28                                     	mov    edi,DWORD PTR [esp+0x28]
  5ab9c8:	8b c7                                           	mov    eax,edi
  5ab9ca:	25 00 00 00 ff                                  	and    eax,0xff000000
  5ab9cf:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5ab9d4:	74 07                                           	je     0x5ab9dd
  5ab9d6:	33 c0                                           	xor    eax,eax
  5ab9d8:	5f                                              	pop    edi
  5ab9d9:	83 c4 20                                        	add    esp,0x20
  5ab9dc:	c3                                              	ret
  5ab9dd:	56                                              	push   esi
  5ab9de:	e8 ad d9 1b 00                                  	call   0x769390
  5ab9e3:	8b f0                                           	mov    esi,eax
  5ab9e5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5ab9e7:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5ab9ed:	57                                              	push   edi
  5ab9ee:	8b ce                                           	mov    ecx,esi
  5ab9f0:	ff d0                                           	call   eax
  5ab9f2:	85 c0                                           	test   eax,eax
  5ab9f4:	74 11                                           	je     0x5aba07
  5ab9f6:	8b 48 2c                                        	mov    ecx,DWORD PTR [eax+0x2c]
  5ab9f9:	2b 48 28                                        	sub    ecx,DWORD PTR [eax+0x28]
  5ab9fc:	83 c0 28                                        	add    eax,0x28
  5ab9ff:	f7 c1 fe ff ff ff                               	test   ecx,0xfffffffe
  5aba05:	75 08                                           	jne    0x5aba0f
  5aba07:	5e                                              	pop    esi
  5aba08:	33 c0                                           	xor    eax,eax
  5aba0a:	5f                                              	pop    edi
  5aba0b:	83 c4 20                                        	add    esp,0x20
  5aba0e:	c3                                              	ret
  5aba0f:	50                                              	push   eax
  5aba10:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5aba14:	e8 87 f8 ff ff                                  	call   0x5ab2a0
  5aba19:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5aba1b:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  5aba1e:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  5aba22:	50                                              	push   eax
  5aba23:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5aba27:	51                                              	push   ecx
  5aba28:	8b ce                                           	mov    ecx,esi
  5aba2a:	ff d2                                           	call   edx
  5aba2c:	f6 44 24 10 04                                  	test   BYTE PTR [esp+0x10],0x4
  5aba31:	8b 74 24 2c                                     	mov    esi,DWORD PTR [esp+0x2c]
  5aba35:	c7 44 24 08 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x8],0xfba6f4
  5aba3d:	74 0b                                           	je     0x5aba4a
  5aba3f:	6a 00                                           	push   0x0
  5aba41:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5aba45:	e8 16 9d f4 ff                                  	call   0x4f5760
  5aba4a:	8b c6                                           	mov    eax,esi
  5aba4c:	5e                                              	pop    esi
  5aba4d:	5f                                              	pop    edi
  5aba4e:	83 c4 20                                        	add    esp,0x20
  5aba51:	c3                                              	ret
  5aba52:	cc                                              	int3
  5aba53:	cc                                              	int3
  5aba54:	cc                                              	int3
  5aba55:	cc                                              	int3
  5aba56:	cc                                              	int3
  5aba57:	cc                                              	int3
  5aba58:	cc                                              	int3
  5aba59:	cc                                              	int3
  5aba5a:	cc                                              	int3
  5aba5b:	cc                                              	int3
  5aba5c:	cc                                              	int3
  5aba5d:	cc                                              	int3
  5aba5e:	cc                                              	int3
  5aba5f:	cc                                              	int3
