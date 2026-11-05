# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007778d0 (ScriptCore.ThumbnailManager::ThumbnailManager_AddRotation)
Paired Ghidra pseudocode: 007778D0_ScriptCore_ThumbnailManager_ThumbnailManager_AddRotation.c
Window: [0x007778d0, 0x007778f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007778f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007778d0: 8b 0d 30 ec 1e 01 85 c9 74 0a 8d 44 24 04 50 e8
007778e0: 4c ce 5d 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007778d0 <.text+0x3768d0>:
  7778d0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  7778d6:	85 c9                                           	test   ecx,ecx
  7778d8:	74 0a                                           	je     0x7778e4
  7778da:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  7778de:	50                                              	push   eax
  7778df:	e8 4c ce 5d 00                                  	call   0xd54730
  7778e4:	c3                                              	ret
  7778e5:	cc                                              	int3
  7778e6:	cc                                              	int3
  7778e7:	cc                                              	int3
  7778e8:	cc                                              	int3
  7778e9:	cc                                              	int3
  7778ea:	cc                                              	int3
  7778eb:	cc                                              	int3
  7778ec:	cc                                              	int3
  7778ed:	cc                                              	int3
  7778ee:	cc                                              	int3
  7778ef:	cc                                              	int3
