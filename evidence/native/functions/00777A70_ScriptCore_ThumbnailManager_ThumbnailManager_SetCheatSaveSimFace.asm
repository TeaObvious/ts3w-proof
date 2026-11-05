# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777a70 (ScriptCore.ThumbnailManager::ThumbnailManager_SetCheatSaveSimFace)
Paired Ghidra pseudocode: 00777A70_ScriptCore_ThumbnailManager_ThumbnailManager_SetCheatSaveSimFace.c
Window: [0x00777a70, 0x00777a90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777a90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777a70: 8b 0d 30 ec 1e 01 85 c9 74 0a 8b 44 24 04 50 e8
00777a80: 3c d5 d8 ff c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777a70 <.text+0x376a70>:
  777a70:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777a76:	85 c9                                           	test   ecx,ecx
  777a78:	74 0a                                           	je     0x777a84
  777a7a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  777a7e:	50                                              	push   eax
  777a7f:	e8 3c d5 d8 ff                                  	call   0x504fc0
  777a84:	c3                                              	ret
  777a85:	cc                                              	int3
  777a86:	cc                                              	int3
  777a87:	cc                                              	int3
  777a88:	cc                                              	int3
  777a89:	cc                                              	int3
  777a8a:	cc                                              	int3
  777a8b:	cc                                              	int3
  777a8c:	cc                                              	int3
  777a8d:	cc                                              	int3
  777a8e:	cc                                              	int3
  777a8f:	cc                                              	int3
