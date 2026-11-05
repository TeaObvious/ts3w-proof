# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00741090 (ScriptCore.DeviceConfig::DeviceConfig_ApplyOptions)
Paired Ghidra pseudocode: 00741090_ScriptCore_DeviceConfig_DeviceConfig_ApplyOptions.c
Window: [0x00741090, 0x007410b0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007410b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00741090: 56 e8 6a d7 e4 ff 8b f0 85 f6 74 0f 8b ce e8 1d
007410a0: db e4 ff 8b ce 5e e9 55 d5 e4 ff 5e c3 cc cc cc

LINEAR DISASSEMBLY
00741090 <.text+0x340090>:
  741090:	56                                              	push   esi
  741091:	e8 6a d7 e4 ff                                  	call   0x58e800
  741096:	8b f0                                           	mov    esi,eax
  741098:	85 f6                                           	test   esi,esi
  74109a:	74 0f                                           	je     0x7410ab
  74109c:	8b ce                                           	mov    ecx,esi
  74109e:	e8 1d db e4 ff                                  	call   0x58ebc0
  7410a3:	8b ce                                           	mov    ecx,esi
  7410a5:	5e                                              	pop    esi
  7410a6:	e9 55 d5 e4 ff                                  	jmp    0x58e600
  7410ab:	5e                                              	pop    esi
  7410ac:	c3                                              	ret
  7410ad:	cc                                              	int3
  7410ae:	cc                                              	int3
  7410af:	cc                                              	int3
