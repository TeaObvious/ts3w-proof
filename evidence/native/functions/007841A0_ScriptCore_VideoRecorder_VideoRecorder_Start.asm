# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007841a0 (ScriptCore.VideoRecorder::VideoRecorder_Start)
Paired Ghidra pseudocode: 007841A0_ScriptCore_VideoRecorder_VideoRecorder_Start.c
Window: [0x007841a0, 0x007841c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007841c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007841a0: e8 eb bd 25 00 85 c0 74 09 8b 10 8b c8 8b 42 2c
007841b0: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007841a0 <.text+0x3831a0>:
  7841a0:	e8 eb bd 25 00                                  	call   0x9dff90
  7841a5:	85 c0                                           	test   eax,eax
  7841a7:	74 09                                           	je     0x7841b2
  7841a9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7841ab:	8b c8                                           	mov    ecx,eax
  7841ad:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  7841b0:	ff e0                                           	jmp    eax
  7841b2:	c3                                              	ret
  7841b3:	cc                                              	int3
  7841b4:	cc                                              	int3
  7841b5:	cc                                              	int3
  7841b6:	cc                                              	int3
  7841b7:	cc                                              	int3
  7841b8:	cc                                              	int3
  7841b9:	cc                                              	int3
  7841ba:	cc                                              	int3
  7841bb:	cc                                              	int3
  7841bc:	cc                                              	int3
  7841bd:	cc                                              	int3
  7841be:	cc                                              	int3
  7841bf:	cc                                              	int3
