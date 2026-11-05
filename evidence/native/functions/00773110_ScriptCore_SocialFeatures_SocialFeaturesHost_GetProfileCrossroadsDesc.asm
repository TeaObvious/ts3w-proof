# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00773110 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileCrossroadsDesc)
Paired Ghidra pseudocode: 00773110_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileCrossroadsDesc.c
Window: [0x00773110, 0x007731e0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x007731e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00773110: 83 ec 34 8b 44 24 3c 8b 4c 24 38 56 57 50 51 e8
00773120: 5c 11 2b 00 83 c4 08 8b f0 c7 44 24 08 00 00 00
00773130: 00 e8 5a 62 ff ff 8b f8 85 ff 0f 84 8e 00 00 00
00773140: 85 f6 0f 84 86 00 00 00 6a 00 6a ff 8d 54 24 14
00773150: 56 52 e8 f9 09 d8 ff 83 c4 10 6a 01 6a 10 50 6a
00773160: 09 6a 13 8d 4c 24 30 c7 44 24 30 6c 88 00 01 66
00773170: c7 44 24 3a 13 00 66 c7 44 24 38 0b 00 e8 3e 28
00773180: d8 ff 8b 4c 24 14 8b 44 24 0c 2b c8 83 e1 fe 83
00773190: f9 02 7e 0d 85 c0 74 09 50 e8 42 13 d7 ff 83 c4
007731a0: 04 8b 17 8b 52 50 8d 44 24 08 50 8d 4c 24 20 51
007731b0: 8b cf ff d2 f6 44 24 24 04 c7 44 24 1c f4 a6 fb
007731c0: 00 74 0b 6a 00 8d 4c 24 20 e8 92 25 d8 ff 8b 44
007731d0: 24 08 5f 5e 83 c4 34 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00773110 <.text+0x372110>:
  773110:	83 ec 34                                        	sub    esp,0x34
  773113:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  773117:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77311b:	56                                              	push   esi
  77311c:	57                                              	push   edi
  77311d:	50                                              	push   eax
  77311e:	51                                              	push   ecx
  77311f:	e8 5c 11 2b 00                                  	call   0xa24280
  773124:	83 c4 08                                        	add    esp,0x8
  773127:	8b f0                                           	mov    esi,eax
  773129:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  773131:	e8 5a 62 ff ff                                  	call   0x769390
  773136:	8b f8                                           	mov    edi,eax
  773138:	85 ff                                           	test   edi,edi
  77313a:	0f 84 8e 00 00 00                               	je     0x7731ce
  773140:	85 f6                                           	test   esi,esi
  773142:	0f 84 86 00 00 00                               	je     0x7731ce
  773148:	6a 00                                           	push   0x0
  77314a:	6a ff                                           	push   0xffffffff
  77314c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  773150:	56                                              	push   esi
  773151:	52                                              	push   edx
  773152:	e8 f9 09 d8 ff                                  	call   0x4f3b50
  773157:	83 c4 10                                        	add    esp,0x10
  77315a:	6a 01                                           	push   0x1
  77315c:	6a 10                                           	push   0x10
  77315e:	50                                              	push   eax
  77315f:	6a 09                                           	push   0x9
  773161:	6a 13                                           	push   0x13
  773163:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  773167:	c7 44 24 30 6c 88 00 01                         	mov    DWORD PTR [esp+0x30],0x100886c
  77316f:	66 c7 44 24 3a 13 00                            	mov    WORD PTR [esp+0x3a],0x13
  773176:	66 c7 44 24 38 0b 00                            	mov    WORD PTR [esp+0x38],0xb
  77317d:	e8 3e 28 d8 ff                                  	call   0x4f59c0
  773182:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  773186:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77318a:	2b c8                                           	sub    ecx,eax
  77318c:	83 e1 fe                                        	and    ecx,0xfffffffe
  77318f:	83 f9 02                                        	cmp    ecx,0x2
  773192:	7e 0d                                           	jle    0x7731a1
  773194:	85 c0                                           	test   eax,eax
  773196:	74 09                                           	je     0x7731a1
  773198:	50                                              	push   eax
  773199:	e8 42 13 d7 ff                                  	call   0x4e44e0
  77319e:	83 c4 04                                        	add    esp,0x4
  7731a1:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7731a3:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  7731a6:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  7731aa:	50                                              	push   eax
  7731ab:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7731af:	51                                              	push   ecx
  7731b0:	8b cf                                           	mov    ecx,edi
  7731b2:	ff d2                                           	call   edx
  7731b4:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  7731b9:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  7731c1:	74 0b                                           	je     0x7731ce
  7731c3:	6a 00                                           	push   0x0
  7731c5:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  7731c9:	e8 92 25 d8 ff                                  	call   0x4f5760
  7731ce:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7731d2:	5f                                              	pop    edi
  7731d3:	5e                                              	pop    esi
  7731d4:	83 c4 34                                        	add    esp,0x34
  7731d7:	c3                                              	ret
  7731d8:	cc                                              	int3
  7731d9:	cc                                              	int3
  7731da:	cc                                              	int3
  7731db:	cc                                              	int3
  7731dc:	cc                                              	int3
  7731dd:	cc                                              	int3
  7731de:	cc                                              	int3
  7731df:	cc                                              	int3
