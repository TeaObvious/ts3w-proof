# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077a8c0 (ScriptCore.UIManager::UIManager_GetInstanceIDImpl)
Paired Ghidra pseudocode: 0077A8C0_ScriptCore_UIManager_UIManager_GetInstanceIDImpl.c
Window: [0x0077a8c0, 0x0077a910) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077a910
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077a8c0: e8 cb ea fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077a8d0: ff 81 fa 00 00 00 30 75 2c 8b 10 51 8b c8 8b 82
0077a8e0: cc 00 00 00 ff d0 85 c0 74 1b 8b 10 8b c8 8b 42
0077a8f0: 0c 68 18 82 ee ee ff d0 85 c0 74 09 8b 10 8b c8
0077a900: 8b 42 18 ff e0 33 c0 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077a8c0 <.text+0x3798c0>:
  77a8c0:	e8 cb ea fe ff                                  	call   0x769390
  77a8c5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77a8c9:	8b d1                                           	mov    edx,ecx
  77a8cb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77a8d1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77a8d7:	75 2c                                           	jne    0x77a905
  77a8d9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a8db:	51                                              	push   ecx
  77a8dc:	8b c8                                           	mov    ecx,eax
  77a8de:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77a8e4:	ff d0                                           	call   eax
  77a8e6:	85 c0                                           	test   eax,eax
  77a8e8:	74 1b                                           	je     0x77a905
  77a8ea:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a8ec:	8b c8                                           	mov    ecx,eax
  77a8ee:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77a8f1:	68 18 82 ee ee                                  	push   0xeeee8218
  77a8f6:	ff d0                                           	call   eax
  77a8f8:	85 c0                                           	test   eax,eax
  77a8fa:	74 09                                           	je     0x77a905
  77a8fc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77a8fe:	8b c8                                           	mov    ecx,eax
  77a900:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  77a903:	ff e0                                           	jmp    eax
  77a905:	33 c0                                           	xor    eax,eax
  77a907:	c3                                              	ret
  77a908:	cc                                              	int3
  77a909:	cc                                              	int3
  77a90a:	cc                                              	int3
  77a90b:	cc                                              	int3
  77a90c:	cc                                              	int3
  77a90d:	cc                                              	int3
  77a90e:	cc                                              	int3
  77a90f:	cc                                              	int3
