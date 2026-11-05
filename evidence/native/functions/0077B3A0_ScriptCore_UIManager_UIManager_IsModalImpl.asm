# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b3a0 (ScriptCore.UIManager::UIManager_IsModalImpl)
Paired Ghidra pseudocode: 0077B3A0_ScriptCore_UIManager_UIManager_IsModalImpl.c
Window: [0x0077b3a0, 0x0077b400) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b3a0: 56 e8 ea df fe ff 8b 4c 24 08 8b d1 81 e2 00 00
0077b3b0: 00 ff 81 fa 00 00 00 30 75 39 8b 10 51 8b c8 8b
0077b3c0: 82 cc 00 00 00 ff d0 85 c0 74 28 8b 10 8b c8 8b
0077b3d0: 42 0c 68 18 82 ee ee ff d0 8b f0 85 f6 74 14 e8
0077b3e0: ac fb d8 ff 8b 10 8b c8 8b 82 88 00 00 00 56 ff
0077b3f0: d0 5e c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b3a0 <.text+0x37a3a0>:
  77b3a0:	56                                              	push   esi
  77b3a1:	e8 ea df fe ff                                  	call   0x769390
  77b3a6:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77b3aa:	8b d1                                           	mov    edx,ecx
  77b3ac:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b3b2:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b3b8:	75 39                                           	jne    0x77b3f3
  77b3ba:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b3bc:	51                                              	push   ecx
  77b3bd:	8b c8                                           	mov    ecx,eax
  77b3bf:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b3c5:	ff d0                                           	call   eax
  77b3c7:	85 c0                                           	test   eax,eax
  77b3c9:	74 28                                           	je     0x77b3f3
  77b3cb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b3cd:	8b c8                                           	mov    ecx,eax
  77b3cf:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b3d2:	68 18 82 ee ee                                  	push   0xeeee8218
  77b3d7:	ff d0                                           	call   eax
  77b3d9:	8b f0                                           	mov    esi,eax
  77b3db:	85 f6                                           	test   esi,esi
  77b3dd:	74 14                                           	je     0x77b3f3
  77b3df:	e8 ac fb d8 ff                                  	call   0x50af90
  77b3e4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b3e6:	8b c8                                           	mov    ecx,eax
  77b3e8:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  77b3ee:	56                                              	push   esi
  77b3ef:	ff d0                                           	call   eax
  77b3f1:	5e                                              	pop    esi
  77b3f2:	c3                                              	ret
  77b3f3:	32 c0                                           	xor    al,al
  77b3f5:	5e                                              	pop    esi
  77b3f6:	c3                                              	ret
  77b3f7:	cc                                              	int3
  77b3f8:	cc                                              	int3
  77b3f9:	cc                                              	int3
  77b3fa:	cc                                              	int3
  77b3fb:	cc                                              	int3
  77b3fc:	cc                                              	int3
  77b3fd:	cc                                              	int3
  77b3fe:	cc                                              	int3
  77b3ff:	cc                                              	int3
