# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007410b0 (ScriptCore.DeviceConfig::DeviceConfig_SaveOptions)
Paired Ghidra pseudocode: 007410B0_ScriptCore_DeviceConfig_DeviceConfig_SaveOptions.c
Window: [0x007410b0, 0x007410d0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007410d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007410b0: e8 4b d7 e4 ff 85 c0 74 08 8d 48 04 e9 9f d7 e4
007410c0: ff c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007410b0 <.text+0x3400b0>:
  7410b0:	e8 4b d7 e4 ff                                  	call   0x58e800
  7410b5:	85 c0                                           	test   eax,eax
  7410b7:	74 08                                           	je     0x7410c1
  7410b9:	8d 48 04                                        	lea    ecx,[eax+0x4]
  7410bc:	e9 9f d7 e4 ff                                  	jmp    0x58e860
  7410c1:	c3                                              	ret
  7410c2:	cc                                              	int3
  7410c3:	cc                                              	int3
  7410c4:	cc                                              	int3
  7410c5:	cc                                              	int3
  7410c6:	cc                                              	int3
  7410c7:	cc                                              	int3
  7410c8:	cc                                              	int3
  7410c9:	cc                                              	int3
  7410ca:	cc                                              	int3
  7410cb:	cc                                              	int3
  7410cc:	cc                                              	int3
  7410cd:	cc                                              	int3
  7410ce:	cc                                              	int3
  7410cf:	cc                                              	int3
