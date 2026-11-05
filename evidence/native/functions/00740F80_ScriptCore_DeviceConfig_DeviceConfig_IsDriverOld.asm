# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740f80 (ScriptCore.DeviceConfig::DeviceConfig_IsDriverOld)
Paired Ghidra pseudocode: 00740F80_ScriptCore_DeviceConfig_DeviceConfig_IsDriverOld.c
Window: [0x00740f80, 0x00740fa0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740fa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740f80: a1 b0 0a 15 01 6a 00 68 b4 19 00 01 50 e8 6e 9f
00740f90: e4 ff 83 c4 0c f7 d8 1b c0 f7 d8 c3 cc cc cc cc

LINEAR DISASSEMBLY
00740f80 <.text+0x33ff80>:
  740f80:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  740f85:	6a 00                                           	push   0x0
  740f87:	68 b4 19 00 01                                  	push   0x10019b4
  740f8c:	50                                              	push   eax
  740f8d:	e8 6e 9f e4 ff                                  	call   0x58af00
  740f92:	83 c4 0c                                        	add    esp,0xc
  740f95:	f7 d8                                           	neg    eax
  740f97:	1b c0                                           	sbb    eax,eax
  740f99:	f7 d8                                           	neg    eax
  740f9b:	c3                                              	ret
  740f9c:	cc                                              	int3
  740f9d:	cc                                              	int3
  740f9e:	cc                                              	int3
  740f9f:	cc                                              	int3
