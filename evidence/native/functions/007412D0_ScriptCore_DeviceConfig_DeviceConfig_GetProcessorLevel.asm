# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007412d0 (ScriptCore.DeviceConfig::DeviceConfig_GetProcessorLevel)
Paired Ghidra pseudocode: 007412D0_ScriptCore_DeviceConfig_DeviceConfig_GetProcessorLevel.c
Window: [0x007412d0, 0x007412f0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007412f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007412d0: e8 2b d5 e4 ff 85 c0 74 11 8b 80 38 01 00 00 50
007412e0: ff 15 98 66 f9 00 83 c4 04 c3 33 c0 c3 cc cc cc

LINEAR DISASSEMBLY
007412d0 <.text+0x3402d0>:
  7412d0:	e8 2b d5 e4 ff                                  	call   0x58e800
  7412d5:	85 c0                                           	test   eax,eax
  7412d7:	74 11                                           	je     0x7412ea
  7412d9:	8b 80 38 01 00 00                               	mov    eax,DWORD PTR [eax+0x138]
  7412df:	50                                              	push   eax
  7412e0:	ff 15 98 66 f9 00                               	call   DWORD PTR ds:0xf96698
  7412e6:	83 c4 04                                        	add    esp,0x4
  7412e9:	c3                                              	ret
  7412ea:	33 c0                                           	xor    eax,eax
  7412ec:	c3                                              	ret
  7412ed:	cc                                              	int3
  7412ee:	cc                                              	int3
  7412ef:	cc                                              	int3
