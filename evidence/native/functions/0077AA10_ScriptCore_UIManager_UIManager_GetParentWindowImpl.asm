# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077aa10 (ScriptCore.UIManager::UIManager_GetParentWindowImpl)
Paired Ghidra pseudocode: 0077AA10_ScriptCore_UIManager_UIManager_GetParentWindowImpl.c
Window: [0x0077aa10, 0x0077aa80) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077aa80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077aa10: 56 57 e8 79 e9 fe ff 8b f8 8b 44 24 0c 8b c8 81
0077aa20: e1 00 00 00 ff 81 f9 00 00 00 30 75 4c 8b 17 50
0077aa30: 8b 82 cc 00 00 00 8b cf ff d0 85 c0 74 3b 8b 10
0077aa40: 8b c8 8b 42 0c 68 18 82 ee ee ff d0 85 c0 74 29
0077aa50: 8b 10 8b c8 8b 42 10 ff d0 8b f0 85 f6 74 1a 8b
0077aa60: 16 8b 02 8b ce ff d0 8b 17 8b 82 c8 00 00 00 6a
0077aa70: 30 56 8b cf ff d0 5f 5e c3 5f 33 c0 5e c3 cc cc

LINEAR DISASSEMBLY
0077aa10 <.text+0x379a10>:
  77aa10:	56                                              	push   esi
  77aa11:	57                                              	push   edi
  77aa12:	e8 79 e9 fe ff                                  	call   0x769390
  77aa17:	8b f8                                           	mov    edi,eax
  77aa19:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77aa1d:	8b c8                                           	mov    ecx,eax
  77aa1f:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77aa25:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77aa2b:	75 4c                                           	jne    0x77aa79
  77aa2d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77aa2f:	50                                              	push   eax
  77aa30:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77aa36:	8b cf                                           	mov    ecx,edi
  77aa38:	ff d0                                           	call   eax
  77aa3a:	85 c0                                           	test   eax,eax
  77aa3c:	74 3b                                           	je     0x77aa79
  77aa3e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aa40:	8b c8                                           	mov    ecx,eax
  77aa42:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77aa45:	68 18 82 ee ee                                  	push   0xeeee8218
  77aa4a:	ff d0                                           	call   eax
  77aa4c:	85 c0                                           	test   eax,eax
  77aa4e:	74 29                                           	je     0x77aa79
  77aa50:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aa52:	8b c8                                           	mov    ecx,eax
  77aa54:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77aa57:	ff d0                                           	call   eax
  77aa59:	8b f0                                           	mov    esi,eax
  77aa5b:	85 f6                                           	test   esi,esi
  77aa5d:	74 1a                                           	je     0x77aa79
  77aa5f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77aa61:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77aa63:	8b ce                                           	mov    ecx,esi
  77aa65:	ff d0                                           	call   eax
  77aa67:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77aa69:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  77aa6f:	6a 30                                           	push   0x30
  77aa71:	56                                              	push   esi
  77aa72:	8b cf                                           	mov    ecx,edi
  77aa74:	ff d0                                           	call   eax
  77aa76:	5f                                              	pop    edi
  77aa77:	5e                                              	pop    esi
  77aa78:	c3                                              	ret
  77aa79:	5f                                              	pop    edi
  77aa7a:	33 c0                                           	xor    eax,eax
  77aa7c:	5e                                              	pop    esi
  77aa7d:	c3                                              	ret
  77aa7e:	cc                                              	int3
  77aa7f:	cc                                              	int3
