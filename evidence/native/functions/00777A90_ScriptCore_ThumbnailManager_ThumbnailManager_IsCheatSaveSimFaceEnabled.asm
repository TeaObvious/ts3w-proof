# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777a90 (ScriptCore.ThumbnailManager::ThumbnailManager_IsCheatSaveSimFaceEnabled)
Paired Ghidra pseudocode: 00777A90_ScriptCore_ThumbnailManager_ThumbnailManager_IsCheatSaveSimFaceEnabled.c
Window: [0x00777a90, 0x00777ab0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777ab0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777a90: 8b 0d 30 ec 1e 01 85 c9 74 05 e9 e1 33 5d 00 32
00777aa0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777a90 <.text+0x376a90>:
  777a90:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777a96:	85 c9                                           	test   ecx,ecx
  777a98:	74 05                                           	je     0x777a9f
  777a9a:	e9 e1 33 5d 00                                  	jmp    0xd4ae80
  777a9f:	32 c0                                           	xor    al,al
  777aa1:	c3                                              	ret
  777aa2:	cc                                              	int3
  777aa3:	cc                                              	int3
  777aa4:	cc                                              	int3
  777aa5:	cc                                              	int3
  777aa6:	cc                                              	int3
  777aa7:	cc                                              	int3
  777aa8:	cc                                              	int3
  777aa9:	cc                                              	int3
  777aaa:	cc                                              	int3
  777aab:	cc                                              	int3
  777aac:	cc                                              	int3
  777aad:	cc                                              	int3
  777aae:	cc                                              	int3
  777aaf:	cc                                              	int3
