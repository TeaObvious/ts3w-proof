# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077abd0 (ScriptCore.UIManager::UIManager_AddToTopWindowImpl)
Paired Ghidra pseudocode: 0077ABD0_ScriptCore_UIManager_UIManager_AddToTopWindowImpl.c
Window: [0x0077abd0, 0x0077ac50) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ac50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077abd0: e8 bb e7 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077abe0: ff 81 fa 00 00 00 30 75 5d 8b 10 56 51 8b c8 8b
0077abf0: 82 cc 00 00 00 ff d0 85 c0 74 12 8b 10 8b c8 8b
0077ac00: 42 0c 68 18 82 ee ee ff d0 8b f0 eb 02 33 f6 e8
0077ac10: 7c 03 d9 ff 8b 10 8b c8 8b 42 04 ff d0 85 f6 74
0077ac20: 24 8b 4c 24 0c 8b 10 8b 92 f4 00 00 00 6a 01 51
0077ac30: 8b c8 ff d2 85 c0 74 0d 8b 10 8b c8 8b 82 dc 00
0077ac40: 00 00 56 ff d0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077abd0 <.text+0x379bd0>:
  77abd0:	e8 bb e7 fe ff                                  	call   0x769390
  77abd5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77abd9:	8b d1                                           	mov    edx,ecx
  77abdb:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77abe1:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77abe7:	75 5d                                           	jne    0x77ac46
  77abe9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77abeb:	56                                              	push   esi
  77abec:	51                                              	push   ecx
  77abed:	8b c8                                           	mov    ecx,eax
  77abef:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77abf5:	ff d0                                           	call   eax
  77abf7:	85 c0                                           	test   eax,eax
  77abf9:	74 12                                           	je     0x77ac0d
  77abfb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77abfd:	8b c8                                           	mov    ecx,eax
  77abff:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ac02:	68 18 82 ee ee                                  	push   0xeeee8218
  77ac07:	ff d0                                           	call   eax
  77ac09:	8b f0                                           	mov    esi,eax
  77ac0b:	eb 02                                           	jmp    0x77ac0f
  77ac0d:	33 f6                                           	xor    esi,esi
  77ac0f:	e8 7c 03 d9 ff                                  	call   0x50af90
  77ac14:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac16:	8b c8                                           	mov    ecx,eax
  77ac18:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77ac1b:	ff d0                                           	call   eax
  77ac1d:	85 f6                                           	test   esi,esi
  77ac1f:	74 24                                           	je     0x77ac45
  77ac21:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77ac25:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac27:	8b 92 f4 00 00 00                               	mov    edx,DWORD PTR [edx+0xf4]
  77ac2d:	6a 01                                           	push   0x1
  77ac2f:	51                                              	push   ecx
  77ac30:	8b c8                                           	mov    ecx,eax
  77ac32:	ff d2                                           	call   edx
  77ac34:	85 c0                                           	test   eax,eax
  77ac36:	74 0d                                           	je     0x77ac45
  77ac38:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac3a:	8b c8                                           	mov    ecx,eax
  77ac3c:	8b 82 dc 00 00 00                               	mov    eax,DWORD PTR [edx+0xdc]
  77ac42:	56                                              	push   esi
  77ac43:	ff d0                                           	call   eax
  77ac45:	5e                                              	pop    esi
  77ac46:	c3                                              	ret
  77ac47:	cc                                              	int3
  77ac48:	cc                                              	int3
  77ac49:	cc                                              	int3
  77ac4a:	cc                                              	int3
  77ac4b:	cc                                              	int3
  77ac4c:	cc                                              	int3
  77ac4d:	cc                                              	int3
  77ac4e:	cc                                              	int3
  77ac4f:	cc                                              	int3
