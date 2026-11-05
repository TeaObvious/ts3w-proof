# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740f00 (ScriptCore.DeviceConfig::DeviceConfig_GetErrorLine)
Paired Ghidra pseudocode: 00740F00_ScriptCore_DeviceConfig_DeviceConfig_GetErrorLine.c
Window: [0x00740f00, 0x00740f20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740f20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740f00: e8 fb d8 e4 ff 85 c0 74 07 8b 80 bc 00 00 00 c3
00740f10: 83 c8 ff c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740f00 <.text+0x33ff00>:
  740f00:	e8 fb d8 e4 ff                                  	call   0x58e800
  740f05:	85 c0                                           	test   eax,eax
  740f07:	74 07                                           	je     0x740f10
  740f09:	8b 80 bc 00 00 00                               	mov    eax,DWORD PTR [eax+0xbc]
  740f0f:	c3                                              	ret
  740f10:	83 c8 ff                                        	or     eax,0xffffffff
  740f13:	c3                                              	ret
  740f14:	cc                                              	int3
  740f15:	cc                                              	int3
  740f16:	cc                                              	int3
  740f17:	cc                                              	int3
  740f18:	cc                                              	int3
  740f19:	cc                                              	int3
  740f1a:	cc                                              	int3
  740f1b:	cc                                              	int3
  740f1c:	cc                                              	int3
  740f1d:	cc                                              	int3
  740f1e:	cc                                              	int3
  740f1f:	cc                                              	int3
