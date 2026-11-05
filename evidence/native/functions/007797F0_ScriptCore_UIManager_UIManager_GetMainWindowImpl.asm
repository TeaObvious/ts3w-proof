# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007797f0 (ScriptCore.UIManager::UIManager_GetMainWindowImpl)
Paired Ghidra pseudocode: 007797F0_ScriptCore_UIManager_UIManager_GetMainWindowImpl.c
Window: [0x007797f0, 0x00779830) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007797f0: 56 57 e8 99 fb fe ff 8b f8 e8 92 17 d9 ff 85 c0
00779800: 74 29 8b 10 8b c8 8b 42 04 ff d0 8b f0 85 f6 74
00779810: 1a 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00
00779820: 00 6a 30 56 8b cf ff d0 5f 5e c3 5f 33 c0 5e c3

LINEAR DISASSEMBLY
007797f0 <.text+0x3787f0>:
  7797f0:	56                                              	push   esi
  7797f1:	57                                              	push   edi
  7797f2:	e8 99 fb fe ff                                  	call   0x769390
  7797f7:	8b f8                                           	mov    edi,eax
  7797f9:	e8 92 17 d9 ff                                  	call   0x50af90
  7797fe:	85 c0                                           	test   eax,eax
  779800:	74 29                                           	je     0x77982b
  779802:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779804:	8b c8                                           	mov    ecx,eax
  779806:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  779809:	ff d0                                           	call   eax
  77980b:	8b f0                                           	mov    esi,eax
  77980d:	85 f6                                           	test   esi,esi
  77980f:	74 1a                                           	je     0x77982b
  779811:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779813:	8b 02                                           	mov    eax,DWORD PTR [edx]
  779815:	8b ce                                           	mov    ecx,esi
  779817:	ff d0                                           	call   eax
  779819:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77981b:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  779821:	6a 30                                           	push   0x30
  779823:	56                                              	push   esi
  779824:	8b cf                                           	mov    ecx,edi
  779826:	ff d0                                           	call   eax
  779828:	5f                                              	pop    edi
  779829:	5e                                              	pop    esi
  77982a:	c3                                              	ret
  77982b:	5f                                              	pop    edi
  77982c:	33 c0                                           	xor    eax,eax
  77982e:	5e                                              	pop    esi
  77982f:	c3                                              	ret
