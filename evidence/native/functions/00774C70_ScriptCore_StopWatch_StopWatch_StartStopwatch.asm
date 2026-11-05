# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774c70 (ScriptCore.StopWatch::StopWatch_StartStopwatch)
Paired Ghidra pseudocode: 00774C70_ScriptCore_StopWatch_StopWatch_StartStopwatch.c
Window: [0x00774c70, 0x00774cb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774c70: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774c80: 10 75 1e e8 08 47 ff ff 8b 10 8b c8 8b 82 cc 00
00774c90: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 bf 3a c9
00774ca0: ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774c70 <.text+0x373c70>:
  774c70:	56                                              	push   esi
  774c71:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774c75:	8b c6                                           	mov    eax,esi
  774c77:	25 00 00 00 ff                                  	and    eax,0xff000000
  774c7c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774c81:	75 1e                                           	jne    0x774ca1
  774c83:	e8 08 47 ff ff                                  	call   0x769390
  774c88:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774c8a:	8b c8                                           	mov    ecx,eax
  774c8c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774c92:	56                                              	push   esi
  774c93:	ff d0                                           	call   eax
  774c95:	85 c0                                           	test   eax,eax
  774c97:	74 08                                           	je     0x774ca1
  774c99:	8b c8                                           	mov    ecx,eax
  774c9b:	5e                                              	pop    esi
  774c9c:	e9 bf 3a c9 ff                                  	jmp    0x408760
  774ca1:	5e                                              	pop    esi
  774ca2:	c3                                              	ret
  774ca3:	cc                                              	int3
  774ca4:	cc                                              	int3
  774ca5:	cc                                              	int3
  774ca6:	cc                                              	int3
  774ca7:	cc                                              	int3
  774ca8:	cc                                              	int3
  774ca9:	cc                                              	int3
  774caa:	cc                                              	int3
  774cab:	cc                                              	int3
  774cac:	cc                                              	int3
  774cad:	cc                                              	int3
  774cae:	cc                                              	int3
  774caf:	cc                                              	int3
