# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787980 (ScriptCore.World::World_ObjectDesigner_SetCASPartImpl)
Paired Ghidra pseudocode: 00787980_ScriptCore_World_World_ObjectDesigner_SetCASPartImpl.c
Window: [0x00787980, 0x007879c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007879c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787980: 83 ec 10 e8 18 89 3a 00 8b 4c 24 1c 8b 54 24 20
00787990: 89 0c 24 8b 4c 24 14 89 4c 24 08 8d 0c 24 89 54
007879a0: 24 04 8b 54 24 18 51 8b c8 89 54 24 10 e8 ae 04
007879b0: 3b 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787980 <.text+0x386980>:
  787980:	83 ec 10                                        	sub    esp,0x10
  787983:	e8 18 89 3a 00                                  	call   0xb302a0
  787988:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78798c:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  787990:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  787993:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  787997:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  78799b:	8d 0c 24                                        	lea    ecx,[esp]
  78799e:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7879a2:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7879a6:	51                                              	push   ecx
  7879a7:	8b c8                                           	mov    ecx,eax
  7879a9:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  7879ad:	e8 ae 04 3b 00                                  	call   0xb37e60
  7879b2:	83 c4 10                                        	add    esp,0x10
  7879b5:	c3                                              	ret
  7879b6:	cc                                              	int3
  7879b7:	cc                                              	int3
  7879b8:	cc                                              	int3
  7879b9:	cc                                              	int3
  7879ba:	cc                                              	int3
  7879bb:	cc                                              	int3
  7879bc:	cc                                              	int3
  7879bd:	cc                                              	int3
  7879be:	cc                                              	int3
  7879bf:	cc                                              	int3
