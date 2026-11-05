# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007779e0 (ScriptCore.ThumbnailManager::ThumbnailManager_SetSceneObject)
Paired Ghidra pseudocode: 007779E0_ScriptCore_ThumbnailManager_ThumbnailManager_SetSceneObject.c
Window: [0x007779e0, 0x00777a00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777a00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007779e0: 8b 0d 30 ec 1e 01 85 c9 74 0f 8b 44 24 08 8b 54
007779f0: 24 04 50 52 e8 57 5d 5d 00 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007779e0 <.text+0x3769e0>:
  7779e0:	8b 0d 30 ec 1e 01                               	mov    ecx,DWORD PTR ds:0x11eec30
  7779e6:	85 c9                                           	test   ecx,ecx
  7779e8:	74 0f                                           	je     0x7779f9
  7779ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7779ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7779f2:	50                                              	push   eax
  7779f3:	52                                              	push   edx
  7779f4:	e8 57 5d 5d 00                                  	call   0xd4d750
  7779f9:	c3                                              	ret
  7779fa:	cc                                              	int3
  7779fb:	cc                                              	int3
  7779fc:	cc                                              	int3
  7779fd:	cc                                              	int3
  7779fe:	cc                                              	int3
  7779ff:	cc                                              	int3
