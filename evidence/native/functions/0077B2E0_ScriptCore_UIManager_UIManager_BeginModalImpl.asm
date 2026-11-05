# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b2e0 (ScriptCore.UIManager::UIManager_BeginModalImpl)
Paired Ghidra pseudocode: 0077B2E0_ScriptCore_UIManager_UIManager_BeginModalImpl.c
Window: [0x0077b2e0, 0x0077b340) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b340
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b2e0: 56 e8 aa e0 fe ff 8b 4c 24 08 8b d1 81 e2 00 00
0077b2f0: 00 ff 81 fa 00 00 00 30 75 3b 8b 10 51 8b c8 8b
0077b300: 82 cc 00 00 00 ff d0 85 c0 74 2a 8b 10 8b c8 8b
0077b310: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 16 e8
0077b320: 6c fc d8 ff 8b 10 6a 00 8b c8 8b 82 80 00 00 00
0077b330: 56 ff d0 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b2e0 <.text+0x37a2e0>:
  77b2e0:	56                                              	push   esi
  77b2e1:	e8 aa e0 fe ff                                  	call   0x769390
  77b2e6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b2ea:	8b d1                                           	mov    edx,ecx
  77b2ec:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b2f2:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b2f8:	75 3b                                           	jne    0x77b335
  77b2fa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b2fc:	51                                              	push   ecx
  77b2fd:	8b c8                                           	mov    ecx,eax
  77b2ff:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b305:	ff d0                                           	call   eax
  77b307:	85 c0                                           	test   eax,eax
  77b309:	74 2a                                           	je     0x77b335
  77b30b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b30d:	8b c8                                           	mov    ecx,eax
  77b30f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b312:	68 18 82 ee ee                                  	push   0xeeee8218
  77b317:	ff d0                                           	call   eax
  77b319:	8b f0                                           	mov    esi,eax
  77b31b:	85 f6                                           	test   esi,esi
  77b31d:	74 16                                           	je     0x77b335
  77b31f:	e8 6c fc d8 ff                                  	call   0x50af90
  77b324:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b326:	6a 00                                           	push   0x0
  77b328:	8b c8                                           	mov    ecx,eax
  77b32a:	8b 82 80 00 00 00                               	mov    eax,DWORD PTR [edx+0x80]
  77b330:	56                                              	push   esi
  77b331:	ff d0                                           	call   eax
  77b333:	5e                                              	pop    esi
  77b334:	c3                                              	ret
  77b335:	32 c0                                           	xor    al,al
  77b337:	5e                                              	pop    esi
  77b338:	c3                                              	ret
  77b339:	cc                                              	int3
  77b33a:	cc                                              	int3
  77b33b:	cc                                              	int3
  77b33c:	cc                                              	int3
  77b33d:	cc                                              	int3
  77b33e:	cc                                              	int3
  77b33f:	cc                                              	int3
