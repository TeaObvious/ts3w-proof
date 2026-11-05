# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00740f40 (ScriptCore.DeviceConfig::DeviceConfig_IsCardSupported)
Paired Ghidra pseudocode: 00740F40_ScriptCore_DeviceConfig_DeviceConfig_IsCardSupported.c
Window: [0x00740f40, 0x00740f80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00740f80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00740f40: 56 e8 ba d8 e4 ff 8b f0 85 f6 74 21 57 8b be ec
00740f50: 02 00 00 ff 15 70 61 f9 00 3b f8 5f 74 0a 6a ff
00740f60: e8 5b 31 d7 ff 83 c4 04 8a 46 31 5e c3 32 c0 5e
00740f70: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00740f40 <.text+0x33ff40>:
  740f40:	56                                              	push   esi
  740f41:	e8 ba d8 e4 ff                                  	call   0x58e800
  740f46:	8b f0                                           	mov    esi,eax
  740f48:	85 f6                                           	test   esi,esi
  740f4a:	74 21                                           	je     0x740f6d
  740f4c:	57                                              	push   edi
  740f4d:	8b be ec 02 00 00                               	mov    edi,DWORD PTR [esi+0x2ec]
  740f53:	ff 15 70 61 f9 00                               	call   DWORD PTR ds:0xf96170
  740f59:	3b f8                                           	cmp    edi,eax
  740f5b:	5f                                              	pop    edi
  740f5c:	74 0a                                           	je     0x740f68
  740f5e:	6a ff                                           	push   0xffffffff
  740f60:	e8 5b 31 d7 ff                                  	call   0x4b40c0
  740f65:	83 c4 04                                        	add    esp,0x4
  740f68:	8a 46 31                                        	mov    al,BYTE PTR [esi+0x31]
  740f6b:	5e                                              	pop    esi
  740f6c:	c3                                              	ret
  740f6d:	32 c0                                           	xor    al,al
  740f6f:	5e                                              	pop    esi
  740f70:	c3                                              	ret
  740f71:	cc                                              	int3
  740f72:	cc                                              	int3
  740f73:	cc                                              	int3
  740f74:	cc                                              	int3
  740f75:	cc                                              	int3
  740f76:	cc                                              	int3
  740f77:	cc                                              	int3
  740f78:	cc                                              	int3
  740f79:	cc                                              	int3
  740f7a:	cc                                              	int3
  740f7b:	cc                                              	int3
  740f7c:	cc                                              	int3
  740f7d:	cc                                              	int3
  740f7e:	cc                                              	int3
  740f7f:	cc                                              	int3
