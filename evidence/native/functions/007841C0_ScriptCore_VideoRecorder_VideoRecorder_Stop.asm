# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007841c0 (ScriptCore.VideoRecorder::VideoRecorder_Stop)
Paired Ghidra pseudocode: 007841C0_ScriptCore_VideoRecorder_VideoRecorder_Stop.c
Window: [0x007841c0, 0x007841e0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007841e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007841c0: e8 cb bd 25 00 85 c0 74 09 8b 10 8b c8 8b 42 30
007841d0: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007841c0 <.text+0x3831c0>:
  7841c0:	e8 cb bd 25 00                                  	call   0x9dff90
  7841c5:	85 c0                                           	test   eax,eax
  7841c7:	74 09                                           	je     0x7841d2
  7841c9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7841cb:	8b c8                                           	mov    ecx,eax
  7841cd:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  7841d0:	ff e0                                           	jmp    eax
  7841d2:	c3                                              	ret
  7841d3:	cc                                              	int3
  7841d4:	cc                                              	int3
  7841d5:	cc                                              	int3
  7841d6:	cc                                              	int3
  7841d7:	cc                                              	int3
  7841d8:	cc                                              	int3
  7841d9:	cc                                              	int3
  7841da:	cc                                              	int3
  7841db:	cc                                              	int3
  7841dc:	cc                                              	int3
  7841dd:	cc                                              	int3
  7841de:	cc                                              	int3
  7841df:	cc                                              	int3
