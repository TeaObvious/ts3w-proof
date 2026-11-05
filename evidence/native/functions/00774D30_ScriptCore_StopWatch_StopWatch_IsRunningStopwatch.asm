# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00774d30 (ScriptCore.StopWatch::StopWatch_IsRunningStopwatch)
Paired Ghidra pseudocode: 00774D30_ScriptCore_StopWatch_StopWatch_IsRunningStopwatch.c
Window: [0x00774d30, 0x00774d70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00774d70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00774d30: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00774d40: 10 75 28 e8 48 46 ff ff 8b 10 8b c8 8b 82 cc 00
00774d50: 00 00 56 ff d0 85 c0 74 12 8b 08 0b 48 04 74 07
00774d60: b8 01 00 00 00 5e c3 33 c0 5e c3 32 c0 5e c3 cc

LINEAR DISASSEMBLY
00774d30 <.text+0x373d30>:
  774d30:	56                                              	push   esi
  774d31:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  774d35:	8b c6                                           	mov    eax,esi
  774d37:	25 00 00 00 ff                                  	and    eax,0xff000000
  774d3c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
  774d41:	75 28                                           	jne    0x774d6b
  774d43:	e8 48 46 ff ff                                  	call   0x769390
  774d48:	8b 10                                           	mov    edx,DWORD PTR [eax]
  774d4a:	8b c8                                           	mov    ecx,eax
  774d4c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  774d52:	56                                              	push   esi
  774d53:	ff d0                                           	call   eax
  774d55:	85 c0                                           	test   eax,eax
  774d57:	74 12                                           	je     0x774d6b
  774d59:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  774d5b:	0b 48 04                                        	or     ecx,DWORD PTR [eax+0x4]
  774d5e:	74 07                                           	je     0x774d67
  774d60:	b8 01 00 00 00                                  	mov    eax,0x1
  774d65:	5e                                              	pop    esi
  774d66:	c3                                              	ret
  774d67:	33 c0                                           	xor    eax,eax
  774d69:	5e                                              	pop    esi
  774d6a:	c3                                              	ret
  774d6b:	32 c0                                           	xor    al,al
  774d6d:	5e                                              	pop    esi
  774d6e:	c3                                              	ret
  774d6f:	cc                                              	int3
