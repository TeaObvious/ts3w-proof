# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00779970 (ScriptCore.UIManager::UIManager_GetWindowCursorImpl)
Paired Ghidra pseudocode: 00779970_ScriptCore_UIManager_UIManager_GetWindowCursorImpl.c
Window: [0x00779970, 0x007799c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007799c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00779970: 56 57 e8 19 fa fe ff 8b f8 e8 92 8d 07 00 85 c0
00779980: 74 2c 8b 4c 24 0c 51 8b c8 e8 62 93 07 00 8b f0
00779990: 85 f6 74 1a 8b 16 8b 02 8b ce ff d0 8b 17 8b 82
007799a0: c8 00 00 00 6a 30 56 8b cf ff d0 5f 5e c3 5f 33
007799b0: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00779970 <.text+0x378970>:
  779970:	56                                              	push   esi
  779971:	57                                              	push   edi
  779972:	e8 19 fa fe ff                                  	call   0x769390
  779977:	8b f8                                           	mov    edi,eax
  779979:	e8 92 8d 07 00                                  	call   0x7f2710
  77997e:	85 c0                                           	test   eax,eax
  779980:	74 2c                                           	je     0x7799ae
  779982:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  779986:	51                                              	push   ecx
  779987:	8b c8                                           	mov    ecx,eax
  779989:	e8 62 93 07 00                                  	call   0x7f2cf0
  77998e:	8b f0                                           	mov    esi,eax
  779990:	85 f6                                           	test   esi,esi
  779992:	74 1a                                           	je     0x7799ae
  779994:	8b 16                                           	mov    edx,DWORD PTR [esi]
  779996:	8b 02                                           	mov    eax,DWORD PTR [edx]
  779998:	8b ce                                           	mov    ecx,esi
  77999a:	ff d0                                           	call   eax
  77999c:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77999e:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  7799a4:	6a 30                                           	push   0x30
  7799a6:	56                                              	push   esi
  7799a7:	8b cf                                           	mov    ecx,edi
  7799a9:	ff d0                                           	call   eax
  7799ab:	5f                                              	pop    edi
  7799ac:	5e                                              	pop    esi
  7799ad:	c3                                              	ret
  7799ae:	5f                                              	pop    edi
  7799af:	33 c0                                           	xor    eax,eax
  7799b1:	5e                                              	pop    esi
  7799b2:	c3                                              	ret
  7799b3:	cc                                              	int3
  7799b4:	cc                                              	int3
  7799b5:	cc                                              	int3
  7799b6:	cc                                              	int3
  7799b7:	cc                                              	int3
  7799b8:	cc                                              	int3
  7799b9:	cc                                              	int3
  7799ba:	cc                                              	int3
  7799bb:	cc                                              	int3
  7799bc:	cc                                              	int3
  7799bd:	cc                                              	int3
  7799be:	cc                                              	int3
  7799bf:	cc                                              	int3
