# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00772f70 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfilePersona)
Paired Ghidra pseudocode: 00772F70_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfilePersona.c
Window: [0x00772f70, 0x00773040) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x00773040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00772f70: 83 ec 34 8b 44 24 3c 8b 4c 24 38 56 57 50 51 e8
00772f80: 7c 12 2b 00 83 c4 08 8b f0 c7 44 24 08 00 00 00
00772f90: 00 e8 fa 63 ff ff 8b f8 85 ff 0f 84 8e 00 00 00
00772fa0: 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d 54 24 14
00772fb0: 56 52 e8 99 0b d8 ff 83 c4 10 6a 01 6a 10 50 6a
00772fc0: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00772fd0: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 de 29
00772fe0: d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
00772ff0: f9 02 7e 0d 85 c0 74 09 50 e8 e2 14 d7 ff 83 c4
00773000: 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c 24 20 51
00773010: 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c f4 a6 fb
00773020: 00 74 0b 6a 00 8d 4c 24 20 e8 32 27 d8 ff 8b 44
00773030: 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00772f70 <.text+0x371f70>:
  772f70:	83 ec 34                                        	sub    esp,0x34
  772f73:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  772f77:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  772f7b:	56                                              	push   esi
  772f7c:	57                                              	push   edi
  772f7d:	50                                              	push   eax
  772f7e:	51                                              	push   ecx
  772f7f:	e8 7c 12 2b 00                                  	call   0xa24200
  772f84:	83 c4 08                                        	add    esp,0x8
  772f87:	8b f0                                           	mov    esi,eax
  772f89:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  772f91:	e8 fa 63 ff ff                                  	call   0x769390
  772f96:	8b f8                                           	mov    edi,eax
  772f98:	85 ff                                           	test   edi,edi
  772f9a:	0f 84 8e 00 00 00                               	je     0x77302e
  772fa0:	85 f6                                           	test   esi,esi
  772fa2:	0f 84 86 00 00 00                               	je     0x77302e
  772fa8:	6a 00                                           	push   0x0
  772faa:	6a ff                                           	push   0xffffffff
  772fac:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  772fb0:	56                                              	push   esi
  772fb1:	52                                              	push   edx
  772fb2:	e8 99 0b d8 ff                                  	call   0x4f3b50
  772fb7:	83 c4 10                                        	add    esp,0x10
  772fba:	6a 01                                           	push   0x1
  772fbc:	6a 10                                           	push   0x10
  772fbe:	50                                              	push   eax
  772fbf:	6a 09                                           	push   0x9
  772fc1:	6a 13                                           	push   0x13
  772fc3:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  772fc7:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  772fcf:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  772fd6:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  772fdd:	e8 de 29 d8 ff                                  	call   0x4f59c0
  772fe2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  772fe6:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  772fea:	2b c8                                           	sub    ecx,eax
  772fec:	83 e1 fe                                        	and    ecx,0xfffffffe
  772fef:	83 f9 02                                        	cmp    ecx,0x2
  772ff2:	7e 0d                                           	jle    0x773001
  772ff4:	85 c0                                           	test   eax,eax
  772ff6:	74 09                                           	je     0x773001
  772ff8:	50                                              	push   eax
  772ff9:	e8 e2 14 d7 ff                                  	call   0x4e44e0
  772ffe:	83 c4 04                                        	add    esp,0x4
  773001:	8b 17                                           	mov    edx,DWORD PTR [edi]
  773003:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  773006:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77300a:	50                                              	push   eax
  77300b:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77300f:	51                                              	push   ecx
  773010:	8b cf                                           	mov    ecx,edi
  773012:	ff d2                                           	call   edx
  773014:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  773019:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  773021:	74 0b                                           	je     0x77302e
  773023:	6a 00                                           	push   0x0
  773025:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  773029:	e8 32 27 d8 ff                                  	call   0x4f5760
  77302e:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  773032:	5f                                              	pop    edi
  773033:	5e                                              	pop    esi
  773034:	83 c4 34                                        	add    esp,0x34
  773037:	c3                                              	ret
  773038:	cc                                              	int3
  773039:	cc                                              	int3
  77303a:	cc                                              	int3
  77303b:	cc                                              	int3
  77303c:	cc                                              	int3
  77303d:	cc                                              	int3
  77303e:	cc                                              	int3
  77303f:	cc                                              	int3
