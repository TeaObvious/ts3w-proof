# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ab00 (ScriptCore.UIManager::UIManager_GetChildByIndexImpl)
Paired Ghidra pseudocode: 0077AB00_ScriptCore_UIManager_UIManager_GetChildByIndexImpl.c
Window: [0x0077ab00, 0x0077abd0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077abd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ab00: 51 56 57 e8 88 e8 fe ff 8b f8 8b 44 24 10 8b c8
0077ab10: 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85 9f 00
0077ab20: 00 00 8b 17 50 8b 82 cc 00 00 00 8b cf ff d0 85
0077ab30: c0 0f 84 8a 00 00 00 8b 10 8b c8 8b 42 0c 68 18
0077ab40: 82 ee ee ff d0 8b f0 85 f6 74 76 8b 16 8b 92 d0
0077ab50: 00 00 00 8d 44 24 10 50 8b ce ff d2 8b 06 8b 90
0077ab60: d4 00 00 00 8d 4c 24 08 51 8b ce ff d2 8b 44 24
0077ab70: 10 8b 54 24 08 3b c2 8b 4c 24 14 74 14 8d 49 00
0077ab80: 85 c9 7e 0f 8b 00 83 e9 01 3b c2 89 44 24 10 75
0077ab90: ef 85 c9 75 2c 3b c2 74 28 8b 0d 94 ba fb 00 8d
0077aba0: 34 01 85 f6 74 1b 8b 16 8b 02 8b ce ff d0 8b 17
0077abb0: 8b 82 c8 00 00 00 6a 30 56 8b cf ff d0 5f 5e 59
0077abc0: c3 5f 33 c0 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077ab00 <.text+0x379b00>:
  77ab00:	51                                              	push   ecx
  77ab01:	56                                              	push   esi
  77ab02:	57                                              	push   edi
  77ab03:	e8 88 e8 fe ff                                  	call   0x769390
  77ab08:	8b f8                                           	mov    edi,eax
  77ab0a:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77ab0e:	8b c8                                           	mov    ecx,eax
  77ab10:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77ab16:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77ab1c:	0f 85 9f 00 00 00                               	jne    0x77abc1
  77ab22:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77ab24:	50                                              	push   eax
  77ab25:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ab2b:	8b cf                                           	mov    ecx,edi
  77ab2d:	ff d0                                           	call   eax
  77ab2f:	85 c0                                           	test   eax,eax
  77ab31:	0f 84 8a 00 00 00                               	je     0x77abc1
  77ab37:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ab39:	8b c8                                           	mov    ecx,eax
  77ab3b:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ab3e:	68 18 82 ee ee                                  	push   0xeeee8218
  77ab43:	ff d0                                           	call   eax
  77ab45:	8b f0                                           	mov    esi,eax
  77ab47:	85 f6                                           	test   esi,esi
  77ab49:	74 76                                           	je     0x77abc1
  77ab4b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ab4d:	8b 92 d0 00 00 00                               	mov    edx,DWORD PTR [edx+0xd0]
  77ab53:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  77ab57:	50                                              	push   eax
  77ab58:	8b ce                                           	mov    ecx,esi
  77ab5a:	ff d2                                           	call   edx
  77ab5c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77ab5e:	8b 90 d4 00 00 00                               	mov    edx,DWORD PTR [eax+0xd4]
  77ab64:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  77ab68:	51                                              	push   ecx
  77ab69:	8b ce                                           	mov    ecx,esi
  77ab6b:	ff d2                                           	call   edx
  77ab6d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77ab71:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77ab75:	3b c2                                           	cmp    eax,edx
  77ab77:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77ab7b:	74 14                                           	je     0x77ab91
  77ab7d:	8d 49 00                                        	lea    ecx,[ecx+0x0]
  77ab80:	85 c9                                           	test   ecx,ecx
  77ab82:	7e 0f                                           	jle    0x77ab93
  77ab84:	8b 00                                           	mov    eax,DWORD PTR [eax]
  77ab86:	83 e9 01                                        	sub    ecx,0x1
  77ab89:	3b c2                                           	cmp    eax,edx
  77ab8b:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  77ab8f:	75 ef                                           	jne    0x77ab80
  77ab91:	85 c9                                           	test   ecx,ecx
  77ab93:	75 2c                                           	jne    0x77abc1
  77ab95:	3b c2                                           	cmp    eax,edx
  77ab97:	74 28                                           	je     0x77abc1
  77ab99:	8b 0d 94 ba fb 00                               	mov    ecx,DWORD PTR ds:0xfbba94
  77ab9f:	8d 34 01                                        	lea    esi,[ecx+eax*1]
  77aba2:	85 f6                                           	test   esi,esi
  77aba4:	74 1b                                           	je     0x77abc1
  77aba6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77aba8:	8b 02                                           	mov    eax,DWORD PTR [edx]
  77abaa:	8b ce                                           	mov    ecx,esi
  77abac:	ff d0                                           	call   eax
  77abae:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77abb0:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  77abb6:	6a 30                                           	push   0x30
  77abb8:	56                                              	push   esi
  77abb9:	8b cf                                           	mov    ecx,edi
  77abbb:	ff d0                                           	call   eax
  77abbd:	5f                                              	pop    edi
  77abbe:	5e                                              	pop    esi
  77abbf:	59                                              	pop    ecx
  77abc0:	c3                                              	ret
  77abc1:	5f                                              	pop    edi
  77abc2:	33 c0                                           	xor    eax,eax
  77abc4:	5e                                              	pop    esi
  77abc5:	59                                              	pop    ecx
  77abc6:	c3                                              	ret
  77abc7:	cc                                              	int3
  77abc8:	cc                                              	int3
  77abc9:	cc                                              	int3
  77abca:	cc                                              	int3
  77abcb:	cc                                              	int3
  77abcc:	cc                                              	int3
  77abcd:	cc                                              	int3
  77abce:	cc                                              	int3
  77abcf:	cc                                              	int3
