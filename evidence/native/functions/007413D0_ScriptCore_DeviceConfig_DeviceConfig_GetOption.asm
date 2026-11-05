# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007413d0 (ScriptCore.DeviceConfig::DeviceConfig_GetOption)
Paired Ghidra pseudocode: 007413D0_ScriptCore_DeviceConfig_DeviceConfig_GetOption.c
Window: [0x007413d0, 0x00741450) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007413d0: 83 ec 10 57 e8 b7 7f 02 00 8b 4c 24 18 8b 10 8b
007413e0: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
007413f0: 0c d4 e4 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
00741400: e8 bb 28 db ff 8b 4c 24 34 8b 00 83 c4 10 51 50
00741410: 8d 4e 04 e8 48 dd e4 ff 8b 54 24 14 8a d8 8b 44
00741420: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 ad
00741430: 30 da ff 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
00741440: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007413d0 <.text+0x3403d0>:
  7413d0:	83 ec 10                                        	sub    esp,0x10
  7413d3:	57                                              	push   edi
  7413d4:	e8 b7 7f 02 00                                  	call   0x769390
  7413d9:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  7413dd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7413df:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  7413e2:	51                                              	push   ecx
  7413e3:	8b c8                                           	mov    ecx,eax
  7413e5:	ff d2                                           	call   edx
  7413e7:	8b f8                                           	mov    edi,eax
  7413e9:	85 ff                                           	test   edi,edi
  7413eb:	74 52                                           	je     0x74143f
  7413ed:	53                                              	push   ebx
  7413ee:	56                                              	push   esi
  7413ef:	e8 0c d4 e4 ff                                  	call   0x58e800
  7413f4:	6a 00                                           	push   0x0
  7413f6:	6a ff                                           	push   0xffffffff
  7413f8:	8b f0                                           	mov    esi,eax
  7413fa:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  7413fe:	57                                              	push   edi
  7413ff:	50                                              	push   eax
  741400:	e8 bb 28 db ff                                  	call   0x4f3cc0
  741405:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  741409:	8b 00                                           	mov    eax,DWORD PTR [eax]
  74140b:	83 c4 10                                        	add    esp,0x10
  74140e:	51                                              	push   ecx
  74140f:	50                                              	push   eax
  741410:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  741413:	e8 48 dd e4 ff                                  	call   0x58f160
  741418:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74141c:	8a d8                                           	mov    bl,al
  74141e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  741422:	2b d0                                           	sub    edx,eax
  741424:	83 fa 01                                        	cmp    edx,0x1
  741427:	7e 0d                                           	jle    0x741436
  741429:	85 c0                                           	test   eax,eax
  74142b:	74 09                                           	je     0x741436
  74142d:	50                                              	push   eax
  74142e:	e8 ad 30 da ff                                  	call   0x4e44e0
  741433:	83 c4 04                                        	add    esp,0x4
  741436:	5e                                              	pop    esi
  741437:	8a c3                                           	mov    al,bl
  741439:	5b                                              	pop    ebx
  74143a:	5f                                              	pop    edi
  74143b:	83 c4 10                                        	add    esp,0x10
  74143e:	c3                                              	ret
  74143f:	32 c0                                           	xor    al,al
  741441:	5f                                              	pop    edi
  741442:	83 c4 10                                        	add    esp,0x10
  741445:	c3                                              	ret
  741446:	cc                                              	int3
  741447:	cc                                              	int3
  741448:	cc                                              	int3
  741449:	cc                                              	int3
  74144a:	cc                                              	int3
  74144b:	cc                                              	int3
  74144c:	cc                                              	int3
  74144d:	cc                                              	int3
  74144e:	cc                                              	int3
  74144f:	cc                                              	int3
