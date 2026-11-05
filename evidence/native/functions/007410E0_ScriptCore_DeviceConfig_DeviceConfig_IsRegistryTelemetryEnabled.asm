# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007410e0 (ScriptCore.DeviceConfig::DeviceConfig_IsRegistryTelemetryEnabled)
Paired Ghidra pseudocode: 007410E0_ScriptCore_DeviceConfig_DeviceConfig_IsRegistryTelemetryEnabled.c
Window: [0x007410e0, 0x007410f0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007410f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007410e0: e8 3b f6 08 00 f7 d8 1b c0 f7 d8 c3 cc cc cc cc

LINEAR DISASSEMBLY
007410e0 <.text+0x3400e0>:
  7410e0:	e8 3b f6 08 00                                  	call   0x7d0720
  7410e5:	f7 d8                                           	neg    eax
  7410e7:	1b c0                                           	sbb    eax,eax
  7410e9:	f7 d8                                           	neg    eax
  7410eb:	c3                                              	ret
  7410ec:	cc                                              	int3
  7410ed:	cc                                              	int3
  7410ee:	cc                                              	int3
  7410ef:	cc                                              	int3
