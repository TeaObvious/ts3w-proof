# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00789a30 (ScriptCore.World::World_FindNearbyPointToSwimTo)
Paired Ghidra pseudocode: 00789A30_ScriptCore_World_World_FindNearbyPointToSwimTo.c
Window: [0x00789a30, 0x00789a70) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789a70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00789a30: 8b 44 24 18 d9 44 24 14 8b 4c 24 04 8b 54 24 08
00789a40: 50 83 ec 14 d9 5c 24 10 8b c4 d9 44 24 28 d9 5c
00789a50: 24 0c 89 08 8b 4c 24 24 89 50 04 89 48 08 e8 5d
00789a60: f0 ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00789a30 <.text+0x388a30>:
  789a30:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  789a34:	d9 44 24 14                                     	fld    DWORD PTR [esp+0x14]
  789a38:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  789a3c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  789a40:	50                                              	push   eax
  789a41:	83 ec 14                                        	sub    esp,0x14
  789a44:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
  789a48:	8b c4                                           	mov    eax,esp
  789a4a:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  789a4e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  789a52:	89 08                                           	mov    DWORD PTR [eax],ecx
  789a54:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  789a58:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  789a5b:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  789a5e:	e8 5d f0 ff ff                                  	call   0x788ac0
  789a63:	83 c4 18                                        	add    esp,0x18
  789a66:	c3                                              	ret
  789a67:	cc                                              	int3
  789a68:	cc                                              	int3
  789a69:	cc                                              	int3
  789a6a:	cc                                              	int3
  789a6b:	cc                                              	int3
  789a6c:	cc                                              	int3
  789a6d:	cc                                              	int3
  789a6e:	cc                                              	int3
  789a6f:	cc                                              	int3
