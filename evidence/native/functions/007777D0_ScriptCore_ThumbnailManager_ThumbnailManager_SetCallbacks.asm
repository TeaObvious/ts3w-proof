# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007777d0 (ScriptCore.ThumbnailManager::ThumbnailManager_SetCallbacks)
Paired Ghidra pseudocode: 007777D0_ScriptCore_ThumbnailManager_ThumbnailManager_SetCallbacks.c
Window: [0x007777d0, 0x007777f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007777f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007777d0: 8b 0d 30 ec 1e 01 85 c9 74 0f 8b 44 24 08 8b 54
007777e0: 24 04 50 52 e8 47 31 5d 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007777d0 <.text+0x3767d0>:
  7777d0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  7777d6:	85 c9                                           	test   ecx,ecx
  7777d8:	74 0f                                           	je     0x7777e9
  7777da:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7777de:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7777e2:	50                                              	push   eax
  7777e3:	52                                              	push   edx
  7777e4:	e8 47 31 5d 00                                  	call   0xd4a930
  7777e9:	c3                                              	ret
  7777ea:	cc                                              	int3
  7777eb:	cc                                              	int3
  7777ec:	cc                                              	int3
  7777ed:	cc                                              	int3
  7777ee:	cc                                              	int3
  7777ef:	cc                                              	int3
