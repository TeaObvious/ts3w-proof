# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ac50 (ScriptCore.UIManager::UIManager_RemoveFromTopWindowImpl)
Paired Ghidra pseudocode: 0077AC50_ScriptCore_UIManager_UIManager_RemoveFromTopWindowImpl.c
Window: [0x0077ac50, 0x0077acd0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077acd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ac50: e8 3b e7 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077ac60: ff 81 fa 00 00 00 30 75 5d 8b 10 56 51 8b c8 8b
0077ac70: 82 cc 00 00 00 ff d0 85 c0 74 12 8b 10 8b c8 8b
0077ac80: 42 0c 68 18 82 ee ee ff d0 8b f0 eb 02 33 f6 e8
0077ac90: fc 02 d9 ff 8b 10 8b c8 8b 42 04 ff d0 85 f6 74
0077aca0: 24 8b 4c 24 0c 8b 10 8b 92 f4 00 00 00 6a 01 51
0077acb0: 8b c8 ff d2 85 c0 74 0d 8b 10 8b c8 8b 82 e0 00
0077acc0: 00 00 56 ff d0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077ac50 <.text+0x379c50>:
  77ac50:	e8 3b e7 fe ff                                  	call   0x769390
  77ac55:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77ac59:	8b d1                                           	mov    edx,ecx
  77ac5b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77ac61:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77ac67:	75 5d                                           	jne    0x77acc6
  77ac69:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac6b:	56                                              	push   esi
  77ac6c:	51                                              	push   ecx
  77ac6d:	8b c8                                           	mov    ecx,eax
  77ac6f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ac75:	ff d0                                           	call   eax
  77ac77:	85 c0                                           	test   eax,eax
  77ac79:	74 12                                           	je     0x77ac8d
  77ac7b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac7d:	8b c8                                           	mov    ecx,eax
  77ac7f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ac82:	68 18 82 ee ee                                  	push   0xeeee8218
  77ac87:	ff d0                                           	call   eax
  77ac89:	8b f0                                           	mov    esi,eax
  77ac8b:	eb 02                                           	jmp    0x77ac8f
  77ac8d:	33 f6                                           	xor    esi,esi
  77ac8f:	e8 fc 02 d9 ff                                  	call   0x50af90
  77ac94:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ac96:	8b c8                                           	mov    ecx,eax
  77ac98:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  77ac9b:	ff d0                                           	call   eax
  77ac9d:	85 f6                                           	test   esi,esi
  77ac9f:	74 24                                           	je     0x77acc5
  77aca1:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  77aca5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aca7:	8b 92 f4 00 00 00                               	mov    edx,DWORD PTR [edx+0xf4]
  77acad:	6a 01                                           	push   0x1
  77acaf:	51                                              	push   ecx
  77acb0:	8b c8                                           	mov    ecx,eax
  77acb2:	ff d2                                           	call   edx
  77acb4:	85 c0                                           	test   eax,eax
  77acb6:	74 0d                                           	je     0x77acc5
  77acb8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77acba:	8b c8                                           	mov    ecx,eax
  77acbc:	8b 82 e0 00 00 00                               	mov    eax,DWORD PTR [edx+0xe0]
  77acc2:	56                                              	push   esi
  77acc3:	ff d0                                           	call   eax
  77acc5:	5e                                              	pop    esi
  77acc6:	c3                                              	ret
  77acc7:	cc                                              	int3
  77acc8:	cc                                              	int3
  77acc9:	cc                                              	int3
  77acca:	cc                                              	int3
  77accb:	cc                                              	int3
  77accc:	cc                                              	int3
  77accd:	cc                                              	int3
  77acce:	cc                                              	int3
  77accf:	cc                                              	int3
