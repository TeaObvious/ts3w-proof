# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774dc0 (ScriptCore.StopWatch::StopWatch_DestroyStopwatch)
Paired Ghidra pseudocode: 00774DC0_ScriptCore_StopWatch_StopWatch_DestroyStopwatch.c
Window: [0x00774dc0, 0x00774e00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774e00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774dc0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774dd0: 10 75 20 e8 b8 45 ff ff 8b 10 8b c8 8b 82 d8 00
00774de0: 00 00 56 ff d0 85 c0 74 0a 5e 89 44 24 04 e9 ed
00774df0: f6 d6 ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774dc0 <.text+0x373dc0>:
  774dc0:	56                                              	push   esi
  774dc1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774dc5:	8b c6                                           	mov    eax,esi
  774dc7:	25 00 00 00 ff                                  	and    eax,0xff000000
  774dcc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774dd1:	75 20                                           	jne    0x774df3
  774dd3:	e8 b8 45 ff ff                                  	call   0x769390
  774dd8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774dda:	8b c8                                           	mov    ecx,eax
  774ddc:	8b 82 d8 00 00 00                               	mov    eax,DWORD PTR [edx+0xd8]
  774de2:	56                                              	push   esi
  774de3:	ff d0                                           	call   eax
  774de5:	85 c0                                           	test   eax,eax
  774de7:	74 0a                                           	je     0x774df3
  774de9:	5e                                              	pop    esi
  774dea:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
  774dee:	e9 ed f6 d6 ff                                  	jmp    0x4e44e0
  774df3:	5e                                              	pop    esi
  774df4:	c3                                              	ret
  774df5:	cc                                              	int3
  774df6:	cc                                              	int3
  774df7:	cc                                              	int3
  774df8:	cc                                              	int3
  774df9:	cc                                              	int3
  774dfa:	cc                                              	int3
  774dfb:	cc                                              	int3
  774dfc:	cc                                              	int3
  774dfd:	cc                                              	int3
  774dfe:	cc                                              	int3
  774dff:	cc                                              	int3
