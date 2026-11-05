# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00862f20 (ScriptCore.Audio::Audio_StopSoundImpl)
Paired Ghidra pseudocode: 00862F20_ScriptCore_Audio_Audio_StopSoundImpl.c
Window: [0x00862f20, 0x00862f40) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00862f40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00862f20: 8b 44 24 04 6a 00 50 e8 b4 d9 ff ff 83 c4 08 b0
00862f30: 01 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00862f20 <.text+0x461f20>:
  862f20:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  862f24:	6a 00                                           	push   0x0
  862f26:	50                                              	push   eax
  862f27:	e8 b4 d9 ff ff                                  	call   0x8608e0
  862f2c:	83 c4 08                                        	add    esp,0x8
  862f2f:	b0 01                                           	mov    al,0x1
  862f31:	c3                                              	ret
  862f32:	cc                                              	int3
  862f33:	cc                                              	int3
  862f34:	cc                                              	int3
  862f35:	cc                                              	int3
  862f36:	cc                                              	int3
  862f37:	cc                                              	int3
  862f38:	cc                                              	int3
  862f39:	cc                                              	int3
  862f3a:	cc                                              	int3
  862f3b:	cc                                              	int3
  862f3c:	cc                                              	int3
  862f3d:	cc                                              	int3
  862f3e:	cc                                              	int3
  862f3f:	cc                                              	int3
