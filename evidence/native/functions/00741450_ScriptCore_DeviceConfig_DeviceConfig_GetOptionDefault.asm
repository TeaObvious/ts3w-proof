# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741450 (ScriptCore.DeviceConfig::DeviceConfig_GetOptionDefault)
Paired Ghidra pseudocode: 00741450_ScriptCore_DeviceConfig_DeviceConfig_GetOptionDefault.c
Window: [0x00741450, 0x007414d0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x007414d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741450: 83 ec 10 57 e8 37 7f 02 00 8b 4c 24 18 8b 10 8b
00741460: 52 58 51 8b c8 ff d2 8b f8 85 ff 74 52 53 56 e8
00741470: 8c d3 e4 ff 6a 00 6a ff 8b f0 8d 44 24 14 57 50
00741480: e8 3b 28 db ff 8b 4c 24 34 8b 00 83 c4 10 51 50
00741490: 8d 4e 04 e8 38 dd e4 ff 8b 54 24 14 8a d8 8b 44
007414a0: 24 0c 2b d0 83 fa 01 7e 0d 85 c0 74 09 50 e8 2d
007414b0: 30 da ff 83 c4 04 5e 8a c3 5b 5f 83 c4 10 c3 32
007414c0: c0 5f 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00741450 <.text+0x340450>:
  741450:	83 ec 10                                        	sub    esp,0x10
  741453:	57                                              	push   edi
  741454:	e8 37 7f 02 00                                  	call   0x769390
  741459:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  74145d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74145f:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  741462:	51                                              	push   ecx
  741463:	8b c8                                           	mov    ecx,eax
  741465:	ff d2                                           	call   edx
  741467:	8b f8                                           	mov    edi,eax
  741469:	85 ff                                           	test   edi,edi
  74146b:	74 52                                           	je     0x7414bf
  74146d:	53                                              	push   ebx
  74146e:	56                                              	push   esi
  74146f:	e8 8c d3 e4 ff                                  	call   0x58e800
  741474:	6a 00                                           	push   0x0
  741476:	6a ff                                           	push   0xffffffff
  741478:	8b f0                                           	mov    esi,eax
  74147a:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  74147e:	57                                              	push   edi
  74147f:	50                                              	push   eax
  741480:	e8 3b 28 db ff                                  	call   0x4f3cc0
  741485:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  741489:	8b 00                                           	mov    eax,DWORD PTR [eax]
  74148b:	83 c4 10                                        	add    esp,0x10
  74148e:	51                                              	push   ecx
  74148f:	50                                              	push   eax
  741490:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  741493:	e8 38 dd e4 ff                                  	call   0x58f1d0
  741498:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74149c:	8a d8                                           	mov    bl,al
  74149e:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7414a2:	2b d0                                           	sub    edx,eax
  7414a4:	83 fa 01                                        	cmp    edx,0x1
  7414a7:	7e 0d                                           	jle    0x7414b6
  7414a9:	85 c0                                           	test   eax,eax
  7414ab:	74 09                                           	je     0x7414b6
  7414ad:	50                                              	push   eax
  7414ae:	e8 2d 30 da ff                                  	call   0x4e44e0
  7414b3:	83 c4 04                                        	add    esp,0x4
  7414b6:	5e                                              	pop    esi
  7414b7:	8a c3                                           	mov    al,bl
  7414b9:	5b                                              	pop    ebx
  7414ba:	5f                                              	pop    edi
  7414bb:	83 c4 10                                        	add    esp,0x10
  7414be:	c3                                              	ret
  7414bf:	32 c0                                           	xor    al,al
  7414c1:	5f                                              	pop    edi
  7414c2:	83 c4 10                                        	add    esp,0x10
  7414c5:	c3                                              	ret
  7414c6:	cc                                              	int3
  7414c7:	cc                                              	int3
  7414c8:	cc                                              	int3
  7414c9:	cc                                              	int3
  7414ca:	cc                                              	int3
  7414cb:	cc                                              	int3
  7414cc:	cc                                              	int3
  7414cd:	cc                                              	int3
  7414ce:	cc                                              	int3
  7414cf:	cc                                              	int3
