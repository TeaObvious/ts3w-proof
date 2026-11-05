# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00777bc0 (ScriptCore.ThumbnailManager::ThumbnailManager_SetHouseholdCamera)
Paired Ghidra pseudocode: 00777BC0_ScriptCore_ThumbnailManager_ThumbnailManager_SetHouseholdCamera.c
Window: [0x00777bc0, 0x00777be0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777be0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00777bc0: 8b 0d 30 ec 1e 01 85 c9 74 0a 8b 44 24 04 50 e8
00777bd0: 9c 3b 5d 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00777bc0 <.text+0x376bc0>:
  777bc0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  777bc6:	85 c9                                           	test   ecx,ecx
  777bc8:	74 0a                                           	je     0x777bd4
  777bca:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  777bce:	50                                              	push   eax
  777bcf:	e8 9c 3b 5d 00                                  	call   0xd4b770
  777bd4:	c3                                              	ret
  777bd5:	cc                                              	int3
  777bd6:	cc                                              	int3
  777bd7:	cc                                              	int3
  777bd8:	cc                                              	int3
  777bd9:	cc                                              	int3
  777bda:	cc                                              	int3
  777bdb:	cc                                              	int3
  777bdc:	cc                                              	int3
  777bdd:	cc                                              	int3
  777bde:	cc                                              	int3
  777bdf:	cc                                              	int3
