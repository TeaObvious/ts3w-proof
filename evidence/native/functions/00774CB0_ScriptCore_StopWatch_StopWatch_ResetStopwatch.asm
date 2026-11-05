# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774cb0 (ScriptCore.StopWatch::StopWatch_ResetStopwatch)
Paired Ghidra pseudocode: 00774CB0_ScriptCore_StopWatch_StopWatch_ResetStopwatch.c
Window: [0x00774cb0, 0x00774cf0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774cf0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774cb0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774cc0: 10 75 23 e8 c8 46 ff ff 8b 10 8b c8 8b 82 cc 00
00774cd0: 00 00 56 ff d0 33 c9 3b c1 74 0b 89 08 89 48 04
00774ce0: 89 48 08 89 48 0c 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00774cb0 <.text+0x373cb0>:
  774cb0:	56                                              	push   esi
  774cb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774cb5:	8b c6                                           	mov    eax,esi
  774cb7:	25 00 00 00 ff                                  	and    eax,0xff000000
  774cbc:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774cc1:	75 23                                           	jne    0x774ce6
  774cc3:	e8 c8 46 ff ff                                  	call   0x769390
  774cc8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774cca:	8b c8                                           	mov    ecx,eax
  774ccc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774cd2:	56                                              	push   esi
  774cd3:	ff d0                                           	call   eax
  774cd5:	33 c9                                           	xor    ecx,ecx
  774cd7:	3b c1                                           	cmp    eax,ecx
  774cd9:	74 0b                                           	je     0x774ce6
  774cdb:	89 08                                           	mov    DWORD PTR [eax],ecx
  774cdd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  774ce0:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  774ce3:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  774ce6:	5e                                              	pop    esi
  774ce7:	c3                                              	ret
  774ce8:	cc                                              	int3
  774ce9:	cc                                              	int3
  774cea:	cc                                              	int3
  774ceb:	cc                                              	int3
  774cec:	cc                                              	int3
  774ced:	cc                                              	int3
  774cee:	cc                                              	int3
  774cef:	cc                                              	int3
