# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774b40 (ScriptCore.StopWatch::StopWatch_GetElapsedTimeStopwatch)
Paired Ghidra pseudocode: 00774B40_ScriptCore_StopWatch_StopWatch_GetElapsedTimeStopwatch.c
Window: [0x00774b40, 0x00774b80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774b80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774b40: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774b50: 10 75 1e e8 38 48 ff ff 8b 10 8b c8 8b 82 cc 00
00774b60: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 4f eb d7
00774b70: ff 33 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774b40 <.text+0x373b40>:
  774b40:	56                                              	push   esi
  774b41:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774b45:	8b c6                                           	mov    eax,esi
  774b47:	25 00 00 00 ff                                  	and    eax,0xff000000
  774b4c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774b51:	75 1e                                           	jne    0x774b71
  774b53:	e8 38 48 ff ff                                  	call   0x769390
  774b58:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774b5a:	8b c8                                           	mov    ecx,eax
  774b5c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774b62:	56                                              	push   esi
  774b63:	ff d0                                           	call   eax
  774b65:	85 c0                                           	test   eax,eax
  774b67:	74 08                                           	je     0x774b71
  774b69:	8b c8                                           	mov    ecx,eax
  774b6b:	5e                                              	pop    esi
  774b6c:	e9 4f eb d7 ff                                  	jmp    0x4f36c0
  774b71:	33 c0                                           	xor    eax,eax
  774b73:	5e                                              	pop    esi
  774b74:	c3                                              	ret
  774b75:	cc                                              	int3
  774b76:	cc                                              	int3
  774b77:	cc                                              	int3
  774b78:	cc                                              	int3
  774b79:	cc                                              	int3
  774b7a:	cc                                              	int3
  774b7b:	cc                                              	int3
  774b7c:	cc                                              	int3
  774b7d:	cc                                              	int3
  774b7e:	cc                                              	int3
  774b7f:	cc                                              	int3
