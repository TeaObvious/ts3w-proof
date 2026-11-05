# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077cf40 (ScriptCore.UIManager::UIManager_TriggerEffectImpl)
Paired Ghidra pseudocode: 0077CF40_ScriptCore_UIManager_UIManager_TriggerEffectImpl.c
Window: [0x0077cf40, 0x0077cfc0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077cfc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077cf40: e8 4b c4 fe ff 8b 4c 24 04 8b d1 81 e2 00 00 00
0077cf50: ff 81 fa 00 00 00 30 75 5f 8b 10 56 51 8b c8 8b
0077cf60: 82 cc 00 00 00 ff d0 8b f0 85 f6 74 4a 8b 16 8b
0077cf70: 42 0c 68 0b 63 2b 8f 8b ce ff d0 85 c0 74 14 80
0077cf80: 7c 24 0c 00 8b 10 8b 52 48 0f 94 c1 51 8b c8 ff
0077cf90: d2 5e c3 8b 06 8b 50 0c 68 2f 9c 23 08 8b ce ff
0077cfa0: d2 85 c0 74 12 80 7c 24 0c 00 8b 10 8b 52 20 0f
0077cfb0: 94 c1 51 8b c8 ff d2 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077cf40 <.text+0x37bf40>:
  77cf40:	e8 4b c4 fe ff                                  	call   0x769390
  77cf45:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  77cf49:	8b d1                                           	mov    edx,ecx
  77cf4b:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77cf51:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77cf57:	75 5f                                           	jne    0x77cfb8
  77cf59:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77cf5b:	56                                              	push   esi
  77cf5c:	51                                              	push   ecx
  77cf5d:	8b c8                                           	mov    ecx,eax
  77cf5f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77cf65:	ff d0                                           	call   eax
  77cf67:	8b f0                                           	mov    esi,eax
  77cf69:	85 f6                                           	test   esi,esi
  77cf6b:	74 4a                                           	je     0x77cfb7
  77cf6d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cf6f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77cf72:	68 0b 63 2b 8f                                  	push   0x8f2b630b
  77cf77:	8b ce                                           	mov    ecx,esi
  77cf79:	ff d0                                           	call   eax
  77cf7b:	85 c0                                           	test   eax,eax
  77cf7d:	74 14                                           	je     0x77cf93
  77cf7f:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  77cf84:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77cf86:	8b 52 48                                        	mov    edx,DWORD PTR [edx+0x48]
  77cf89:	0f 94 c1                                        	sete   cl
  77cf8c:	51                                              	push   ecx
  77cf8d:	8b c8                                           	mov    ecx,eax
  77cf8f:	ff d2                                           	call   edx
  77cf91:	5e                                              	pop    esi
  77cf92:	c3                                              	ret
  77cf93:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77cf95:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  77cf98:	68 2f 9c 23 08                                  	push   0x8239c2f
  77cf9d:	8b ce                                           	mov    ecx,esi
  77cf9f:	ff d2                                           	call   edx
  77cfa1:	85 c0                                           	test   eax,eax
  77cfa3:	74 12                                           	je     0x77cfb7
  77cfa5:	80 7c 24 0c 00                                  	cmp    BYTE PTR [esp+0xc],0x0
  77cfaa:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77cfac:	8b 52 20                                        	mov    edx,DWORD PTR [edx+0x20]
  77cfaf:	0f 94 c1                                        	sete   cl
  77cfb2:	51                                              	push   ecx
  77cfb3:	8b c8                                           	mov    ecx,eax
  77cfb5:	ff d2                                           	call   edx
  77cfb7:	5e                                              	pop    esi
  77cfb8:	c3                                              	ret
  77cfb9:	cc                                              	int3
  77cfba:	cc                                              	int3
  77cfbb:	cc                                              	int3
  77cfbc:	cc                                              	int3
  77cfbd:	cc                                              	int3
  77cfbe:	cc                                              	int3
  77cfbf:	cc                                              	int3
