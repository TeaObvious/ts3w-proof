# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007879c0 (ScriptCore.World::World_ObjectDesigner_SetPatternImpl)
Paired Ghidra pseudocode: 007879C0_ScriptCore_World_World_ObjectDesigner_SetPatternImpl.c
Window: [0x007879c0, 0x00787a20) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007879c0: 83 ec 10 e8 d8 88 3a 00 8b 4c 24 2c 8b 54 24 30
007879d0: 89 0c 24 8b 4c 24 24 89 54 24 04 8b 54 24 28 89
007879e0: 4c 24 08 8b 4c 24 1c 89 54 24 0c 8b 54 24 20 89
007879f0: 4c 24 24 8b 4c 24 14 89 54 24 28 8b 54 24 18 89
00787a00: 4c 24 2c 8d 0c 24 89 54 24 30 51 8d 54 24 28 52
00787a10: 8b c8 e8 49 ff 3a 00 83 c4 10 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007879c0 <.text+0x3869c0>:
  7879c0:	83 ec 10                                        	sub    esp,0x10
  7879c3:	e8 d8 88 3a 00                                  	call   0xb302a0
  7879c8:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  7879cc:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7879d0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  7879d3:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7879d7:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7879db:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  7879df:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7879e3:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7879e7:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  7879eb:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7879ef:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  7879f3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7879f7:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  7879fb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7879ff:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  787a03:	8d 0c 24                                        	lea    ecx,[esp]
  787a06:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  787a0a:	51                                              	push   ecx
  787a0b:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  787a0f:	52                                              	push   edx
  787a10:	8b c8                                           	mov    ecx,eax
  787a12:	e8 49 ff 3a 00                                  	call   0xb37960
  787a17:	83 c4 10                                        	add    esp,0x10
  787a1a:	c3                                              	ret
  787a1b:	cc                                              	int3
  787a1c:	cc                                              	int3
  787a1d:	cc                                              	int3
  787a1e:	cc                                              	int3
  787a1f:	cc                                              	int3
