# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740fa0 (ScriptCore.DeviceConfig::DeviceConfig_IsMac)
Paired Ghidra pseudocode: 00740FA0_ScriptCore_DeviceConfig_DeviceConfig_IsMac.c
Window: [0x00740fa0, 0x00740fc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740fa0: e8 5b d8 e4 ff 85 c0 74 07 8a 80 a8 02 00 00 c3
00740fb0: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740fa0 <.text+0x33ffa0>:
  740fa0:	e8 5b d8 e4 ff                                  	call   0x58e800
  740fa5:	85 c0                                           	test   eax,eax
  740fa7:	74 07                                           	je     0x740fb0
  740fa9:	8a 80 a8 02 00 00                               	mov    al,BYTE PTR [eax+0x2a8]
  740faf:	c3                                              	ret
  740fb0:	32 c0                                           	xor    al,al
  740fb2:	c3                                              	ret
  740fb3:	cc                                              	int3
  740fb4:	cc                                              	int3
  740fb5:	cc                                              	int3
  740fb6:	cc                                              	int3
  740fb7:	cc                                              	int3
  740fb8:	cc                                              	int3
  740fb9:	cc                                              	int3
  740fba:	cc                                              	int3
  740fbb:	cc                                              	int3
  740fbc:	cc                                              	int3
  740fbd:	cc                                              	int3
  740fbe:	cc                                              	int3
  740fbf:	cc                                              	int3
