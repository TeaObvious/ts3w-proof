# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007670d0 (ScriptCore.SACS::SACS_CanPauseImpl)
Paired Ghidra pseudocode: 007670D0_ScriptCore_SACS_SACS_CanPauseImpl.c
Window: [0x007670d0, 0x00767100) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007670d0: e8 bb 22 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
007670e0: 00 51 8b c8 ff d2 85 c0 74 0d 8b 4c 24 08 51 8b
007670f0: c8 e8 ea 8f 09 00 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007670d0 <.text+0x3660d0>:
  7670d0:	e8 bb 22 00 00                                  	call   0x769390
  7670d5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7670d9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7670db:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  7670e1:	51                                              	push   ecx
  7670e2:	8b c8                                           	mov    ecx,eax
  7670e4:	ff d2                                           	call   edx
  7670e6:	85 c0                                           	test   eax,eax
  7670e8:	74 0d                                           	je     0x7670f7
  7670ea:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7670ee:	51                                              	push   ecx
  7670ef:	8b c8                                           	mov    ecx,eax
  7670f1:	e8 ea 8f 09 00                                  	call   0x8000e0
  7670f6:	c3                                              	ret
  7670f7:	32 c0                                           	xor    al,al
  7670f9:	c3                                              	ret
  7670fa:	cc                                              	int3
  7670fb:	cc                                              	int3
  7670fc:	cc                                              	int3
  7670fd:	cc                                              	int3
  7670fe:	cc                                              	int3
  7670ff:	cc                                              	int3
