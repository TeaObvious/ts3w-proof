# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074b990 (ScriptCore.RouteManager::RouteManager_SetRoutingDisplayOption)
Paired Ghidra pseudocode: 0074B990_ScriptCore_RouteManager_RouteManager_SetRoutingDisplayOption.c
Window: [0x0074b990, 0x0074ba80) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074ba80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074b990: 56 e8 5a d3 0d 00 8b f0 85 f6 0f 84 d8 00 00 00
0074b9a0: 53 8b 5c 24 0c f6 c3 01 57 8b 7c 24 14 74 0b 85
0074b9b0: ff 0f 95 c0 88 86 d0 0a 00 00 f6 c3 02 74 14 a1
0074b9c0: 40 a1 1d 01 85 c0 74 0b 85 ff 0f 95 c1 88 88 00
0074b9d0: 01 00 00 f6 c3 04 74 0b 85 ff 0f 95 c2 88 96 d2
0074b9e0: 0a 00 00 f6 c3 08 74 0b 85 ff 0f 95 c0 88 86 d3
0074b9f0: 0a 00 00 f6 c3 10 74 0b 85 ff 0f 95 c1 88 8e d6
0074ba00: 0a 00 00 f6 c3 20 74 06 89 be e0 0a 00 00 f6 c3
0074ba10: 40 74 0d c6 86 d8 0a 00 00 01 89 be dc 0a 00 00
0074ba20: 84 db 79 07 c6 86 d8 0a 00 00 00 f7 c3 00 02 00
0074ba30: 00 74 0b 85 ff 0f 95 c2 88 96 d9 0a 00 00 f7 c3
0074ba40: 00 04 00 00 74 0c 57 8d 8e 90 09 00 00 e8 de c2
0074ba50: 0c 00 81 e3 00 08 00 00 74 0c 57 8d 8e 90 09 00
0074ba60: 00 e8 fa ab 0c 00 5f 85 db 5b 74 0c 8d 8e 90 09
0074ba70: 00 00 5e e9 78 a3 0c 00 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074b990 <.text+0x34a990>:
  74b990:	56                                              	push   esi
  74b991:	e8 5a d3 0d 00                                  	call   0x828cf0
  74b996:	8b f0                                           	mov    esi,eax
  74b998:	85 f6                                           	test   esi,esi
  74b99a:	0f 84 d8 00 00 00                               	je     0x74ba78
  74b9a0:	53                                              	push   ebx
  74b9a1:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  74b9a5:	f6 c3 01                                        	test   bl,0x1
  74b9a8:	57                                              	push   edi
  74b9a9:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  74b9ad:	74 0b                                           	je     0x74b9ba
  74b9af:	85 ff                                           	test   edi,edi
  74b9b1:	0f 95 c0                                        	setne  al
  74b9b4:	88 86 d0 0a 00 00                               	mov    BYTE PTR [esi+0xad0],al
  74b9ba:	f6 c3 02                                        	test   bl,0x2
  74b9bd:	74 14                                           	je     0x74b9d3
  74b9bf:	a1 40 a1 1d 01                                  	mov    eax,ds:0x11da140
  74b9c4:	85 c0                                           	test   eax,eax
  74b9c6:	74 0b                                           	je     0x74b9d3
  74b9c8:	85 ff                                           	test   edi,edi
  74b9ca:	0f 95 c1                                        	setne  cl
  74b9cd:	88 88 00 01 00 00                               	mov    BYTE PTR [eax+0x100],cl
  74b9d3:	f6 c3 04                                        	test   bl,0x4
  74b9d6:	74 0b                                           	je     0x74b9e3
  74b9d8:	85 ff                                           	test   edi,edi
  74b9da:	0f 95 c2                                        	setne  dl
  74b9dd:	88 96 d2 0a 00 00                               	mov    BYTE PTR [esi+0xad2],dl
  74b9e3:	f6 c3 08                                        	test   bl,0x8
  74b9e6:	74 0b                                           	je     0x74b9f3
  74b9e8:	85 ff                                           	test   edi,edi
  74b9ea:	0f 95 c0                                        	setne  al
  74b9ed:	88 86 d3 0a 00 00                               	mov    BYTE PTR [esi+0xad3],al
  74b9f3:	f6 c3 10                                        	test   bl,0x10
  74b9f6:	74 0b                                           	je     0x74ba03
  74b9f8:	85 ff                                           	test   edi,edi
  74b9fa:	0f 95 c1                                        	setne  cl
  74b9fd:	88 8e d6 0a 00 00                               	mov    BYTE PTR [esi+0xad6],cl
  74ba03:	f6 c3 20                                        	test   bl,0x20
  74ba06:	74 06                                           	je     0x74ba0e
  74ba08:	89 be e0 0a 00 00                               	mov    DWORD PTR [esi+0xae0],edi
  74ba0e:	f6 c3 40                                        	test   bl,0x40
  74ba11:	74 0d                                           	je     0x74ba20
  74ba13:	c6 86 d8 0a 00 00 01                            	mov    BYTE PTR [esi+0xad8],0x1
  74ba1a:	89 be dc 0a 00 00                               	mov    DWORD PTR [esi+0xadc],edi
  74ba20:	84 db                                           	test   bl,bl
  74ba22:	79 07                                           	jns    0x74ba2b
  74ba24:	c6 86 d8 0a 00 00 00                            	mov    BYTE PTR [esi+0xad8],0x0
  74ba2b:	f7 c3 00 02 00 00                               	test   ebx,0x200
  74ba31:	74 0b                                           	je     0x74ba3e
  74ba33:	85 ff                                           	test   edi,edi
  74ba35:	0f 95 c2                                        	setne  dl
  74ba38:	88 96 d9 0a 00 00                               	mov    BYTE PTR [esi+0xad9],dl
  74ba3e:	f7 c3 00 04 00 00                               	test   ebx,0x400
  74ba44:	74 0c                                           	je     0x74ba52
  74ba46:	57                                              	push   edi
  74ba47:	8d 8e 90 09 00 00                               	lea    ecx,[esi+0x990]
  74ba4d:	e8 de c2 0c 00                                  	call   0x817d30
  74ba52:	81 e3 00 08 00 00                               	and    ebx,0x800
  74ba58:	74 0c                                           	je     0x74ba66
  74ba5a:	57                                              	push   edi
  74ba5b:	8d 8e 90 09 00 00                               	lea    ecx,[esi+0x990]
  74ba61:	e8 fa ab 0c 00                                  	call   0x816660
  74ba66:	5f                                              	pop    edi
  74ba67:	85 db                                           	test   ebx,ebx
  74ba69:	5b                                              	pop    ebx
  74ba6a:	74 0c                                           	je     0x74ba78
  74ba6c:	8d 8e 90 09 00 00                               	lea    ecx,[esi+0x990]
  74ba72:	5e                                              	pop    esi
  74ba73:	e9 78 a3 0c 00                                  	jmp    0x815df0
  74ba78:	5e                                              	pop    esi
  74ba79:	c3                                              	ret
  74ba7a:	cc                                              	int3
  74ba7b:	cc                                              	int3
  74ba7c:	cc                                              	int3
  74ba7d:	cc                                              	int3
  74ba7e:	cc                                              	int3
  74ba7f:	cc                                              	int3
