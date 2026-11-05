# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d3b0 (ScriptCore.UIManager::UIManager_ButtonAutoSizeImpl)
Paired Ghidra pseudocode: 0077D3B0_ScriptCore_UIManager_UIManager_ButtonAutoSizeImpl.c
Window: [0x0077d3b0, 0x0077d400) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d400
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d3b0: e8 db bf fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077d3c0: ff 81 fa 00 00 00 30 75 2c 8b 10 51 8b c8 8b 82
0077d3d0: cc 00 00 00 ff d0 85 c0 74 1b 8b 10 8b c8 8b 42
0077d3e0: 0c 68 7a 7e d2 8e ff d0 85 c0 74 09 8b 10 8b c8
0077d3f0: 8b 42 14 ff e0 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077d3b0 <.text+0x37c3b0>:
  77d3b0:	e8 db bf fe ff                                  	call   0x769390
  77d3b5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d3b9:	8b d1                                           	mov    edx,ecx
  77d3bb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77d3c1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77d3c7:	75 2c                                           	jne    0x77d3f5
  77d3c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d3cb:	51                                              	push   ecx
  77d3cc:	8b c8                                           	mov    ecx,eax
  77d3ce:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77d3d4:	ff d0                                           	call   eax
  77d3d6:	85 c0                                           	test   eax,eax
  77d3d8:	74 1b                                           	je     0x77d3f5
  77d3da:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d3dc:	8b c8                                           	mov    ecx,eax
  77d3de:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d3e1:	68 7a 7e d2 8e                                  	push   0x8ed27e7a
  77d3e6:	ff d0                                           	call   eax
  77d3e8:	85 c0                                           	test   eax,eax
  77d3ea:	74 09                                           	je     0x77d3f5
  77d3ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d3ee:	8b c8                                           	mov    ecx,eax
  77d3f0:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  77d3f3:	ff e0                                           	jmp    eax
  77d3f5:	c3                                              	ret
  77d3f6:	cc                                              	int3
  77d3f7:	cc                                              	int3
  77d3f8:	cc                                              	int3
  77d3f9:	cc                                              	int3
  77d3fa:	cc                                              	int3
  77d3fb:	cc                                              	int3
  77d3fc:	cc                                              	int3
  77d3fd:	cc                                              	int3
  77d3fe:	cc                                              	int3
  77d3ff:	cc                                              	int3
