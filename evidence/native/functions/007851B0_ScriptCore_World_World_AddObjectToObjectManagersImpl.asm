# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007851b0 (ScriptCore.World::World_AddObjectToObjectManagersImpl)
Paired Ghidra pseudocode: 007851B0_ScriptCore_World_World_AddObjectToObjectManagersImpl.c
Window: [0x007851b0, 0x00785210) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007851b0: 8b 44 24 30 8b 4c 24 24 8b 54 24 28 50 83 ec 0c
007851c0: 8b c4 89 08 8b 4c 24 3c 89 50 04 8b 54 24 30 52
007851d0: 8b 54 24 2c 89 48 08 8b 4c 24 28 83 ec 0c 8b c4
007851e0: 89 08 8b 4c 24 3c 89 50 04 8b 54 24 30 52 8b 54
007851f0: 24 28 89 48 08 8b 44 24 30 8b 4c 24 2c 50 51 52
00785200: e8 8b 3b 01 00 83 c4 30 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007851b0 <.text+0x3841b0>:
  7851b0:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7851b4:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7851b8:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  7851bc:	50                                              	push   eax
  7851bd:	83 ec 0c                                        	sub    esp,0xc
  7851c0:	8b c4                                           	mov    eax,esp
  7851c2:	89 08                                           	mov    DWORD PTR [eax],ecx
  7851c4:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7851c8:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7851cb:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7851cf:	52                                              	push   edx
  7851d0:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  7851d4:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  7851d7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7851db:	83 ec 0c                                        	sub    esp,0xc
  7851de:	8b c4                                           	mov    eax,esp
  7851e0:	89 08                                           	mov    DWORD PTR [eax],ecx
  7851e2:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  7851e6:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  7851e9:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
  7851ed:	52                                              	push   edx
  7851ee:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  7851f2:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  7851f5:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  7851f9:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  7851fd:	50                                              	push   eax
  7851fe:	51                                              	push   ecx
  7851ff:	52                                              	push   edx
  785200:	e8 8b 3b 01 00                                  	call   0x798d90
  785205:	83 c4 30                                        	add    esp,0x30
  785208:	c3                                              	ret
  785209:	cc                                              	int3
  78520a:	cc                                              	int3
  78520b:	cc                                              	int3
  78520c:	cc                                              	int3
  78520d:	cc                                              	int3
  78520e:	cc                                              	int3
  78520f:	cc                                              	int3
