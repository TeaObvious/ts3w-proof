# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00743990 (ScriptCore.LocalizedStringService::LocalizedStringService_GetLocalizedStringByUInt64)
Paired Ghidra pseudocode: 00743990_ScriptCore_LocalizedStringService_LocalizedStringService_GetLocalizedStringByUInt64.c
Window: [0x00743990, 0x007439b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007439b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00743990: 8b 44 24 08 8b 4c 24 04 50 51 e8 11 7e e5 ff 8b
007439a0: c8 e8 aa 95 e5 ff c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00743990 <.text+0x342990>:
  743990:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  743994:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  743998:	50                                              	push   eax
  743999:	51                                              	push   ecx
  74399a:	e8 11 7e e5 ff                                  	call   0x59b7b0
  74399f:	8b c8                                           	mov    ecx,eax
  7439a1:	e8 aa 95 e5 ff                                  	call   0x59cf50
  7439a6:	c3                                              	ret
  7439a7:	cc                                              	int3
  7439a8:	cc                                              	int3
  7439a9:	cc                                              	int3
  7439aa:	cc                                              	int3
  7439ab:	cc                                              	int3
  7439ac:	cc                                              	int3
  7439ad:	cc                                              	int3
  7439ae:	cc                                              	int3
  7439af:	cc                                              	int3
