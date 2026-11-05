# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740fc0 (ScriptCore.DeviceConfig::DeviceConfig_IsAASupported)
Paired Ghidra pseudocode: 00740FC0_ScriptCore_DeviceConfig_DeviceConfig_IsAASupported.c
Window: [0x00740fc0, 0x00740fe0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740fe0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740fc0: a1 b0 0a 15 01 6a 00 68 e4 19 00 01 50 e8 2e 9f
00740fd0: e4 ff 83 c4 0c f7 d8 1b c0 83 c0 01 c3 cc cc cc

LINEAR DISASSEMBLY
00740fc0 <.text+0x33ffc0>:
  740fc0:	a1 b0 0a 15 01                                  	mov    eax,ds:0x1150ab0
  740fc5:	6a 00                                           	push   0x0
  740fc7:	68 e4 19 00 01                                  	push   0x10019e4
  740fcc:	50                                              	push   eax
  740fcd:	e8 2e 9f e4 ff                                  	call   0x58af00
  740fd2:	83 c4 0c                                        	add    esp,0xc
  740fd5:	f7 d8                                           	neg    eax
  740fd7:	1b c0                                           	sbb    eax,eax
  740fd9:	83 c0 01                                        	add    eax,0x1
  740fdc:	c3                                              	ret
  740fdd:	cc                                              	int3
  740fde:	cc                                              	int3
  740fdf:	cc                                              	int3
