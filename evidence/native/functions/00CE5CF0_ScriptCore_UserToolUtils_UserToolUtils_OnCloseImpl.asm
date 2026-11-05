# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5cf0 (ScriptCore.UserToolUtils::UserToolUtils_OnCloseImpl)
Paired Ghidra pseudocode: 00CE5CF0_ScriptCore_UserToolUtils_UserToolUtils_OnCloseImpl.c
Window: [0x00ce5cf0, 0x00ce5d10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5d10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5cf0: e8 0b 98 00 00 85 c0 74 07 8b c8 e9 d0 a1 00 00
00ce5d00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5cf0 <.text+0x8e4cf0>:
  ce5cf0:	e8 0b 98 00 00                                  	call   0xcef500
  ce5cf5:	85 c0                                           	test   eax,eax
  ce5cf7:	74 07                                           	je     0xce5d00
  ce5cf9:	8b c8                                           	mov    ecx,eax
  ce5cfb:	e9 d0 a1 00 00                                  	jmp    0xcefed0
  ce5d00:	c3                                              	ret
  ce5d01:	cc                                              	int3
  ce5d02:	cc                                              	int3
  ce5d03:	cc                                              	int3
  ce5d04:	cc                                              	int3
  ce5d05:	cc                                              	int3
  ce5d06:	cc                                              	int3
  ce5d07:	cc                                              	int3
  ce5d08:	cc                                              	int3
  ce5d09:	cc                                              	int3
  ce5d0a:	cc                                              	int3
  ce5d0b:	cc                                              	int3
  ce5d0c:	cc                                              	int3
  ce5d0d:	cc                                              	int3
  ce5d0e:	cc                                              	int3
  ce5d0f:	cc                                              	int3
