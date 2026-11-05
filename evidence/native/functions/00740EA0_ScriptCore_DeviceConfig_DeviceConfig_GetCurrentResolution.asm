# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740ea0 (ScriptCore.DeviceConfig::DeviceConfig_GetCurrentResolution)
Paired Ghidra pseudocode: 00740EA0_ScriptCore_DeviceConfig_DeviceConfig_GetCurrentResolution.c
Window: [0x00740ea0, 0x00740ee0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740ee0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740ea0: e8 5b d9 e4 ff 85 c0 74 30 8b 88 8c 00 00 00 8b
00740eb0: 54 24 04 89 0a 8b 88 90 00 00 00 8b 54 24 08 89
00740ec0: 0a 8b 88 94 00 00 00 8b 54 24 0c 89 0a 8a 80 ac
00740ed0: 00 00 00 8b 4c 24 10 88 01 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740ea0 <.text+0x33fea0>:
  740ea0:	e8 5b d9 e4 ff                                  	call   0x58e800
  740ea5:	85 c0                                           	test   eax,eax
  740ea7:	74 30                                           	je     0x740ed9
  740ea9:	8b 88 8c 00 00 00                               	mov    ecx,DWORD PTR [eax+0x8c]
  740eaf:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  740eb3:	89 0a                                           	mov    DWORD PTR [edx],ecx
  740eb5:	8b 88 90 00 00 00                               	mov    ecx,DWORD PTR [eax+0x90]
  740ebb:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  740ebf:	89 0a                                           	mov    DWORD PTR [edx],ecx
  740ec1:	8b 88 94 00 00 00                               	mov    ecx,DWORD PTR [eax+0x94]
  740ec7:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  740ecb:	89 0a                                           	mov    DWORD PTR [edx],ecx
  740ecd:	8a 80 ac 00 00 00                               	mov    al,BYTE PTR [eax+0xac]
  740ed3:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  740ed7:	88 01                                           	mov    BYTE PTR [ecx],al
  740ed9:	c3                                              	ret
  740eda:	cc                                              	int3
  740edb:	cc                                              	int3
  740edc:	cc                                              	int3
  740edd:	cc                                              	int3
  740ede:	cc                                              	int3
  740edf:	cc                                              	int3
