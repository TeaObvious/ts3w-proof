# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00862f40 (ScriptCore.Audio::Audio_SetSoundPropertyImpl)
Paired Ghidra pseudocode: 00862F40_ScriptCore_Audio_Audio_SetSoundPropertyImpl.c
Window: [0x00862f40, 0x00862f60) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00862f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00862f40: d9 44 24 0c 8b 44 24 08 6a 01 51 8b 4c 24 0c d9
00862f50: 1c 24 50 51 e8 07 ff ff ff 83 c4 10 b0 01 c3 cc

LINEAR DISASSEMBLY
00862f40 <.text+0x461f40>:
  862f40:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  862f44:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  862f48:	6a 01                                           	push   0x1
  862f4a:	51                                              	push   ecx
  862f4b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  862f4f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  862f52:	50                                              	push   eax
  862f53:	51                                              	push   ecx
  862f54:	e8 07 ff ff ff                                  	call   0x862e60
  862f59:	83 c4 10                                        	add    esp,0x10
  862f5c:	b0 01                                           	mov    al,0x1
  862f5e:	c3                                              	ret
  862f5f:	cc                                              	int3
