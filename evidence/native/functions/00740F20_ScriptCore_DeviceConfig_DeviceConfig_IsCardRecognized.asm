# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740f20 (ScriptCore.DeviceConfig::DeviceConfig_IsCardRecognized)
Paired Ghidra pseudocode: 00740F20_ScriptCore_DeviceConfig_DeviceConfig_IsCardRecognized.c
Window: [0x00740f20, 0x00740f40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740f20: e8 db d8 e4 ff 85 c0 74 07 8a 80 60 01 00 00 c3
00740f30: 32 c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740f20 <.text+0x33ff20>:
  740f20:	e8 db d8 e4 ff                                  	call   0x58e800
  740f25:	85 c0                                           	test   eax,eax
  740f27:	74 07                                           	je     0x740f30
  740f29:	8a 80 60 01 00 00                               	mov    al,BYTE PTR [eax+0x160]
  740f2f:	c3                                              	ret
  740f30:	32 c0                                           	xor    al,al
  740f32:	c3                                              	ret
  740f33:	cc                                              	int3
  740f34:	cc                                              	int3
  740f35:	cc                                              	int3
  740f36:	cc                                              	int3
  740f37:	cc                                              	int3
  740f38:	cc                                              	int3
  740f39:	cc                                              	int3
  740f3a:	cc                                              	int3
  740f3b:	cc                                              	int3
  740f3c:	cc                                              	int3
  740f3d:	cc                                              	int3
  740f3e:	cc                                              	int3
  740f3f:	cc                                              	int3
