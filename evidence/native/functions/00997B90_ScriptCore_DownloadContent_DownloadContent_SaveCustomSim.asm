# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00997b90 (ScriptCore.DownloadContent::DownloadContent_SaveCustomSim)
Paired Ghidra pseudocode: 00997B90_ScriptCore_DownloadContent_DownloadContent_SaveCustomSim.c
Window: [0x00997b90, 0x00997c10) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00997c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00997b90: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 83 ec 20 53
00997ba0: 56 57 50 51 52 8d 44 24 28 50 e8 61 fe ff ff 8b
00997bb0: 08 8b 70 04 8b 78 08 8b 58 0c 83 c4 10 84 c9 75
00997bc0: 09 5f 5e 32 c0 5b 83 c4 20 c3 8d 4c 24 0c 51 8d
00997bd0: 4c 24 44 e8 08 45 dd ff 8b 54 24 54 8b 44 24 50
00997be0: 52 8b 16 8b 52 58 50 8b 44 24 44 8d 4c 24 14 51
00997bf0: 50 8b ce ff d2 50 53 8b cf e8 42 29 03 00 5f 5e
00997c00: 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00997b90 <.text+0x596b90>:
  997b90:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  997b94:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  997b98:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  997b9c:	83 ec 20                                        	sub    esp,0x20
  997b9f:	53                                              	push   ebx
  997ba0:	56                                              	push   esi
  997ba1:	57                                              	push   edi
  997ba2:	50                                              	push   eax
  997ba3:	51                                              	push   ecx
  997ba4:	52                                              	push   edx
  997ba5:	8d 44 24 28                                     	lea    eax,[esp+0x28]
  997ba9:	50                                              	push   eax
  997baa:	e8 61 fe ff ff                                  	call   0x997a10
  997baf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  997bb1:	8b 70 04                                        	mov    esi,DWORD PTR [eax+0x4]
  997bb4:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  997bb7:	8b 58 0c                                        	mov    ebx,DWORD PTR [eax+0xc]
  997bba:	83 c4 10                                        	add    esp,0x10
  997bbd:	84 c9                                           	test   cl,cl
  997bbf:	75 09                                           	jne    0x997bca
  997bc1:	5f                                              	pop    edi
  997bc2:	5e                                              	pop    esi
  997bc3:	32 c0                                           	xor    al,al
  997bc5:	5b                                              	pop    ebx
  997bc6:	83 c4 20                                        	add    esp,0x20
  997bc9:	c3                                              	ret
  997bca:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  997bce:	51                                              	push   ecx
  997bcf:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  997bd3:	e8 08 45 dd ff                                  	call   0x76c0e0
  997bd8:	8b 54 24 54                                     	mov    edx,DWORD PTR [esp+0x54]
  997bdc:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
  997be0:	52                                              	push   edx
  997be1:	8b 16                                           	mov    edx,DWORD PTR [esi]
  997be3:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  997be6:	50                                              	push   eax
  997be7:	8b 44 24 44                                     	mov    eax,DWORD PTR [esp+0x44]
  997beb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  997bef:	51                                              	push   ecx
  997bf0:	50                                              	push   eax
  997bf1:	8b ce                                           	mov    ecx,esi
  997bf3:	ff d2                                           	call   edx
  997bf5:	50                                              	push   eax
  997bf6:	53                                              	push   ebx
  997bf7:	8b cf                                           	mov    ecx,edi
  997bf9:	e8 42 29 03 00                                  	call   0x9ca540
  997bfe:	5f                                              	pop    edi
  997bff:	5e                                              	pop    esi
  997c00:	5b                                              	pop    ebx
  997c01:	83 c4 20                                        	add    esp,0x20
  997c04:	c3                                              	ret
  997c05:	cc                                              	int3
  997c06:	cc                                              	int3
  997c07:	cc                                              	int3
  997c08:	cc                                              	int3
  997c09:	cc                                              	int3
  997c0a:	cc                                              	int3
  997c0b:	cc                                              	int3
  997c0c:	cc                                              	int3
  997c0d:	cc                                              	int3
  997c0e:	cc                                              	int3
  997c0f:	cc                                              	int3
