# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774c00 (ScriptCore.StopWatch::StopWatch_SetElapsedTimeFloatStopwatch)
Paired Ghidra pseudocode: 00774C00_ScriptCore_StopWatch_StopWatch_SetElapsedTimeFloatStopwatch.c
Window: [0x00774c00, 0x00774c70) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774c70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774c00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774c10: 10 75 25 e8 78 47 ff ff 8b 10 8b c8 8b 82 cc 00
00774c20: 00 00 56 ff d0 85 c0 74 0f d9 44 24 0c 51 8b c8
00774c30: d9 1c 24 e8 28 ec d7 ff 5e c3 cc cc cc cc cc cc
00774c40: f6 44 24 04 01 56 8b f1 c7 05 34 78 1d 01 00 00
00774c50: 00 00 c7 06 c0 f6 fd 00 74 09 56 e8 80 f8 d6 ff
00774c60: 83 c4 04 8b c6 5e c2 04 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774c00 <.text+0x373c00>:
  774c00:	56                                              	push   esi
  774c01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774c05:	8b c6                                           	mov    eax,esi
  774c07:	25 00 00 00 ff                                  	and    eax,0xff000000
  774c0c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774c11:	75 25                                           	jne    0x774c38
  774c13:	e8 78 47 ff ff                                  	call   0x769390
  774c18:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774c1a:	8b c8                                           	mov    ecx,eax
  774c1c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774c22:	56                                              	push   esi
  774c23:	ff d0                                           	call   eax
  774c25:	85 c0                                           	test   eax,eax
  774c27:	74 0f                                           	je     0x774c38
  774c29:	d9 44 24 0c                                     	fld    DWORD PTR [esp+0xc]
  774c2d:	51                                              	push   ecx
  774c2e:	8b c8                                           	mov    ecx,eax
  774c30:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  774c33:	e8 28 ec d7 ff                                  	call   0x4f3860
  774c38:	5e                                              	pop    esi
  774c39:	c3                                              	ret
  774c3a:	cc                                              	int3
  774c3b:	cc                                              	int3
  774c3c:	cc                                              	int3
  774c3d:	cc                                              	int3
  774c3e:	cc                                              	int3
  774c3f:	cc                                              	int3
  774c40:	f6 44 24 04 01                                  	test   BYTE PTR [esp+0x4],0x1
  774c45:	56                                              	push   esi
  774c46:	8b f1                                           	mov    esi,ecx
  774c48:	c7 05 34 78 1d 01 00 00 00 00                   	mov    DWORD PTR ds:0x11d7834,0x0
  774c52:	c7 06 c0 f6 fd 00                               	mov    DWORD PTR [esi],0xfdf6c0
  774c58:	74 09                                           	je     0x774c63
  774c5a:	56                                              	push   esi
  774c5b:	e8 80 f8 d6 ff                                  	call   0x4e44e0
  774c60:	83 c4 04                                        	add    esp,0x4
  774c63:	8b c6                                           	mov    eax,esi
  774c65:	5e                                              	pop    esi
  774c66:	c2 04 00                                        	ret    0x4
  774c69:	cc                                              	int3
  774c6a:	cc                                              	int3
  774c6b:	cc                                              	int3
  774c6c:	cc                                              	int3
  774c6d:	cc                                              	int3
  774c6e:	cc                                              	int3
  774c6f:	cc                                              	int3
