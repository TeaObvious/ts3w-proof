# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774b00 (ScriptCore.StopWatch::StopWatch_StopStopwatch)
Paired Ghidra pseudocode: 00774B00_ScriptCore_StopWatch_StopWatch_StopStopwatch.c
Window: [0x00774b00, 0x00774b40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774b40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774b00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774b10: 10 75 1e e8 78 48 ff ff 8b 10 8b c8 8b 82 cc 00
00774b20: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 ef ea d7
00774b30: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774b00 <.text+0x373b00>:
  774b00:	56                                              	push   esi
  774b01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774b05:	8b c6                                           	mov    eax,esi
  774b07:	25 00 00 00 ff                                  	and    eax,0xff000000
  774b0c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774b11:	75 1e                                           	jne    0x774b31
  774b13:	e8 78 48 ff ff                                  	call   0x769390
  774b18:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774b1a:	8b c8                                           	mov    ecx,eax
  774b1c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774b22:	56                                              	push   esi
  774b23:	ff d0                                           	call   eax
  774b25:	85 c0                                           	test   eax,eax
  774b27:	74 08                                           	je     0x774b31
  774b29:	8b c8                                           	mov    ecx,eax
  774b2b:	5e                                              	pop    esi
  774b2c:	e9 ef ea d7 ff                                  	jmp    0x4f3620
  774b31:	5e                                              	pop    esi
  774b32:	c3                                              	ret
  774b33:	cc                                              	int3
  774b34:	cc                                              	int3
  774b35:	cc                                              	int3
  774b36:	cc                                              	int3
  774b37:	cc                                              	int3
  774b38:	cc                                              	int3
  774b39:	cc                                              	int3
  774b3a:	cc                                              	int3
  774b3b:	cc                                              	int3
  774b3c:	cc                                              	int3
  774b3d:	cc                                              	int3
  774b3e:	cc                                              	int3
  774b3f:	cc                                              	int3
