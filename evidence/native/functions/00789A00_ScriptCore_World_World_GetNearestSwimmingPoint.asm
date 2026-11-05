# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789a00 (ScriptCore.World::World_GetNearestSwimmingPoint)
Paired Ghidra pseudocode: 00789A00_ScriptCore_World_World_GetNearestSwimmingPoint.c
Window: [0x00789a00, 0x00789a30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789a30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789a00: 8b 44 24 14 8b 4c 24 10 8b 54 24 04 50 51 8b 4c
00789a10: 24 10 83 ec 0c 8b c4 89 10 8b 54 24 20 89 48 04
00789a20: 89 50 08 e8 98 ef ff ff 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
00789a00 <.text+0x388a00>:
  789a00:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  789a04:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  789a08:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  789a0c:	50                                              	push   eax
  789a0d:	51                                              	push   ecx
  789a0e:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  789a12:	83 ec 0c                                        	sub    esp,0xc
  789a15:	8b c4                                           	mov    eax,esp
  789a17:	89 10                                           	mov    DWORD PTR [eax],edx
  789a19:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  789a1d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  789a20:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
  789a23:	e8 98 ef ff ff                                  	call   0x7889c0
  789a28:	83 c4 14                                        	add    esp,0x14
  789a2b:	c3                                              	ret
  789a2c:	cc                                              	int3
  789a2d:	cc                                              	int3
  789a2e:	cc                                              	int3
  789a2f:	cc                                              	int3
