# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749190 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback)
Paired Ghidra pseudocode: 00749190_ScriptCore_OnlineFeatures_OnlineFeaturesHost_RegisterPromptForShareCredentialsCallback.c
Window: [0x00749190, 0x007491b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007491b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749190: 8b 44 24 04 a3 f4 4f 1d 01 c7 44 24 04 70 91 74
007491a0: 00 e9 0a 93 12 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749190 <.text+0x348190>:
  749190:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  749194:	a3 f4 4f 1d 01                                  	mov    ds:0x11d4ff4,eax
  749199:	c7 44 24 04 70 91 74 00                         	mov    DWORD PTR [esp+0x4],0x749170
  7491a1:	e9 0a 93 12 00                                  	jmp    0x8724b0
  7491a6:	cc                                              	int3
  7491a7:	cc                                              	int3
  7491a8:	cc                                              	int3
  7491a9:	cc                                              	int3
  7491aa:	cc                                              	int3
  7491ab:	cc                                              	int3
  7491ac:	cc                                              	int3
  7491ad:	cc                                              	int3
  7491ae:	cc                                              	int3
  7491af:	cc                                              	int3
