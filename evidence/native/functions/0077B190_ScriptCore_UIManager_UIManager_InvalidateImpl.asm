# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077b190 (ScriptCore.UIManager::UIManager_InvalidateImpl)
Paired Ghidra pseudocode: 0077B190_ScriptCore_UIManager_UIManager_InvalidateImpl.c
Window: [0x0077b190, 0x0077b1e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077b1e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077b190: e8 fb e1 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077b1a0: ff 81 fa 00 00 00 30 75 2f 8b 10 51 8b c8 8b 82
0077b1b0: cc 00 00 00 ff d0 85 c0 74 1e 8b 10 8b c8 8b 42
0077b1c0: 0c 68 18 82 ee ee ff d0 85 c0 74 0c 8b 10 8b c8
0077b1d0: 8b 82 90 00 00 00 ff e0 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077b190 <.text+0x37a190>:
  77b190:	e8 fb e1 fe ff                                  	call   0x769390
  77b195:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77b199:	8b d1                                           	mov    edx,ecx
  77b19b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77b1a1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77b1a7:	75 2f                                           	jne    0x77b1d8
  77b1a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b1ab:	51                                              	push   ecx
  77b1ac:	8b c8                                           	mov    ecx,eax
  77b1ae:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77b1b4:	ff d0                                           	call   eax
  77b1b6:	85 c0                                           	test   eax,eax
  77b1b8:	74 1e                                           	je     0x77b1d8
  77b1ba:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b1bc:	8b c8                                           	mov    ecx,eax
  77b1be:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77b1c1:	68 18 82 ee ee                                  	push   0xeeee8218
  77b1c6:	ff d0                                           	call   eax
  77b1c8:	85 c0                                           	test   eax,eax
  77b1ca:	74 0c                                           	je     0x77b1d8
  77b1cc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77b1ce:	8b c8                                           	mov    ecx,eax
  77b1d0:	8b 82 90 00 00 00                               	mov    eax,DWORD PTR [edx+0x90]
  77b1d6:	ff e0                                           	jmp    eax
  77b1d8:	c3                                              	ret
  77b1d9:	cc                                              	int3
  77b1da:	cc                                              	int3
  77b1db:	cc                                              	int3
  77b1dc:	cc                                              	int3
  77b1dd:	cc                                              	int3
  77b1de:	cc                                              	int3
  77b1df:	cc                                              	int3
