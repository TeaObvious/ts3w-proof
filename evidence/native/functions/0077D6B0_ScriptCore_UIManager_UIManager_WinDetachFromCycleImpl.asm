# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d6b0 (ScriptCore.UIManager::UIManager_WinDetachFromCycleImpl)
Paired Ghidra pseudocode: 0077D6B0_ScriptCore_UIManager_UIManager_WinDetachFromCycleImpl.c
Window: [0x0077d6b0, 0x0077d6f0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d6f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d6b0: e8 db bc fe ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0077d6c0: 00 51 8b c8 ff d2 85 c0 74 20 8b 10 8b c8 8b 42
0077d6d0: 0c 68 18 82 ee ee ff d0 85 c0 74 0e 8b 10 8b c8
0077d6e0: 8b 82 88 00 00 00 6a 00 ff d0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0077d6b0 <.text+0x37c6b0>:
  77d6b0:	e8 db bc fe ff                                  	call   0x769390
  77d6b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d6b9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d6bb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  77d6c1:	51                                              	push   ecx
  77d6c2:	8b c8                                           	mov    ecx,eax
  77d6c4:	ff d2                                           	call   edx
  77d6c6:	85 c0                                           	test   eax,eax
  77d6c8:	74 20                                           	je     0x77d6ea
  77d6ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d6cc:	8b c8                                           	mov    ecx,eax
  77d6ce:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d6d1:	68 18 82 ee ee                                  	push   0xeeee8218
  77d6d6:	ff d0                                           	call   eax
  77d6d8:	85 c0                                           	test   eax,eax
  77d6da:	74 0e                                           	je     0x77d6ea
  77d6dc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d6de:	8b c8                                           	mov    ecx,eax
  77d6e0:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  77d6e6:	6a 00                                           	push   0x0
  77d6e8:	ff d0                                           	call   eax
  77d6ea:	c3                                              	ret
  77d6eb:	cc                                              	int3
  77d6ec:	cc                                              	int3
  77d6ed:	cc                                              	int3
  77d6ee:	cc                                              	int3
  77d6ef:	cc                                              	int3
