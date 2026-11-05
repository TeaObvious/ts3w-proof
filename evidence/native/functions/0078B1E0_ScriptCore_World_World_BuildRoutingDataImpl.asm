# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078b1e0 (ScriptCore.World::World_BuildRoutingDataImpl)
Paired Ghidra pseudocode: 0078B1E0_ScriptCore_World_World_BuildRoutingDataImpl.c
Window: [0x0078b1e0, 0x0078b210) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078b210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078b1e0: 56 8b 35 c4 db 1e 01 85 f6 74 18 57 8b be 84 00
0078b1f0: 00 00 8b ce e8 57 42 4d 00 50 57 8b ce e8 fe 08
0078b200: 4e 00 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078b1e0 <.text+0x38a1e0>:
  78b1e0:	56                                              	push   esi
  78b1e1:	8b 35 c4 db 1e 01                               	mov    esi,DWORD PTR ds:0x11edbc4
  78b1e7:	85 f6                                           	test   esi,esi
  78b1e9:	74 18                                           	je     0x78b203
  78b1eb:	57                                              	push   edi
  78b1ec:	8b be 84 00 00 00                               	mov    edi,DWORD PTR [esi+0x84]
  78b1f2:	8b ce                                           	mov    ecx,esi
  78b1f4:	e8 57 42 4d 00                                  	call   0xc5f450
  78b1f9:	50                                              	push   eax
  78b1fa:	57                                              	push   edi
  78b1fb:	8b ce                                           	mov    ecx,esi
  78b1fd:	e8 fe 08 4e 00                                  	call   0xc6bb00
  78b202:	5f                                              	pop    edi
  78b203:	5e                                              	pop    esi
  78b204:	c3                                              	ret
  78b205:	cc                                              	int3
  78b206:	cc                                              	int3
  78b207:	cc                                              	int3
  78b208:	cc                                              	int3
  78b209:	cc                                              	int3
  78b20a:	cc                                              	int3
  78b20b:	cc                                              	int3
  78b20c:	cc                                              	int3
  78b20d:	cc                                              	int3
  78b20e:	cc                                              	int3
  78b20f:	cc                                              	int3
