# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5e70 (ScriptCore.UserToolUtils::UserToolUtils_SetBuildBuyGenericCallbackImpl)
Paired Ghidra pseudocode: 00CE5E70_ScriptCore_UserToolUtils_UserToolUtils_SetBuildBuyGenericCallbackImpl.c
Window: [0x00ce5e70, 0x00ce5e80) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5e80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5e70: 8b 44 24 04 8b 0d 18 e7 1e 01 89 41 04 c3 cc cc

LINEAR DISASSEMBLY
00ce5e70 <.text+0x8e4e70>:
  ce5e70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ce5e74:	8b 0d 18 e7 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee718
  ce5e7a:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
  ce5e7d:	c3                                              	ret
  ce5e7e:	cc                                              	int3
  ce5e7f:	cc                                              	int3
