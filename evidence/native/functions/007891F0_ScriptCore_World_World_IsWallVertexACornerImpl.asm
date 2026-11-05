# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007891f0 (ScriptCore.World::World_IsWallVertexACornerImpl)
Paired Ghidra pseudocode: 007891F0_ScriptCore_World_World_IsWallVertexACornerImpl.c
Window: [0x007891f0, 0x00789220) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00789220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007891f0: 8b 4c 24 0c 8b 54 24 10 83 ec 0c 8b c4 89 08 8b
00789200: 4c 24 20 89 50 04 8b 54 24 14 89 48 08 8b 44 24
00789210: 10 52 50 e8 f8 20 08 00 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
007891f0 <.text+0x3881f0>:
  7891f0:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7891f4:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  7891f8:	83 ec 0c                                        	sub    esp,0xc
  7891fb:	8b c4                                           	mov    eax,esp
  7891fd:	89 08                                           	mov    DWORD PTR [eax],ecx
  7891ff:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  789203:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  789206:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78920a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  78920d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  789211:	52                                              	push   edx
  789212:	50                                              	push   eax
  789213:	e8 f8 20 08 00                                  	call   0x80b310
  789218:	83 c4 14                                        	add    esp,0x14
  78921b:	c3                                              	ret
  78921c:	cc                                              	int3
  78921d:	cc                                              	int3
  78921e:	cc                                              	int3
  78921f:	cc                                              	int3
