# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6ce0 (ScriptCore.CASUtils::CASUtils_BlendUnitGetRegionImpl)
Paired Ghidra pseudocode: 005A6CE0_ScriptCore_CASUtils_CASUtils_BlendUnitGetRegionImpl.c
Window: [0x005a6ce0, 0x005a6d20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6d20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6ce0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6cf0: 35 74 04 33 c0 5e c3 e8 94 26 1c 00 8b 10 8b c8
005a6d00: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 40 54
005a6d10: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6ce0 <.text+0x1a5ce0>:
  5a6ce0:	56                                              	push   esi
  5a6ce1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6ce5:	8b c6                                           	mov    eax,esi
  5a6ce7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6cec:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6cf1:	74 04                                           	je     0x5a6cf7
  5a6cf3:	33 c0                                           	xor    eax,eax
  5a6cf5:	5e                                              	pop    esi
  5a6cf6:	c3                                              	ret
  5a6cf7:	e8 94 26 1c 00                                  	call   0x769390
  5a6cfc:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6cfe:	8b c8                                           	mov    ecx,eax
  5a6d00:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6d06:	56                                              	push   esi
  5a6d07:	ff d0                                           	call   eax
  5a6d09:	85 c0                                           	test   eax,eax
  5a6d0b:	74 e6                                           	je     0x5a6cf3
  5a6d0d:	8b 40 54                                        	mov    eax,DWORD PTR [eax+0x54]
  5a6d10:	5e                                              	pop    esi
  5a6d11:	c3                                              	ret
  5a6d12:	cc                                              	int3
  5a6d13:	cc                                              	int3
  5a6d14:	cc                                              	int3
  5a6d15:	cc                                              	int3
  5a6d16:	cc                                              	int3
  5a6d17:	cc                                              	int3
  5a6d18:	cc                                              	int3
  5a6d19:	cc                                              	int3
  5a6d1a:	cc                                              	int3
  5a6d1b:	cc                                              	int3
  5a6d1c:	cc                                              	int3
  5a6d1d:	cc                                              	int3
  5a6d1e:	cc                                              	int3
  5a6d1f:	cc                                              	int3
