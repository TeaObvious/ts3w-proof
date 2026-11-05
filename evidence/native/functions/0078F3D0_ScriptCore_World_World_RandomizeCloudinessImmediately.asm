# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078f3d0 (ScriptCore.World::World_RandomizeCloudinessImmediately)
Paired Ghidra pseudocode: 0078F3D0_ScriptCore_World_World_RandomizeCloudinessImmediately.c
Window: [0x0078f3d0, 0x0078f450) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078f450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078f3d0: 57 e8 1a d1 cb ff 8b f8 85 ff 74 6e 56 6a 00 6a
0078f3e0: 00 6a 00 6a 00 68 44 1a 01 01 6a 18 e8 0f 51 d5
0078f3f0: ff 83 c4 18 85 c0 74 4e c7 40 10 00 00 00 00 c7
0078f400: 00 1c c9 06 01 33 c9 8d 50 04 87 0a c7 00 1c c9
0078f410: 06 01 8b 10 8b f0 8b c8 8b 42 04 ff d0 f3 0f 10
0078f420: 44 24 0c 6a 00 6a 00 f3 0f 11 46 08 8b 17 8b 42
0078f430: 1c 56 68 be 44 e8 0d 8b cf ff d0 8b 16 8b 42 08
0078f440: 8b ce 5e 5f ff e0 33 f6 eb d3 5f c3 cc cc cc cc

LINEAR DISASSEMBLY
0078f3d0 <.text+0x38e3d0>:
  78f3d0:	57                                              	push   edi
  78f3d1:	e8 1a d1 cb ff                                  	call   0x44c4f0
  78f3d6:	8b f8                                           	mov    edi,eax
  78f3d8:	85 ff                                           	test   edi,edi
  78f3da:	74 6e                                           	je     0x78f44a
  78f3dc:	56                                              	push   esi
  78f3dd:	6a 00                                           	push   0x0
  78f3df:	6a 00                                           	push   0x0
  78f3e1:	6a 00                                           	push   0x0
  78f3e3:	6a 00                                           	push   0x0
  78f3e5:	68 44 1a 01 01                                  	push   0x1011a44
  78f3ea:	6a 18                                           	push   0x18
  78f3ec:	e8 0f 51 d5 ff                                  	call   0x4e4500
  78f3f1:	83 c4 18                                        	add    esp,0x18
  78f3f4:	85 c0                                           	test   eax,eax
  78f3f6:	74 4e                                           	je     0x78f446
  78f3f8:	c7 40 10 00 00 00 00                            	mov    DWORD PTR [eax+0x10],0x0
  78f3ff:	c7 00 1c c9 06 01                               	mov    DWORD PTR [eax],0x106c91c
  78f405:	33 c9                                           	xor    ecx,ecx
  78f407:	8d 50 04                                        	lea    edx,[eax+0x4]
  78f40a:	87 0a                                           	xchg   DWORD PTR [edx],ecx
  78f40c:	c7 00 1c c9 06 01                               	mov    DWORD PTR [eax],0x106c91c
  78f412:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78f414:	8b f0                                           	mov    esi,eax
  78f416:	8b c8                                           	mov    ecx,eax
  78f418:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78f41b:	ff d0                                           	call   eax
  78f41d:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
  78f423:	6a 00                                           	push   0x0
  78f425:	6a 00                                           	push   0x0
  78f427:	f3 0f 11 46 08                                  	movss  DWORD PTR [esi+0x8],xmm0
  78f42c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78f42e:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  78f431:	56                                              	push   esi
  78f432:	68 be 44 e8 0d                                  	push   0xde844be
  78f437:	8b cf                                           	mov    ecx,edi
  78f439:	ff d0                                           	call   eax
  78f43b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78f43d:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  78f440:	8b ce                                           	mov    ecx,esi
  78f442:	5e                                              	pop    esi
  78f443:	5f                                              	pop    edi
  78f444:	ff e0                                           	jmp    eax
  78f446:	33 f6                                           	xor    esi,esi
  78f448:	eb d3                                           	jmp    0x78f41d
  78f44a:	5f                                              	pop    edi
  78f44b:	c3                                              	ret
  78f44c:	cc                                              	int3
  78f44d:	cc                                              	int3
  78f44e:	cc                                              	int3
  78f44f:	cc                                              	int3
