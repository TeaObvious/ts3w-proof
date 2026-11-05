# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740ff0 (ScriptCore.DeviceConfig::DeviceConfig_GetProperty)
Paired Ghidra pseudocode: 00740FF0_ScriptCore_DeviceConfig_DeviceConfig_GetProperty.c
Window: [0x00740ff0, 0x00741020) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00741020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740ff0: e8 9b 83 02 00 8b 4c 24 04 8b 10 8b 52 58 51 8b
00741000: c8 ff d2 85 c0 74 14 8b 4c 24 08 51 50 68 78 d9
00741010: fc 00 e8 e9 9e e4 ff 83 c4 0c c3 8b 44 24 08 c3

LINEAR DISASSEMBLY
00740ff0 <.text+0x33fff0>:
  740ff0:	e8 9b 83 02 00                                  	call   0x769390
  740ff5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  740ff9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  740ffb:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  740ffe:	51                                              	push   ecx
  740fff:	8b c8                                           	mov    ecx,eax
  741001:	ff d2                                           	call   edx
  741003:	85 c0                                           	test   eax,eax
  741005:	74 14                                           	je     0x74101b
  741007:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  74100b:	51                                              	push   ecx
  74100c:	50                                              	push   eax
  74100d:	68 78 d9 fc 00                                  	push   0xfcd978
  741012:	e8 e9 9e e4 ff                                  	call   0x58af00
  741017:	83 c4 0c                                        	add    esp,0xc
  74101a:	c3                                              	ret
  74101b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74101f:	c3                                              	ret
