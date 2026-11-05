# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8160 (ScriptCore.CASUtils::CASUtils_GetSkinTonePresetImpl)
Paired Ghidra pseudocode: 005A8160_ScriptCore_CASUtils_CASUtils_GetSkinTonePresetImpl.c
Window: [0x005a8160, 0x005a8230) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8160: 83 ec 10 56 8b 74 24 18 6a 30 6a 00 56 e8 26 71
005a8170: 9d 00 83 c4 0c e8 06 7d f0 ff 8b 4c 24 24 8b 54
005a8180: 24 28 6a 00 89 4c 24 08 8b 4c 24 20 6a 00 89 4c
005a8190: 24 14 6a 00 89 54 24 14 8b 54 24 2c 6a 00 8d 4c
005a81a0: 24 28 51 89 54 24 24 8b 10 8b 52 0c 8d 4c 24 18
005a81b0: 51 8b c8 ff d2 84 c0 74 65 8b 4c 24 18 85 c9 74
005a81c0: 5d 8b 01 8b 50 0c 68 15 2b 7a e3 ff d2 85 c0 74
005a81d0: 4d 8b 54 24 04 d9 40 28 8b 4c 24 10 d9 5e 10 89
005a81e0: 56 08 8b 54 24 0c 89 4e 04 8b 4c 24 08 89 16 8b
005a81f0: 50 34 89 4e 0c 8b 48 30 53 8b 58 3c 89 56 24 8b
005a8200: 10 57 8b 78 38 89 4e 20 8b c8 8b 42 04 89 5e 1c
005a8210: 89 7e 18 c7 46 28 ff ff 00 ff ff d0 5f 5b 8b c6
005a8220: 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a8160 <.text+0x1a7160>:
  5a8160:	83 ec 10                                        	sub    esp,0x10
  5a8163:	56                                              	push   esi
  5a8164:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  5a8168:	6a 30                                           	push   0x30
  5a816a:	6a 00                                           	push   0x0
  5a816c:	56                                              	push   esi
  5a816d:	e8 26 71 9d 00                                  	call   0xf7f298
  5a8172:	83 c4 0c                                        	add    esp,0xc
  5a8175:	e8 06 7d f0 ff                                  	call   0x4afe80
  5a817a:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  5a817e:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  5a8182:	6a 00                                           	push   0x0
  5a8184:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  5a8188:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a818c:	6a 00                                           	push   0x0
  5a818e:	89 4c 24 14                                     	mov    DWORD PTR [esp+0x14],ecx
  5a8192:	6a 00                                           	push   0x0
  5a8194:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  5a8198:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  5a819c:	6a 00                                           	push   0x0
  5a819e:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  5a81a2:	51                                              	push   ecx
  5a81a3:	89 54 24 24                                     	mov    DWORD PTR [esp+0x24],edx
  5a81a7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a81a9:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
  5a81ac:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  5a81b0:	51                                              	push   ecx
  5a81b1:	8b c8                                           	mov    ecx,eax
  5a81b3:	ff d2                                           	call   edx
  5a81b5:	84 c0                                           	test   al,al
  5a81b7:	74 65                                           	je     0x5a821e
  5a81b9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a81bd:	85 c9                                           	test   ecx,ecx
  5a81bf:	74 5d                                           	je     0x5a821e
  5a81c1:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  5a81c3:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  5a81c6:	68 15 2b 7a e3                                  	push   0xe37a2b15
  5a81cb:	ff d2                                           	call   edx
  5a81cd:	85 c0                                           	test   eax,eax
  5a81cf:	74 4d                                           	je     0x5a821e
  5a81d1:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  5a81d5:	d9 40 28                                        	fld    DWORD PTR [eax+0x28]
  5a81d8:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a81dc:	d9 5e 10                                        	fstp   DWORD PTR [esi+0x10]
  5a81df:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  5a81e2:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  5a81e6:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5a81e9:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a81ed:	89 16                                           	mov    DWORD PTR [esi],edx
  5a81ef:	8b 50 34                                        	mov    edx,DWORD PTR [eax+0x34]
  5a81f2:	89 4e 0c                                        	mov    DWORD PTR [esi+0xc],ecx
  5a81f5:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  5a81f8:	53                                              	push   ebx
  5a81f9:	8b 58 3c                                        	mov    ebx,DWORD PTR [eax+0x3c]
  5a81fc:	89 56 24                                        	mov    DWORD PTR [esi+0x24],edx
  5a81ff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a8201:	57                                              	push   edi
  5a8202:	8b 78 38                                        	mov    edi,DWORD PTR [eax+0x38]
  5a8205:	89 4e 20                                        	mov    DWORD PTR [esi+0x20],ecx
  5a8208:	8b c8                                           	mov    ecx,eax
  5a820a:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a820d:	89 5e 1c                                        	mov    DWORD PTR [esi+0x1c],ebx
  5a8210:	89 7e 18                                        	mov    DWORD PTR [esi+0x18],edi
  5a8213:	c7 46 28 ff ff 00 ff                            	mov    DWORD PTR [esi+0x28],0xff00ffff
  5a821a:	ff d0                                           	call   eax
  5a821c:	5f                                              	pop    edi
  5a821d:	5b                                              	pop    ebx
  5a821e:	8b c6                                           	mov    eax,esi
  5a8220:	5e                                              	pop    esi
  5a8221:	83 c4 10                                        	add    esp,0x10
  5a8224:	c3                                              	ret
  5a8225:	cc                                              	int3
  5a8226:	cc                                              	int3
  5a8227:	cc                                              	int3
  5a8228:	cc                                              	int3
  5a8229:	cc                                              	int3
  5a822a:	cc                                              	int3
  5a822b:	cc                                              	int3
  5a822c:	cc                                              	int3
  5a822d:	cc                                              	int3
  5a822e:	cc                                              	int3
  5a822f:	cc                                              	int3
