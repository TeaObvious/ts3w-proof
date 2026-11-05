# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f360 (ScriptCore.World::World_ObjectPlayVideoFromKey)
Paired Ghidra pseudocode: 0078F360_ScriptCore_World_World_ObjectPlayVideoFromKey.c
Window: [0x0078f360, 0x0078f3d0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f3d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f360: 53 55 56 57 e8 07 82 1a 00 85 c0 74 57 8b 5c 24
0078f370: 18 8b 6c 24 14 53 55 8b c8 e8 02 8c 1a 00 85 c0
0078f380: 74 42 e8 09 a0 fd ff e8 f4 0a d2 ff 8b 44 24 2c
0078f390: 8b 4c 24 24 8b 54 24 28 8b 74 24 1c 8b 7c 24 20
0078f3a0: 6a 01 6a 01 50 83 ec 10 8b c4 89 08 89 50 04 53
0078f3b0: 89 70 08 55 89 78 0c e8 64 f9 ff ff 83 c4 24 5f
0078f3c0: 5e 5d 5b c3 5f 5e 5d 33 c0 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0078f360 <.text+0x38e360>:
  78f360:	53                                              	push   ebx
  78f361:	55                                              	push   ebp
  78f362:	56                                              	push   esi
  78f363:	57                                              	push   edi
  78f364:	e8 07 82 1a 00                                  	call   0x937570
  78f369:	85 c0                                           	test   eax,eax
  78f36b:	74 57                                           	je     0x78f3c4
  78f36d:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  78f371:	8b 6c 24 14                                     	mov    ebp,DWORD PTR [esp+0x14]
  78f375:	53                                              	push   ebx
  78f376:	55                                              	push   ebp
  78f377:	8b c8                                           	mov    ecx,eax
  78f379:	e8 02 8c 1a 00                                  	call   0x937f80
  78f37e:	85 c0                                           	test   eax,eax
  78f380:	74 42                                           	je     0x78f3c4
  78f382:	e8 09 a0 fd ff                                  	call   0x769390
  78f387:	e8 f4 0a d2 ff                                  	call   0x4afe80
  78f38c:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78f390:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  78f394:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  78f398:	8b 74 24 1c                                     	mov    esi,DWORD PTR [esp+0x1c]
  78f39c:	8b 7c 24 20                                     	mov    edi,DWORD PTR [esp+0x20]
  78f3a0:	6a 01                                           	push   0x1
  78f3a2:	6a 01                                           	push   0x1
  78f3a4:	50                                              	push   eax
  78f3a5:	83 ec 10                                        	sub    esp,0x10
  78f3a8:	8b c4                                           	mov    eax,esp
  78f3aa:	89 08                                           	mov    DWORD PTR [eax],ecx
  78f3ac:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  78f3af:	53                                              	push   ebx
  78f3b0:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
  78f3b3:	55                                              	push   ebp
  78f3b4:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
  78f3b7:	e8 64 f9 ff ff                                  	call   0x78ed20
  78f3bc:	83 c4 24                                        	add    esp,0x24
  78f3bf:	5f                                              	pop    edi
  78f3c0:	5e                                              	pop    esi
  78f3c1:	5d                                              	pop    ebp
  78f3c2:	5b                                              	pop    ebx
  78f3c3:	c3                                              	ret
  78f3c4:	5f                                              	pop    edi
  78f3c5:	5e                                              	pop    esi
  78f3c6:	5d                                              	pop    ebp
  78f3c7:	33 c0                                           	xor    eax,eax
  78f3c9:	5b                                              	pop    ebx
  78f3ca:	c3                                              	ret
  78f3cb:	cc                                              	int3
  78f3cc:	cc                                              	int3
  78f3cd:	cc                                              	int3
  78f3ce:	cc                                              	int3
  78f3cf:	cc                                              	int3
