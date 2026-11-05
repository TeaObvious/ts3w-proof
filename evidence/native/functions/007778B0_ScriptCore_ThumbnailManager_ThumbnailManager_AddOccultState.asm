# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007778b0 (ScriptCore.ThumbnailManager::ThumbnailManager_AddOccultState)
Paired Ghidra pseudocode: 007778B0_ScriptCore_ThumbnailManager_ThumbnailManager_AddOccultState.c
Window: [0x007778b0, 0x007778d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007778d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007778b0: 8b 0d 30 ec 1e 01 85 c9 74 0a 8b 44 24 04 50 e8
007778c0: 2c cf 5d 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007778b0 <.text+0x3768b0>:
  7778b0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  7778b6:	85 c9                                           	test   ecx,ecx
  7778b8:	74 0a                                           	je     0x7778c4
  7778ba:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7778be:	50                                              	push   eax
  7778bf:	e8 2c cf 5d 00                                  	call   0xd547f0
  7778c4:	c3                                              	ret
  7778c5:	cc                                              	int3
  7778c6:	cc                                              	int3
  7778c7:	cc                                              	int3
  7778c8:	cc                                              	int3
  7778c9:	cc                                              	int3
  7778ca:	cc                                              	int3
  7778cb:	cc                                              	int3
  7778cc:	cc                                              	int3
  7778cd:	cc                                              	int3
  7778ce:	cc                                              	int3
  7778cf:	cc                                              	int3
