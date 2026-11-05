# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777a00 (ScriptCore.ThumbnailManager::ThumbnailManager_InvalidateHouseholdThumbnail)
Paired Ghidra pseudocode: 00777A00_ScriptCore_ThumbnailManager_ThumbnailManager_InvalidateHouseholdThumbnail.c
Window: [0x00777a00, 0x00777a30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777a00: 8b 0d 30 ec 1e 01 85 c9 74 1e 8b 44 24 14 8b 54
00777a10: 24 10 50 8b 44 24 10 52 8b 54 24 10 50 8b 44 24
00777a20: 10 52 50 e8 78 94 5e 00 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777a00 <.text+0x376a00>:
  777a00:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777a06:	85 c9                                           	test   ecx,ecx
  777a08:	74 1e                                           	je     0x777a28
  777a0a:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  777a0e:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777a12:	50                                              	push   eax
  777a13:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  777a17:	52                                              	push   edx
  777a18:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  777a1c:	50                                              	push   eax
  777a1d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  777a21:	52                                              	push   edx
  777a22:	50                                              	push   eax
  777a23:	e8 78 94 5e 00                                  	call   0xd60ea0
  777a28:	c3                                              	ret
  777a29:	cc                                              	int3
  777a2a:	cc                                              	int3
  777a2b:	cc                                              	int3
  777a2c:	cc                                              	int3
  777a2d:	cc                                              	int3
  777a2e:	cc                                              	int3
  777a2f:	cc                                              	int3
