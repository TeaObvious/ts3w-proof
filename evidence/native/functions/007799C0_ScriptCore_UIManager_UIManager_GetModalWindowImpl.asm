# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007799c0 (ScriptCore.UIManager::UIManager_GetModalWindowImpl)
Paired Ghidra pseudocode: 007799C0_ScriptCore_UIManager_UIManager_GetModalWindowImpl.c
Window: [0x007799c0, 0x00779a00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007799c0: 56 57 e8 c9 f9 fe ff 8b f8 e8 c2 15 d9 ff 8b 10
007799d0: 8b c8 8b 82 8c 00 00 00 ff d0 8b f0 85 f6 74 1a
007799e0: 8b 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00 00
007799f0: 6a 30 56 8b cf ff d0 5f 5e c3 5f 33 c0 5e c3 cc

LINEAR DISASSEMBLY
007799c0 <.text+0x3789c0>:
  7799c0:	56                                              	push   esi
  7799c1:	57                                              	push   edi
  7799c2:	e8 c9 f9 fe ff                                  	call   0x769390
  7799c7:	8b f8                                           	mov    edi,eax
  7799c9:	e8 c2 15 d9 ff                                  	call   0x50af90
  7799ce:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7799d0:	8b c8                                           	mov    ecx,eax
  7799d2:	8b 82 8c 00 00 00                               	mov    eax,DWORD PTR [edx+0x8c]
  7799d8:	ff d0                                           	call   eax
  7799da:	8b f0                                           	mov    esi,eax
  7799dc:	85 f6                                           	test   esi,esi
  7799de:	74 1a                                           	je     0x7799fa
  7799e0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7799e2:	8b 02                                           	mov    eax,DWORD PTR [edx]
  7799e4:	8b ce                                           	mov    ecx,esi
  7799e6:	ff d0                                           	call   eax
  7799e8:	8b 17                                           	mov    edx,DWORD PTR [edi]
  7799ea:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  7799f0:	6a 30                                           	push   0x30
  7799f2:	56                                              	push   esi
  7799f3:	8b cf                                           	mov    ecx,edi
  7799f5:	ff d0                                           	call   eax
  7799f7:	5f                                              	pop    edi
  7799f8:	5e                                              	pop    esi
  7799f9:	c3                                              	ret
  7799fa:	5f                                              	pop    edi
  7799fb:	33 c0                                           	xor    eax,eax
  7799fd:	5e                                              	pop    esi
  7799fe:	c3                                              	ret
  7799ff:	cc                                              	int3
