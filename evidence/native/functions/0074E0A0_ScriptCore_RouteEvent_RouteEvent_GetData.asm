# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e0a0 (ScriptCore.RouteEvent::RouteEvent_GetData)
Paired Ghidra pseudocode: 0074E0A0_ScriptCore_RouteEvent_RouteEvent_GetData.c
Window: [0x0074e0a0, 0x0074e0e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e0e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e0a0: 8b 0d c4 50 1d 01 85 c9 56 74 2a 8b 44 24 08 50
0074e0b0: e8 5b d4 ff ff 8b f0 85 f6 74 1a 8b 16 8b 02 57
0074e0c0: 8b ce ff d0 8b 16 8b 42 04 8b 7e 60 8b ce ff d0
0074e0d0: 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e0a0 <.text+0x34d0a0>:
  74e0a0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74e0a6:	85 c9                                           	test   ecx,ecx
  74e0a8:	56                                              	push   esi
  74e0a9:	74 2a                                           	je     0x74e0d5
  74e0ab:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74e0af:	50                                              	push   eax
  74e0b0:	e8 5b d4 ff ff                                  	call   0x74b510
  74e0b5:	8b f0                                           	mov    esi,eax
  74e0b7:	85 f6                                           	test   esi,esi
  74e0b9:	74 1a                                           	je     0x74e0d5
  74e0bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e0bd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74e0bf:	57                                              	push   edi
  74e0c0:	8b ce                                           	mov    ecx,esi
  74e0c2:	ff d0                                           	call   eax
  74e0c4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e0c6:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74e0c9:	8b 7e 60                                        	mov    edi,DWORD PTR [esi+0x60]
  74e0cc:	8b ce                                           	mov    ecx,esi
  74e0ce:	ff d0                                           	call   eax
  74e0d0:	8b c7                                           	mov    eax,edi
  74e0d2:	5f                                              	pop    edi
  74e0d3:	5e                                              	pop    esi
  74e0d4:	c3                                              	ret
  74e0d5:	33 c0                                           	xor    eax,eax
  74e0d7:	5e                                              	pop    esi
  74e0d8:	c3                                              	ret
  74e0d9:	cc                                              	int3
  74e0da:	cc                                              	int3
  74e0db:	cc                                              	int3
  74e0dc:	cc                                              	int3
  74e0dd:	cc                                              	int3
  74e0de:	cc                                              	int3
  74e0df:	cc                                              	int3
