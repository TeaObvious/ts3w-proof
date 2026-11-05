# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077d400 (ScriptCore.UIManager::UIManager_TextAutoSizeImpl)
Paired Ghidra pseudocode: 0077D400_ScriptCore_UIManager_UIManager_TextAutoSizeImpl.c
Window: [0x0077d400, 0x0077d450) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077d450
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077d400: e8 8b bf fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077d410: ff 81 fa 00 00 00 30 75 31 8b 10 51 8b c8 8b 82
0077d420: cc 00 00 00 ff d0 85 c0 74 20 8b 10 8b c8 8b 42
0077d430: 0c 68 bd f4 15 0f ff d0 85 c0 74 0e 8b 4c 24 08
0077d440: 8b 10 8b 52 14 51 8b c8 ff d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0077d400 <.text+0x37c400>:
  77d400:	e8 8b bf fe ff                                  	call   0x769390
  77d405:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77d409:	8b d1                                           	mov    edx,ecx
  77d40b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77d411:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77d417:	75 31                                           	jne    0x77d44a
  77d419:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d41b:	51                                              	push   ecx
  77d41c:	8b c8                                           	mov    ecx,eax
  77d41e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77d424:	ff d0                                           	call   eax
  77d426:	85 c0                                           	test   eax,eax
  77d428:	74 20                                           	je     0x77d44a
  77d42a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d42c:	8b c8                                           	mov    ecx,eax
  77d42e:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77d431:	68 bd f4 15 0f                                  	push   0xf15f4bd
  77d436:	ff d0                                           	call   eax
  77d438:	85 c0                                           	test   eax,eax
  77d43a:	74 0e                                           	je     0x77d44a
  77d43c:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  77d440:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77d442:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  77d445:	51                                              	push   ecx
  77d446:	8b c8                                           	mov    ecx,eax
  77d448:	ff d2                                           	call   edx
  77d44a:	c3                                              	ret
  77d44b:	cc                                              	int3
  77d44c:	cc                                              	int3
  77d44d:	cc                                              	int3
  77d44e:	cc                                              	int3
  77d44f:	cc                                              	int3
