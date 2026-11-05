# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6b20 (ScriptCore.UserToolUtils::UserToolUtils_TerrainPaintToolActiveImpl)
Paired Ghidra pseudocode: 00CE6B20_ScriptCore_UserToolUtils_UserToolUtils_TerrainPaintToolActiveImpl.c
Window: [0x00ce6b20, 0x00ce6b50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6b50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6b20: e8 db 89 00 00 85 c0 74 24 83 78 30 12 75 1e 8b
00ce6b30: 40 2c 85 c0 74 14 83 c0 d8 74 0f 80 b8 8c 00 00
00ce6b40: 00 00 74 06 b8 01 00 00 00 c3 33 c0 c3 32 c0 c3

LINEAR DISASSEMBLY
00ce6b20 <.text+0x8e5b20>:
  ce6b20:	e8 db 89 00 00                                  	call   0xcef500
  ce6b25:	85 c0                                           	test   eax,eax
  ce6b27:	74 24                                           	je     0xce6b4d
  ce6b29:	83 78 30 12                                     	cmp    DWORD PTR [eax+0x30],0x12
  ce6b2d:	75 1e                                           	jne    0xce6b4d
  ce6b2f:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
  ce6b32:	85 c0                                           	test   eax,eax
  ce6b34:	74 14                                           	je     0xce6b4a
  ce6b36:	83 c0 d8                                        	add    eax,0xffffffd8
  ce6b39:	74 0f                                           	je     0xce6b4a
  ce6b3b:	80 b8 8c 00 00 00 00                            	cmp    BYTE PTR [eax+0x8c],0x0
  ce6b42:	74 06                                           	je     0xce6b4a
  ce6b44:	b8 01 00 00 00                                  	mov    eax,0x1
  ce6b49:	c3                                              	ret
  ce6b4a:	33 c0                                           	xor    eax,eax
  ce6b4c:	c3                                              	ret
  ce6b4d:	32 c0                                           	xor    al,al
  ce6b4f:	c3                                              	ret
