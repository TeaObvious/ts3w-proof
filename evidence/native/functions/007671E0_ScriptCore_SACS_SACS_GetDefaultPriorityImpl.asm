# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007671e0 (ScriptCore.SACS::SACS_GetDefaultPriorityImpl)
Paired Ghidra pseudocode: 007671E0_ScriptCore_SACS_SACS_GetDefaultPriorityImpl.c
Window: [0x007671e0, 0x00767220) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007671e0: e8 ab 21 00 00 8b 4c 24 04 8b 10 8b 92 cc 00 00
007671f0: 00 51 8b c8 ff d2 85 c0 74 07 8b c8 e9 df 90 09
00767200: 00 b8 fd ff ff ff c3 cc cc cc cc cc cc cc cc cc
00767210: 83 e9 08 e9 08 04 00 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007671e0 <.text+0x3661e0>:
  7671e0:	e8 ab 21 00 00                                  	call   0x769390
  7671e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7671e9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7671eb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  7671f1:	51                                              	push   ecx
  7671f2:	8b c8                                           	mov    ecx,eax
  7671f4:	ff d2                                           	call   edx
  7671f6:	85 c0                                           	test   eax,eax
  7671f8:	74 07                                           	je     0x767201
  7671fa:	8b c8                                           	mov    ecx,eax
  7671fc:	e9 df 90 09 00                                  	jmp    0x8002e0
  767201:	b8 fd ff ff ff                                  	mov    eax,0xfffffffd
  767206:	c3                                              	ret
  767207:	cc                                              	int3
  767208:	cc                                              	int3
  767209:	cc                                              	int3
  76720a:	cc                                              	int3
  76720b:	cc                                              	int3
  76720c:	cc                                              	int3
  76720d:	cc                                              	int3
  76720e:	cc                                              	int3
  76720f:	cc                                              	int3
  767210:	83 e9 08                                        	sub    ecx,0x8
  767213:	e9 08 04 00 00                                  	jmp    0x767620
  767218:	cc                                              	int3
  767219:	cc                                              	int3
  76721a:	cc                                              	int3
  76721b:	cc                                              	int3
  76721c:	cc                                              	int3
  76721d:	cc                                              	int3
  76721e:	cc                                              	int3
  76721f:	cc                                              	int3
