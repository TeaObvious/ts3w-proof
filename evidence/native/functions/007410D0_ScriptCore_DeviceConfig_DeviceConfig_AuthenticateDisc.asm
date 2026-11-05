# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007410d0 (ScriptCore.DeviceConfig::DeviceConfig_AuthenticateDisc)
Paired Ghidra pseudocode: 007410D0_ScriptCore_DeviceConfig_DeviceConfig_AuthenticateDisc.c
Window: [0x007410d0, 0x007410e0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x007410e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007410d0: 6a 00 e8 59 25 e5 ff 83 c4 04 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007410d0 <.text+0x3400d0>:
  7410d0:	6a 00                                           	push   0x0
  7410d2:	e8 59 25 e5 ff                                  	call   0x593630
  7410d7:	83 c4 04                                        	add    esp,0x4
  7410da:	c3                                              	ret
  7410db:	cc                                              	int3
  7410dc:	cc                                              	int3
  7410dd:	cc                                              	int3
  7410de:	cc                                              	int3
  7410df:	cc                                              	int3
