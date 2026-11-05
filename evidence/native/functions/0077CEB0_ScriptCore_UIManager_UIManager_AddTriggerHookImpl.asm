# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ceb0 (ScriptCore.UIManager::UIManager_AddTriggerHookImpl)
Paired Ghidra pseudocode: 0077CEB0_ScriptCore_UIManager_UIManager_AddTriggerHookImpl.c
Window: [0x0077ceb0, 0x0077cf40) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077cf40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ceb0: 53 57 e8 89 32 07 00 8b d8 85 db 74 72 8b 7c 24
0077cec0: 0c 8b c7 25 00 00 00 ff 3d 00 00 00 30 75 60 56
0077ced0: e8 bb c4 fe ff 8b f0 8b 16 8b 82 cc 00 00 00 57
0077cee0: 8b ce ff d0 85 c0 74 12 8b 10 8b c8 8b 42 0c 68
0077cef0: 18 82 ee ee ff d0 8b f8 eb 02 33 ff 8b 16 8b 44
0077cf00: 24 14 8b 52 58 50 8b ce ff d2 80 7c 24 20 00 8b
0077cf10: 54 24 1c 0f 95 c1 51 8b 4c 24 1c 52 51 57 68 50
0077cf20: 01 7f 00 50 8b cb e8 25 43 07 00 5e 5f 5b c3 a1
0077cf30: bc f2 01 01 5f 5b c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077ceb0 <.text+0x37beb0>:
  77ceb0:	53                                              	push   ebx
  77ceb1:	57                                              	push   edi
  77ceb2:	e8 89 32 07 00                                  	call   0x7f0140
  77ceb7:	8b d8                                           	mov    ebx,eax
  77ceb9:	85 db                                           	test   ebx,ebx
  77cebb:	74 72                                           	je     0x77cf2f
  77cebd:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
  77cec1:	8b c7                                           	mov    eax,edi
  77cec3:	25 00 00 00 ff                                  	and    eax,0xff000000
  77cec8:	3d 00 00 00 30                                  	cmp    eax,0x30000000
  77cecd:	75 60                                           	jne    0x77cf2f
  77cecf:	56                                              	push   esi
  77ced0:	e8 bb c4 fe ff                                  	call   0x769390
  77ced5:	8b f0                                           	mov    esi,eax
  77ced7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ced9:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77cedf:	57                                              	push   edi
  77cee0:	8b ce                                           	mov    ecx,esi
  77cee2:	ff d0                                           	call   eax
  77cee4:	85 c0                                           	test   eax,eax
  77cee6:	74 12                                           	je     0x77cefa
  77cee8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ceea:	8b c8                                           	mov    ecx,eax
  77ceec:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ceef:	68 18 82 ee ee                                  	push   0xeeee8218
  77cef4:	ff d0                                           	call   eax
  77cef6:	8b f8                                           	mov    edi,eax
  77cef8:	eb 02                                           	jmp    0x77cefc
  77cefa:	33 ff                                           	xor    edi,edi
  77cefc:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cefe:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77cf02:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  77cf05:	50                                              	push   eax
  77cf06:	8b ce                                           	mov    ecx,esi
  77cf08:	ff d2                                           	call   edx
  77cf0a:	80 7c 24 20 00                                  	cmp    BYTE PTR [esp+0x20],0x0
  77cf0f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  77cf13:	0f 95 c1                                        	setne  cl
  77cf16:	51                                              	push   ecx
  77cf17:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  77cf1b:	52                                              	push   edx
  77cf1c:	51                                              	push   ecx
  77cf1d:	57                                              	push   edi
  77cf1e:	68 50 01 7f 00                                  	push   0x7f0150
  77cf23:	50                                              	push   eax
  77cf24:	8b cb                                           	mov    ecx,ebx
  77cf26:	e8 25 43 07 00                                  	call   0x7f1250
  77cf2b:	5e                                              	pop    esi
  77cf2c:	5f                                              	pop    edi
  77cf2d:	5b                                              	pop    ebx
  77cf2e:	c3                                              	ret
  77cf2f:	a1 bc f2 01 01                                  	mov    eax,ds:0x101f2bc
  77cf34:	5f                                              	pop    edi
  77cf35:	5b                                              	pop    ebx
  77cf36:	c3                                              	ret
  77cf37:	cc                                              	int3
  77cf38:	cc                                              	int3
  77cf39:	cc                                              	int3
  77cf3a:	cc                                              	int3
  77cf3b:	cc                                              	int3
  77cf3c:	cc                                              	int3
  77cf3d:	cc                                              	int3
  77cf3e:	cc                                              	int3
  77cf3f:	cc                                              	int3
