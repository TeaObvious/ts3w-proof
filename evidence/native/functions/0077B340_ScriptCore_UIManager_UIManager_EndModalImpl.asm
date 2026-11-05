# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b340 (ScriptCore.UIManager::UIManager_EndModalImpl)
Paired Ghidra pseudocode: 0077B340_ScriptCore_UIManager_UIManager_EndModalImpl.c
Window: [0x0077b340, 0x0077b3a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b3a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b340: 56 e8 4a e0 fe ff 8b 4c 24 08 8b d1 81 e2 00 00
0077b350: 00 ff 81 fa 00 00 00 30 75 3b 8b 10 51 8b c8 8b
0077b360: 82 cc 00 00 00 ff d0 85 c0 74 2a 8b 10 8b c8 8b
0077b370: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 16 e8
0077b380: 0c fc d8 ff 8b 10 6a 00 8b c8 8b 82 84 00 00 00
0077b390: 56 ff d0 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b340 <.text+0x37a340>:
  77b340:	56                                              	push   esi
  77b341:	e8 4a e0 fe ff                                  	call   0x769390
  77b346:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b34a:	8b d1                                           	mov    edx,ecx
  77b34c:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b352:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b358:	75 3b                                           	jne    0x77b395
  77b35a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b35c:	51                                              	push   ecx
  77b35d:	8b c8                                           	mov    ecx,eax
  77b35f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b365:	ff d0                                           	call   eax
  77b367:	85 c0                                           	test   eax,eax
  77b369:	74 2a                                           	je     0x77b395
  77b36b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b36d:	8b c8                                           	mov    ecx,eax
  77b36f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b372:	68 18 82 ee ee                                  	push   0xeeee8218
  77b377:	ff d0                                           	call   eax
  77b379:	8b f0                                           	mov    esi,eax
  77b37b:	85 f6                                           	test   esi,esi
  77b37d:	74 16                                           	je     0x77b395
  77b37f:	e8 0c fc d8 ff                                  	call   0x50af90
  77b384:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b386:	6a 00                                           	push   0x0
  77b388:	8b c8                                           	mov    ecx,eax
  77b38a:	8b 82 84 00 00 00                               	mov    eax,DWORD PTR [edx+0x84]
  77b390:	56                                              	push   esi
  77b391:	ff d0                                           	call   eax
  77b393:	5e                                              	pop    esi
  77b394:	c3                                              	ret
  77b395:	32 c0                                           	xor    al,al
  77b397:	5e                                              	pop    esi
  77b398:	c3                                              	ret
  77b399:	cc                                              	int3
  77b39a:	cc                                              	int3
  77b39b:	cc                                              	int3
  77b39c:	cc                                              	int3
  77b39d:	cc                                              	int3
  77b39e:	cc                                              	int3
  77b39f:	cc                                              	int3
