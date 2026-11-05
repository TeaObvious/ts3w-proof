# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784180 (ScriptCore.VideoRecorder::VideoRecorder_Pause)
Paired Ghidra pseudocode: 00784180_ScriptCore_VideoRecorder_VideoRecorder_Pause.c
Window: [0x00784180, 0x007841a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007841a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784180: e8 0b be 25 00 85 c0 74 09 8b 10 8b c8 8b 42 28
00784190: ff e0 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784180 <.text+0x383180>:
  784180:	e8 0b be 25 00                                  	call   0x9dff90
  784185:	85 c0                                           	test   eax,eax
  784187:	74 09                                           	je     0x784192
  784189:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78418b:	8b c8                                           	mov    ecx,eax
  78418d:	8b 42 28                                        	mov    eax,DWORD PTR [edx+0x28]
  784190:	ff e0                                           	jmp    eax
  784192:	c3                                              	ret
  784193:	cc                                              	int3
  784194:	cc                                              	int3
  784195:	cc                                              	int3
  784196:	cc                                              	int3
  784197:	cc                                              	int3
  784198:	cc                                              	int3
  784199:	cc                                              	int3
  78419a:	cc                                              	int3
  78419b:	cc                                              	int3
  78419c:	cc                                              	int3
  78419d:	cc                                              	int3
  78419e:	cc                                              	int3
  78419f:	cc                                              	int3
