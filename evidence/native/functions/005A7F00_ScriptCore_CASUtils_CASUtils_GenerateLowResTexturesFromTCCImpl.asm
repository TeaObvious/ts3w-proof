# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a7f00 (ScriptCore.CASUtils::CASUtils_GenerateLowResTexturesFromTCCImpl)
Paired Ghidra pseudocode: 005A7F00_ScriptCore_CASUtils_CASUtils_GenerateLowResTexturesFromTCCImpl.c
Window: [0x005a7f00, 0x005a7fb0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a7fb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a7f00: 53 55 56 57 e8 e7 45 ea ff 8b e8 e8 80 14 1c 00
005a7f10: 6a 18 8b f8 e8 07 2f 1c 00 8b f0 83 c4 04 85 f6
005a7f20: 74 2e 8b 07 8b 90 18 01 00 00 8b cf ff d2 c7 06
005a7f30: 1c c9 06 01 33 c9 8d 5e 04 87 0b 89 46 08 89 56
005a7f40: 0c c7 46 10 30 e4 5a 00 c7 06 00 29 fe 00 eb 02
005a7f50: 33 f6 8b 16 8b 42 04 8b ce ff d0 8b 4c 24 14 8b
005a7f60: 1f 8b 93 18 01 00 00 6a 00 51 6a ff 8b cf ff d2
005a7f70: 52 50 8b 83 20 01 00 00 8b cf ff d0 8b 55 00 8b
005a7f80: 42 1c 6a 00 6a 00 56 68 f0 90 02 03 8b cd ff d0
005a7f90: 8b 16 8b 42 08 8b ce ff d0 8b 17 8b 82 1c 01 00
005a7fa0: 00 8b cf 5f 5e 5d 5b ff e0 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a7f00 <.text+0x1a6f00>:
  5a7f00:	53                                              	push   ebx
  5a7f01:	55                                              	push   ebp
  5a7f02:	56                                              	push   esi
  5a7f03:	57                                              	push   edi
  5a7f04:	e8 e7 45 ea ff                                  	call   0x44c4f0
  5a7f09:	8b e8                                           	mov    ebp,eax
  5a7f0b:	e8 80 14 1c 00                                  	call   0x769390
  5a7f10:	6a 18                                           	push   0x18
  5a7f12:	8b f8                                           	mov    edi,eax
  5a7f14:	e8 07 2f 1c 00                                  	call   0x76ae20
  5a7f19:	8b f0                                           	mov    esi,eax
  5a7f1b:	83 c4 04                                        	add    esp,0x4
  5a7f1e:	85 f6                                           	test   esi,esi
  5a7f20:	74 2e                                           	je     0x5a7f50
  5a7f22:	8b 07                                           	mov    eax,DWORD PTR [edi]
  5a7f24:	8b 90 18 01 00 00                               	mov    edx,DWORD PTR [eax+0x118]
  5a7f2a:	8b cf                                           	mov    ecx,edi
  5a7f2c:	ff d2                                           	call   edx
  5a7f2e:	c7 06 1c c9 06 01                               	mov    DWORD PTR [esi],0x106c91c
  5a7f34:	33 c9                                           	xor    ecx,ecx
  5a7f36:	8d 5e 04                                        	lea    ebx,[esi+0x4]
  5a7f39:	87 0b                                           	xchg   DWORD PTR [ebx],ecx
  5a7f3b:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5a7f3e:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5a7f41:	c7 46 10 30 e4 5a 00                            	mov    DWORD PTR [esi+0x10],0x5ae430
  5a7f48:	c7 06 00 29 fe 00                               	mov    DWORD PTR [esi],0xfe2900
  5a7f4e:	eb 02                                           	jmp    0x5a7f52
  5a7f50:	33 f6                                           	xor    esi,esi
  5a7f52:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a7f54:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a7f57:	8b ce                                           	mov    ecx,esi
  5a7f59:	ff d0                                           	call   eax
  5a7f5b:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a7f5f:	8b 1f                                           	mov    ebx,DWORD PTR [edi]
  5a7f61:	8b 93 18 01 00 00                               	mov    edx,DWORD PTR [ebx+0x118]
  5a7f67:	6a 00                                           	push   0x0
  5a7f69:	51                                              	push   ecx
  5a7f6a:	6a ff                                           	push   0xffffffff
  5a7f6c:	8b cf                                           	mov    ecx,edi
  5a7f6e:	ff d2                                           	call   edx
  5a7f70:	52                                              	push   edx
  5a7f71:	50                                              	push   eax
  5a7f72:	8b 83 20 01 00 00                               	mov    eax,DWORD PTR [ebx+0x120]
  5a7f78:	8b cf                                           	mov    ecx,edi
  5a7f7a:	ff d0                                           	call   eax
  5a7f7c:	8b 55 00                                        	mov    edx,DWORD PTR [ebp+0x0]
  5a7f7f:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  5a7f82:	6a 00                                           	push   0x0
  5a7f84:	6a 00                                           	push   0x0
  5a7f86:	56                                              	push   esi
  5a7f87:	68 f0 90 02 03                                  	push   0x30290f0
  5a7f8c:	8b cd                                           	mov    ecx,ebp
  5a7f8e:	ff d0                                           	call   eax
  5a7f90:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a7f92:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  5a7f95:	8b ce                                           	mov    ecx,esi
  5a7f97:	ff d0                                           	call   eax
  5a7f99:	8b 17                                           	mov    edx,DWORD PTR [edi]
  5a7f9b:	8b 82 1c 01 00 00                               	mov    eax,DWORD PTR [edx+0x11c]
  5a7fa1:	8b cf                                           	mov    ecx,edi
  5a7fa3:	5f                                              	pop    edi
  5a7fa4:	5e                                              	pop    esi
  5a7fa5:	5d                                              	pop    ebp
  5a7fa6:	5b                                              	pop    ebx
  5a7fa7:	ff e0                                           	jmp    eax
  5a7fa9:	cc                                              	int3
  5a7faa:	cc                                              	int3
  5a7fab:	cc                                              	int3
  5a7fac:	cc                                              	int3
  5a7fad:	cc                                              	int3
  5a7fae:	cc                                              	int3
  5a7faf:	cc                                              	int3
