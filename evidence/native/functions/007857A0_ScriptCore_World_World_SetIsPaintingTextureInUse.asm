# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007857a0 (ScriptCore.World::World_SetIsPaintingTextureInUse)
Paired Ghidra pseudocode: 007857A0_ScriptCore_World_World_SetIsPaintingTextureInUse.c
Window: [0x007857a0, 0x007857f0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007857f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007857a0: 83 ec 10 e8 78 a9 25 00 85 c0 74 35 8b 4c 24 1c
007857b0: 8b 54 24 20 89 0c 24 8b 4c 24 14 89 54 24 04 8b
007857c0: 54 24 18 89 4c 24 08 8b 4c 24 28 51 89 54 24 10
007857d0: 8b 54 24 28 52 8d 4c 24 08 51 8b c8 e8 0f 5b 25
007857e0: 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007857a0 <.text+0x3847a0>:
  7857a0:	83 ec 10                                        	sub    esp,0x10
  7857a3:	e8 78 a9 25 00                                  	call   0x9e0120
  7857a8:	85 c0                                           	test   eax,eax
  7857aa:	74 35                                           	je     0x7857e1
  7857ac:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7857b0:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7857b4:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  7857b7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7857bb:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7857bf:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7857c3:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7857c7:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7857cb:	51                                              	push   ecx
  7857cc:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  7857d0:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  7857d4:	52                                              	push   edx
  7857d5:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  7857d9:	51                                              	push   ecx
  7857da:	8b c8                                           	mov    ecx,eax
  7857dc:	e8 0f 5b 25 00                                  	call   0x9db2f0
  7857e1:	83 c4 10                                        	add    esp,0x10
  7857e4:	c3                                              	ret
  7857e5:	cc                                              	int3
  7857e6:	cc                                              	int3
  7857e7:	cc                                              	int3
  7857e8:	cc                                              	int3
  7857e9:	cc                                              	int3
  7857ea:	cc                                              	int3
  7857eb:	cc                                              	int3
  7857ec:	cc                                              	int3
  7857ed:	cc                                              	int3
  7857ee:	cc                                              	int3
  7857ef:	cc                                              	int3
