# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779900 (ScriptCore.UIManager::UIManager_GetWindowFromPointImpl)
Paired Ghidra pseudocode: 00779900_ScriptCore_UIManager_UIManager_GetWindowFromPointImpl.c
Window: [0x00779900, 0x00779950) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00779950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779900: 56 57 e8 89 fa fe ff 8b f8 e8 82 16 d9 ff 8b 4c
00779910: 24 0c 8b 10 8b 52 50 51 8b c8 ff d2 8b f0 85 f6
00779920: 74 1a 8b 06 8b 10 8b ce ff d2 8b 07 8b 90 c8 00
00779930: 00 00 6a 30 56 8b cf ff d2 5f 5e c3 5f 33 c0 5e
00779940: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779900 <.text+0x378900>:
  779900:	56                                              	push   esi
  779901:	57                                              	push   edi
  779902:	e8 89 fa fe ff                                  	call   0x769390
  779907:	8b f8                                           	mov    edi,eax
  779909:	e8 82 16 d9 ff                                  	call   0x50af90
  77990e:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779912:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779914:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  779917:	51                                              	push   ecx
  779918:	8b c8                                           	mov    ecx,eax
  77991a:	ff d2                                           	call   edx
  77991c:	8b f0                                           	mov    esi,eax
  77991e:	85 f6                                           	test   esi,esi
  779920:	74 1a                                           	je     0x77993c
  779922:	8b 06                                           	mov    eax,DWORD PTR [esi]
  779924:	8b 10                                           	mov    edx,DWORD PTR [eax]
  779926:	8b ce                                           	mov    ecx,esi
  779928:	ff d2                                           	call   edx
  77992a:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77992c:	8b 90 c8 00 00 00                               	mov    edx,DWORD PTR [eax+0xc8]
  779932:	6a 30                                           	push   0x30
  779934:	56                                              	push   esi
  779935:	8b cf                                           	mov    ecx,edi
  779937:	ff d2                                           	call   edx
  779939:	5f                                              	pop    edi
  77993a:	5e                                              	pop    esi
  77993b:	c3                                              	ret
  77993c:	5f                                              	pop    edi
  77993d:	33 c0                                           	xor    eax,eax
  77993f:	5e                                              	pop    esi
  779940:	c3                                              	ret
  779941:	cc                                              	int3
  779942:	cc                                              	int3
  779943:	cc                                              	int3
  779944:	cc                                              	int3
  779945:	cc                                              	int3
  779946:	cc                                              	int3
  779947:	cc                                              	int3
  779948:	cc                                              	int3
  779949:	cc                                              	int3
  77994a:	cc                                              	int3
  77994b:	cc                                              	int3
  77994c:	cc                                              	int3
  77994d:	cc                                              	int3
  77994e:	cc                                              	int3
  77994f:	cc                                              	int3
