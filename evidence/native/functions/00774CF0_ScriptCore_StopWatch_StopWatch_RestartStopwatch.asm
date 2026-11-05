# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774cf0 (ScriptCore.StopWatch::StopWatch_RestartStopwatch)
Paired Ghidra pseudocode: 00774CF0_ScriptCore_StopWatch_StopWatch_RestartStopwatch.c
Window: [0x00774cf0, 0x00774d30) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774d30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774cf0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774d00: 10 75 1e e8 88 46 ff ff 8b 10 8b c8 8b 82 cc 00
00774d10: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 6f eb d6
00774d20: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774cf0 <.text+0x373cf0>:
  774cf0:	56                                              	push   esi
  774cf1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774cf5:	8b c6                                           	mov    eax,esi
  774cf7:	25 00 00 00 ff                                  	and    eax,0xff000000
  774cfc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774d01:	75 1e                                           	jne    0x774d21
  774d03:	e8 88 46 ff ff                                  	call   0x769390
  774d08:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774d0a:	8b c8                                           	mov    ecx,eax
  774d0c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774d12:	56                                              	push   esi
  774d13:	ff d0                                           	call   eax
  774d15:	85 c0                                           	test   eax,eax
  774d17:	74 08                                           	je     0x774d21
  774d19:	8b c8                                           	mov    ecx,eax
  774d1b:	5e                                              	pop    esi
  774d1c:	e9 6f eb d6 ff                                  	jmp    0x4e3890
  774d21:	5e                                              	pop    esi
  774d22:	c3                                              	ret
  774d23:	cc                                              	int3
  774d24:	cc                                              	int3
  774d25:	cc                                              	int3
  774d26:	cc                                              	int3
  774d27:	cc                                              	int3
  774d28:	cc                                              	int3
  774d29:	cc                                              	int3
  774d2a:	cc                                              	int3
  774d2b:	cc                                              	int3
  774d2c:	cc                                              	int3
  774d2d:	cc                                              	int3
  774d2e:	cc                                              	int3
  774d2f:	cc                                              	int3
