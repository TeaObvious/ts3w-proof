# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007873e0 (ScriptCore.World::World_EnableInGameAdsImpl)
Paired Ghidra pseudocode: 007873E0_ScriptCore_World_World_EnableInGameAdsImpl.c
Window: [0x007873e0, 0x007873f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007873f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007873e0: e8 9b c7 25 00 8a 4c 24 04 88 88 c0 04 00 00 c3

LINEAR DISASSEMBLY
007873e0 <.text+0x3863e0>:
  7873e0:	e8 9b c7 25 00                                  	call   0x9e3b80
  7873e5:	8a 4c 24 04                                     	mov    cl,BYTE PTR [esp+0x4]
  7873e9:	88 88 c0 04 00 00                               	mov    BYTE PTR [eax+0x4c0],cl
  7873ef:	c3                                              	ret
