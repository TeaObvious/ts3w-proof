# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00797bf0 (ScriptCore.World::World_TestObjectPlacementP)
Paired Ghidra pseudocode: 00797BF0_ScriptCore_World_World_TestObjectPlacementP.c
Window: [0x00797bf0, 0x00797c20) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00797c20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00797bf0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 6a 00 6a 00
00797c00: 6a 00 6a 00 6a 00 50 8b 44 24 1c 6a 00 51 52 50
00797c10: e8 eb f5 ff ff 83 c4 28 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00797bf0 <.text+0x396bf0>:
  797bf0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  797bf4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  797bf8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  797bfc:	6a 00                                           	push   0x0
  797bfe:	6a 00                                           	push   0x0
  797c00:	6a 00                                           	push   0x0
  797c02:	6a 00                                           	push   0x0
  797c04:	6a 00                                           	push   0x0
  797c06:	50                                              	push   eax
  797c07:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  797c0b:	6a 00                                           	push   0x0
  797c0d:	51                                              	push   ecx
  797c0e:	52                                              	push   edx
  797c0f:	50                                              	push   eax
  797c10:	e8 eb f5 ff ff                                  	call   0x797200
  797c15:	83 c4 28                                        	add    esp,0x28
  797c18:	c3                                              	ret
  797c19:	cc                                              	int3
  797c1a:	cc                                              	int3
  797c1b:	cc                                              	int3
  797c1c:	cc                                              	int3
  797c1d:	cc                                              	int3
  797c1e:	cc                                              	int3
  797c1f:	cc                                              	int3
