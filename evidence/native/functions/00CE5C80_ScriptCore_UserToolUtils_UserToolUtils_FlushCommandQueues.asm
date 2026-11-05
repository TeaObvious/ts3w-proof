# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5c80 (ScriptCore.UserToolUtils::UserToolUtils_FlushCommandQueues)
Paired Ghidra pseudocode: 00CE5C80_ScriptCore_UserToolUtils_UserToolUtils_FlushCommandQueues.c
Window: [0x00ce5c80, 0x00ce5ca0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5ca0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5c80: e8 7b 98 00 00 85 c0 74 0c 8b 48 28 85 c9 74 05
00ce5c90: e9 1b 3c 05 00 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5c80 <.text+0x8e4c80>:
  ce5c80:	e8 7b 98 00 00                                  	call   0xcef500
  ce5c85:	85 c0                                           	test   eax,eax
  ce5c87:	74 0c                                           	je     0xce5c95
  ce5c89:	8b 48 28                                        	mov    ecx,DWORD PTR [eax+0x28]
  ce5c8c:	85 c9                                           	test   ecx,ecx
  ce5c8e:	74 05                                           	je     0xce5c95
  ce5c90:	e9 1b 3c 05 00                                  	jmp    0xd398b0
  ce5c95:	c3                                              	ret
  ce5c96:	cc                                              	int3
  ce5c97:	cc                                              	int3
  ce5c98:	cc                                              	int3
  ce5c99:	cc                                              	int3
  ce5c9a:	cc                                              	int3
  ce5c9b:	cc                                              	int3
  ce5c9c:	cc                                              	int3
  ce5c9d:	cc                                              	int3
  ce5c9e:	cc                                              	int3
  ce5c9f:	cc                                              	int3
