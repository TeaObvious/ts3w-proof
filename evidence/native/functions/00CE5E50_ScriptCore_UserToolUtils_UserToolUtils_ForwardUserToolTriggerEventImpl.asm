# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5e50 (ScriptCore.UserToolUtils::UserToolUtils_ForwardUserToolTriggerEventImpl)
Paired Ghidra pseudocode: 00CE5E50_ScriptCore_UserToolUtils_UserToolUtils_ForwardUserToolTriggerEventImpl.c
Window: [0x00ce5e50, 0x00ce5e70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5e70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5e50: e8 ab 96 00 00 85 c0 74 11 8b 4c 24 08 8b 54 24
00ce5e60: 04 51 52 8b c8 e8 66 b6 00 00 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5e50 <.text+0x8e4e50>:
  ce5e50:	e8 ab 96 00 00                                  	call   0xcef500
  ce5e55:	85 c0                                           	test   eax,eax
  ce5e57:	74 11                                           	je     0xce5e6a
  ce5e59:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ce5e5d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  ce5e61:	51                                              	push   ecx
  ce5e62:	52                                              	push   edx
  ce5e63:	8b c8                                           	mov    ecx,eax
  ce5e65:	e8 66 b6 00 00                                  	call   0xcf14d0
  ce5e6a:	c3                                              	ret
  ce5e6b:	cc                                              	int3
  ce5e6c:	cc                                              	int3
  ce5e6d:	cc                                              	int3
  ce5e6e:	cc                                              	int3
  ce5e6f:	cc                                              	int3
