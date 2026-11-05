# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5d70 (ScriptCore.UserToolUtils::UserToolUtils_DeleteCollectionImpl)
Paired Ghidra pseudocode: 00CE5D70_ScriptCore_UserToolUtils_UserToolUtils_DeleteCollectionImpl.c
Window: [0x00ce5d70, 0x00ce5d90) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5d70: 8b 0d c8 9a 1d 01 85 c9 74 0f 8b 44 24 08 8b 54
00ce5d80: 24 04 50 52 e8 b7 b2 af ff c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5d70 <.text+0x8e4d70>:
  ce5d70:	8b 0d c8 9a 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9ac8
  ce5d76:	85 c9                                           	test   ecx,ecx
  ce5d78:	74 0f                                           	je     0xce5d89
  ce5d7a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce5d7e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce5d82:	50                                              	push   eax
  ce5d83:	52                                              	push   edx
  ce5d84:	e8 b7 b2 af ff                                  	call   0x7e1040
  ce5d89:	c3                                              	ret
  ce5d8a:	cc                                              	int3
  ce5d8b:	cc                                              	int3
  ce5d8c:	cc                                              	int3
  ce5d8d:	cc                                              	int3
  ce5d8e:	cc                                              	int3
  ce5d8f:	cc                                              	int3
