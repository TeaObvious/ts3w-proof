# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6ae0 (ScriptCore.UserToolUtils::UserToolUtils_TerrainSculptToolActiveImpl)
Paired Ghidra pseudocode: 00CE6AE0_ScriptCore_UserToolUtils_UserToolUtils_TerrainSculptToolActiveImpl.c
Window: [0x00ce6ae0, 0x00ce6b20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6b20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6ae0: e8 1b 8a 00 00 85 c0 74 2b 8b 48 30 83 f9 0f 75
00ce6af0: 1e 8b 40 2c 85 c0 74 14 83 c0 d8 74 0f 80 b8 86
00ce6b00: 00 00 00 00 74 06 b8 01 00 00 00 c3 33 c0 c3 83
00ce6b10: f9 17 74 dd 32 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6ae0 <.text+0x8e5ae0>:
  ce6ae0:	e8 1b 8a 00 00                                  	call   0xcef500
  ce6ae5:	85 c0                                           	test   eax,eax
  ce6ae7:	74 2b                                           	je     0xce6b14
  ce6ae9:	8b 48 30                                        	mov    ecx,DWORD PTR [eax+0x30]
  ce6aec:	83 f9 0f                                        	cmp    ecx,0xf
  ce6aef:	75 1e                                           	jne    0xce6b0f
  ce6af1:	8b 40 2c                                        	mov    eax,DWORD PTR [eax+0x2c]
  ce6af4:	85 c0                                           	test   eax,eax
  ce6af6:	74 14                                           	je     0xce6b0c
  ce6af8:	83 c0 d8                                        	add    eax,0xffffffd8
  ce6afb:	74 0f                                           	je     0xce6b0c
  ce6afd:	80 b8 86 00 00 00 00                            	cmp    BYTE PTR [eax+0x86],0x0
  ce6b04:	74 06                                           	je     0xce6b0c
  ce6b06:	b8 01 00 00 00                                  	mov    eax,0x1
  ce6b0b:	c3                                              	ret
  ce6b0c:	33 c0                                           	xor    eax,eax
  ce6b0e:	c3                                              	ret
  ce6b0f:	83 f9 17                                        	cmp    ecx,0x17
  ce6b12:	74 dd                                           	je     0xce6af1
  ce6b14:	32 c0                                           	xor    al,al
  ce6b16:	c3                                              	ret
  ce6b17:	cc                                              	int3
  ce6b18:	cc                                              	int3
  ce6b19:	cc                                              	int3
  ce6b1a:	cc                                              	int3
  ce6b1b:	cc                                              	int3
  ce6b1c:	cc                                              	int3
  ce6b1d:	cc                                              	int3
  ce6b1e:	cc                                              	int3
  ce6b1f:	cc                                              	int3
