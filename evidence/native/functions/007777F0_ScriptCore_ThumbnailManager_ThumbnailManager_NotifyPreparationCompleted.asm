# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007777f0 (ScriptCore.ThumbnailManager::ThumbnailManager_NotifyPreparationCompleted)
Paired Ghidra pseudocode: 007777F0_ScriptCore_ThumbnailManager_ThumbnailManager_NotifyPreparationCompleted.c
Window: [0x007777f0, 0x00777800) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007777f0: 8b 0d 30 ec 1e 01 85 c9 74 05 e9 f1 3f 5d 00 c3

LINEAR DISASSEMBLY
007777f0 <.text+0x3767f0>:
  7777f0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  7777f6:	85 c9                                           	test   ecx,ecx
  7777f8:	74 05                                           	je     0x7777ff
  7777fa:	e9 f1 3f 5d 00                                  	jmp    0xd4b7f0
  7777ff:	c3                                              	ret
