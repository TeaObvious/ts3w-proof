# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a550 (ScriptCore.UIManager::UIManager_RegisterCustomControlDelegatesImpl)
Paired Ghidra pseudocode: 0077A550_ScriptCore_UIManager_UIManager_RegisterCustomControlDelegatesImpl.c
Window: [0x0077a550, 0x0077a5b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a5b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a550: e8 3b ee fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077a560: ff 81 fa 00 00 00 30 75 3e 8b 10 51 8b c8 8b 82
0077a570: cc 00 00 00 ff d0 85 c0 74 2d 8b 10 8b c8 8b 42
0077a580: 0c 68 68 b7 6b 05 ff d0 85 c0 74 1b 8b 4c 24 14
0077a590: 8b 54 24 10 51 8b 4c 24 10 52 8b 54 24 10 51 52
0077a5a0: 8b c8 e8 29 8e 06 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a550 <.text+0x379550>:
  77a550:	e8 3b ee fe ff                                  	call   0x769390
  77a555:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77a559:	8b d1                                           	mov    edx,ecx
  77a55b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77a561:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77a567:	75 3e                                           	jne    0x77a5a7
  77a569:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a56b:	51                                              	push   ecx
  77a56c:	8b c8                                           	mov    ecx,eax
  77a56e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77a574:	ff d0                                           	call   eax
  77a576:	85 c0                                           	test   eax,eax
  77a578:	74 2d                                           	je     0x77a5a7
  77a57a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a57c:	8b c8                                           	mov    ecx,eax
  77a57e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77a581:	68 68 b7 6b 05                                  	push   0x56bb768
  77a586:	ff d0                                           	call   eax
  77a588:	85 c0                                           	test   eax,eax
  77a58a:	74 1b                                           	je     0x77a5a7
  77a58c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77a590:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77a594:	51                                              	push   ecx
  77a595:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  77a599:	52                                              	push   edx
  77a59a:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77a59e:	51                                              	push   ecx
  77a59f:	52                                              	push   edx
  77a5a0:	8b c8                                           	mov    ecx,eax
  77a5a2:	e8 29 8e 06 00                                  	call   0x7e33d0
  77a5a7:	c3                                              	ret
  77a5a8:	cc                                              	int3
  77a5a9:	cc                                              	int3
  77a5aa:	cc                                              	int3
  77a5ab:	cc                                              	int3
  77a5ac:	cc                                              	int3
  77a5ad:	cc                                              	int3
  77a5ae:	cc                                              	int3
  77a5af:	cc                                              	int3
