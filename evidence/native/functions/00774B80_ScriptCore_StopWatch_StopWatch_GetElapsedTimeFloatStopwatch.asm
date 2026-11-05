# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774b80 (ScriptCore.StopWatch::StopWatch_GetElapsedTimeFloatStopwatch)
Paired Ghidra pseudocode: 00774B80_ScriptCore_StopWatch_StopWatch_GetElapsedTimeFloatStopwatch.c
Window: [0x00774b80, 0x00774bc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774b80: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774b90: 10 75 1e e8 f8 47 ff ff 8b 10 8b c8 8b 82 cc 00
00774ba0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 0f ec d7
00774bb0: ff d9 ee 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774b80 <.text+0x373b80>:
  774b80:	56                                              	push   esi
  774b81:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774b85:	8b c6                                           	mov    eax,esi
  774b87:	25 00 00 00 ff                                  	and    eax,0xff000000
  774b8c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774b91:	75 1e                                           	jne    0x774bb1
  774b93:	e8 f8 47 ff ff                                  	call   0x769390
  774b98:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774b9a:	8b c8                                           	mov    ecx,eax
  774b9c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774ba2:	56                                              	push   esi
  774ba3:	ff d0                                           	call   eax
  774ba5:	85 c0                                           	test   eax,eax
  774ba7:	74 08                                           	je     0x774bb1
  774ba9:	8b c8                                           	mov    ecx,eax
  774bab:	5e                                              	pop    esi
  774bac:	e9 0f ec d7 ff                                  	jmp    0x4f37c0
  774bb1:	d9 ee                                           	fldz
  774bb3:	5e                                              	pop    esi
  774bb4:	c3                                              	ret
  774bb5:	cc                                              	int3
  774bb6:	cc                                              	int3
  774bb7:	cc                                              	int3
  774bb8:	cc                                              	int3
  774bb9:	cc                                              	int3
  774bba:	cc                                              	int3
  774bbb:	cc                                              	int3
  774bbc:	cc                                              	int3
  774bbd:	cc                                              	int3
  774bbe:	cc                                              	int3
  774bbf:	cc                                              	int3
