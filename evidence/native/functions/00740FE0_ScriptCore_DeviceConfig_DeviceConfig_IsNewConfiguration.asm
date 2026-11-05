# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740fe0 (ScriptCore.DeviceConfig::DeviceConfig_IsNewConfiguration)
Paired Ghidra pseudocode: 00740FE0_ScriptCore_DeviceConfig_DeviceConfig_IsNewConfiguration.c
Window: [0x00740fe0, 0x00740ff0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740ff0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740fe0: e8 1b d8 e4 ff 85 c0 74 04 8a 40 78 c3 32 c0 c3

LINEAR DISASSEMBLY
00740fe0 <.text+0x33ffe0>:
  740fe0:	e8 1b d8 e4 ff                                  	call   0x58e800
  740fe5:	85 c0                                           	test   eax,eax
  740fe7:	74 04                                           	je     0x740fed
  740fe9:	8a 40 78                                        	mov    al,BYTE PTR [eax+0x78]
  740fec:	c3                                              	ret
  740fed:	32 c0                                           	xor    al,al
  740fef:	c3                                              	ret
