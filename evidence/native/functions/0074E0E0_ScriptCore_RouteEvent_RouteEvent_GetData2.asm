# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074e0e0 (ScriptCore.RouteEvent::RouteEvent_GetData2)
Paired Ghidra pseudocode: 0074E0E0_ScriptCore_RouteEvent_RouteEvent_GetData2.c
Window: [0x0074e0e0, 0x0074e120) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074e120
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074e0e0: 8b 0d c4 50 1d 01 85 c9 56 74 2a 8b 44 24 08 50
0074e0f0: e8 1b d4 ff ff 8b f0 85 f6 74 1a 8b 16 8b 02 57
0074e100: 8b ce ff d0 8b 16 8b 42 04 8b 7e 64 8b ce ff d0
0074e110: 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074e0e0 <.text+0x34d0e0>:
  74e0e0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74e0e6:	85 c9                                           	test   ecx,ecx
  74e0e8:	56                                              	push   esi
  74e0e9:	74 2a                                           	je     0x74e115
  74e0eb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74e0ef:	50                                              	push   eax
  74e0f0:	e8 1b d4 ff ff                                  	call   0x74b510
  74e0f5:	8b f0                                           	mov    esi,eax
  74e0f7:	85 f6                                           	test   esi,esi
  74e0f9:	74 1a                                           	je     0x74e115
  74e0fb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e0fd:	8b 02                                           	mov    eax,DWORD PTR [edx]
  74e0ff:	57                                              	push   edi
  74e100:	8b ce                                           	mov    ecx,esi
  74e102:	ff d0                                           	call   eax
  74e104:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74e106:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  74e109:	8b 7e 64                                        	mov    edi,DWORD PTR [esi+0x64]
  74e10c:	8b ce                                           	mov    ecx,esi
  74e10e:	ff d0                                           	call   eax
  74e110:	8b c7                                           	mov    eax,edi
  74e112:	5f                                              	pop    edi
  74e113:	5e                                              	pop    esi
  74e114:	c3                                              	ret
  74e115:	33 c0                                           	xor    eax,eax
  74e117:	5e                                              	pop    esi
  74e118:	c3                                              	ret
  74e119:	cc                                              	int3
  74e11a:	cc                                              	int3
  74e11b:	cc                                              	int3
  74e11c:	cc                                              	int3
  74e11d:	cc                                              	int3
  74e11e:	cc                                              	int3
  74e11f:	cc                                              	int3
