# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007462c0 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback)
Paired Ghidra pseudocode: 007462C0_ScriptCore_OnlineFeatures_OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback.c
Window: [0x007462c0, 0x007462e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007462e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007462c0: 8b 44 24 04 a3 f8 4f 1d 01 c7 44 24 04 10 62 74
007462d0: 00 e9 6a c1 12 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007462c0 <.text+0x3452c0>:
  7462c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  7462c4:	a3 f8 4f 1d 01                                  	mov    ds:0x11d4ff8,eax
  7462c9:	c7 44 24 04 10 62 74 00                         	mov    DWORD PTR [esp+0x4],0x746210
  7462d1:	e9 6a c1 12 00                                  	jmp    0x872440
  7462d6:	cc                                              	int3
  7462d7:	cc                                              	int3
  7462d8:	cc                                              	int3
  7462d9:	cc                                              	int3
  7462da:	cc                                              	int3
  7462db:	cc                                              	int3
  7462dc:	cc                                              	int3
  7462dd:	cc                                              	int3
  7462de:	cc                                              	int3
  7462df:	cc                                              	int3
