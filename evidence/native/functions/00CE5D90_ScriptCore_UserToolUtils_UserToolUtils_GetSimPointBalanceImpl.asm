# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce5d90 (ScriptCore.UserToolUtils::UserToolUtils_GetSimPointBalanceImpl)
Paired Ghidra pseudocode: 00CE5D90_ScriptCore_UserToolUtils_UserToolUtils_GetSimPointBalanceImpl.c
Window: [0x00ce5d90, 0x00ce5db0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce5db0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce5d90: 8b 0d 60 a9 1e 01 85 c9 74 05 e9 51 a1 ce ff 33
00ce5da0: c0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce5d90 <.text+0x8e4d90>:
  ce5d90:	8b 0d 60 a9 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea960
  ce5d96:	85 c9                                           	test   ecx,ecx
  ce5d98:	74 05                                           	je     0xce5d9f
  ce5d9a:	e9 51 a1 ce ff                                  	jmp    0x9cfef0
  ce5d9f:	33 c0                                           	xor    eax,eax
  ce5da1:	c3                                              	ret
  ce5da2:	cc                                              	int3
  ce5da3:	cc                                              	int3
  ce5da4:	cc                                              	int3
  ce5da5:	cc                                              	int3
  ce5da6:	cc                                              	int3
  ce5da7:	cc                                              	int3
  ce5da8:	cc                                              	int3
  ce5da9:	cc                                              	int3
  ce5daa:	cc                                              	int3
  ce5dab:	cc                                              	int3
  ce5dac:	cc                                              	int3
  ce5dad:	cc                                              	int3
  ce5dae:	cc                                              	int3
  ce5daf:	cc                                              	int3
