# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ceb160 (ScriptCore.UserToolUtils::UserToolUtils_GetCollectionPresetListImpl)
Paired Ghidra pseudocode: 00CEB160_ScriptCore_UserToolUtils_UserToolUtils_GetCollectionPresetListImpl.c
Window: [0x00ceb160, 0x00ceb1e0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ceb1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ceb160: 83 ec 10 56 8b 35 c8 9a 1d 01 85 f6 74 64 e8 1d
00ceb170: e2 a7 ff 8b 4c 24 1c 8b 54 24 18 8d 44 24 04 50
00ceb180: 51 52 8b ce c7 44 24 10 00 00 00 00 c7 44 24 14
00ceb190: 00 00 00 00 c7 44 24 18 00 00 00 00 c7 44 24 1c
00ceb1a0: a4 17 08 01 e8 57 44 af ff 8d 44 24 04 6a 00 50
00ceb1b0: e8 7b fd ff ff 8b f0 8b 44 24 0c 83 c4 08 85 c0
00ceb1c0: 74 09 50 e8 18 93 7f ff 83 c4 04 8b c6 5e 83 c4
00ceb1d0: 10 c3 33 c0 5e 83 c4 10 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ceb160 <.text+0x8ea160>:
  ceb160:	83 ec 10                                        	sub    esp,0x10
  ceb163:	56                                              	push   esi
  ceb164:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  ceb16a:	85 f6                                           	test   esi,esi
  ceb16c:	74 64                                           	je     0xceb1d2
  ceb16e:	e8 1d e2 a7 ff                                  	call   0x769390
  ceb173:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  ceb177:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  ceb17b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceb17f:	50                                              	push   eax
  ceb180:	51                                              	push   ecx
  ceb181:	52                                              	push   edx
  ceb182:	8b ce                                           	mov    ecx,esi
  ceb184:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  ceb18c:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
  ceb194:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  ceb19c:	c7 44 24 1c a4 17 08 01                         	mov    DWORD PTR [esp+0x1c],0x10817a4
  ceb1a4:	e8 57 44 af ff                                  	call   0x7df600
  ceb1a9:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  ceb1ad:	6a 00                                           	push   0x0
  ceb1af:	50                                              	push   eax
  ceb1b0:	e8 7b fd ff ff                                  	call   0xceaf30
  ceb1b5:	8b f0                                           	mov    esi,eax
  ceb1b7:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  ceb1bb:	83 c4 08                                        	add    esp,0x8
  ceb1be:	85 c0                                           	test   eax,eax
  ceb1c0:	74 09                                           	je     0xceb1cb
  ceb1c2:	50                                              	push   eax
  ceb1c3:	e8 18 93 7f ff                                  	call   0x4e44e0
  ceb1c8:	83 c4 04                                        	add    esp,0x4
  ceb1cb:	8b c6                                           	mov    eax,esi
  ceb1cd:	5e                                              	pop    esi
  ceb1ce:	83 c4 10                                        	add    esp,0x10
  ceb1d1:	c3                                              	ret
  ceb1d2:	33 c0                                           	xor    eax,eax
  ceb1d4:	5e                                              	pop    esi
  ceb1d5:	83 c4 10                                        	add    esp,0x10
  ceb1d8:	c3                                              	ret
  ceb1d9:	cc                                              	int3
  ceb1da:	cc                                              	int3
  ceb1db:	cc                                              	int3
  ceb1dc:	cc                                              	int3
  ceb1dd:	cc                                              	int3
  ceb1de:	cc                                              	int3
  ceb1df:	cc                                              	int3
