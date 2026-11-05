# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740ee0 (ScriptCore.DeviceConfig::DeviceConfig_GetErrorCode)
Paired Ghidra pseudocode: 00740EE0_ScriptCore_DeviceConfig_DeviceConfig_GetErrorCode.c
Window: [0x00740ee0, 0x00740f00) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740f00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740ee0: e8 1b d9 e4 ff 85 c0 74 07 8b 80 58 01 00 00 c3
00740ef0: 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740ee0 <.text+0x33fee0>:
  740ee0:	e8 1b d9 e4 ff                                  	call   0x58e800
  740ee5:	85 c0                                           	test   eax,eax
  740ee7:	74 07                                           	je     0x740ef0
  740ee9:	8b 80 58 01 00 00                               	mov    eax,DWORD PTR [eax+0x158]
  740eef:	c3                                              	ret
  740ef0:	33 c0                                           	xor    eax,eax
  740ef2:	c3                                              	ret
  740ef3:	cc                                              	int3
  740ef4:	cc                                              	int3
  740ef5:	cc                                              	int3
  740ef6:	cc                                              	int3
  740ef7:	cc                                              	int3
  740ef8:	cc                                              	int3
  740ef9:	cc                                              	int3
  740efa:	cc                                              	int3
  740efb:	cc                                              	int3
  740efc:	cc                                              	int3
  740efd:	cc                                              	int3
  740efe:	cc                                              	int3
  740eff:	cc                                              	int3
