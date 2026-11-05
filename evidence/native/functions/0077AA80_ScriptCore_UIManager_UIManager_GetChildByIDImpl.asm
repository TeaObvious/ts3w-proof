# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077aa80 (ScriptCore.UIManager::UIManager_GetChildByIDImpl)
Paired Ghidra pseudocode: 0077AA80_ScriptCore_UIManager_UIManager_GetChildByIDImpl.c
Window: [0x0077aa80, 0x0077ab00) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ab00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077aa80: 56 57 e8 09 e9 fe ff 8b f8 8b 44 24 0c 8b c8 81
0077aa90: e1 00 00 00 ff 81 f9 00 00 00 30 75 59 8b 17 50
0077aaa0: 8b 82 cc 00 00 00 8b cf ff d0 85 c0 74 48 8b 10
0077aab0: 8b c8 8b 42 0c 68 18 82 ee ee ff d0 85 c0 74 36
0077aac0: 8b 4c 24 14 8b 10 8b 92 f4 00 00 00 51 8b 4c 24
0077aad0: 14 51 8b c8 ff d2 8b f0 85 f6 74 1a 8b 06 8b 10
0077aae0: 8b ce ff d2 8b 07 8b 90 c8 00 00 00 6a 30 56 8b
0077aaf0: cf ff d2 5f 5e c3 5f 33 c0 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0077aa80 <.text+0x379a80>:
  77aa80:	56                                              	push   esi
  77aa81:	57                                              	push   edi
  77aa82:	e8 09 e9 fe ff                                  	call   0x769390
  77aa87:	8b f8                                           	mov    edi,eax
  77aa89:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77aa8d:	8b c8                                           	mov    ecx,eax
  77aa8f:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77aa95:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77aa9b:	75 59                                           	jne    0x77aaf6
  77aa9d:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77aa9f:	50                                              	push   eax
  77aaa0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77aaa6:	8b cf                                           	mov    ecx,edi
  77aaa8:	ff d0                                           	call   eax
  77aaaa:	85 c0                                           	test   eax,eax
  77aaac:	74 48                                           	je     0x77aaf6
  77aaae:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aab0:	8b c8                                           	mov    ecx,eax
  77aab2:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77aab5:	68 18 82 ee ee                                  	push   0xeeee8218
  77aaba:	ff d0                                           	call   eax
  77aabc:	85 c0                                           	test   eax,eax
  77aabe:	74 36                                           	je     0x77aaf6
  77aac0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77aac4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aac6:	8b 92 f4 00 00 00                               	mov    edx,DWORD PTR [edx+0xf4]
  77aacc:	51                                              	push   ecx
  77aacd:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  77aad1:	51                                              	push   ecx
  77aad2:	8b c8                                           	mov    ecx,eax
  77aad4:	ff d2                                           	call   edx
  77aad6:	8b f0                                           	mov    esi,eax
  77aad8:	85 f6                                           	test   esi,esi
  77aada:	74 1a                                           	je     0x77aaf6
  77aadc:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77aade:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77aae0:	8b ce                                           	mov    ecx,esi
  77aae2:	ff d2                                           	call   edx
  77aae4:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77aae6:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  77aaec:	6a 30                                           	push   0x30
  77aaee:	56                                              	push   esi
  77aaef:	8b cf                                           	mov    ecx,edi
  77aaf1:	ff d2                                           	call   edx
  77aaf3:	5f                                              	pop    edi
  77aaf4:	5e                                              	pop    esi
  77aaf5:	c3                                              	ret
  77aaf6:	5f                                              	pop    edi
  77aaf7:	33 c0                                           	xor    eax,eax
  77aaf9:	5e                                              	pop    esi
  77aafa:	c3                                              	ret
  77aafb:	cc                                              	int3
  77aafc:	cc                                              	int3
  77aafd:	cc                                              	int3
  77aafe:	cc                                              	int3
  77aaff:	cc                                              	int3
