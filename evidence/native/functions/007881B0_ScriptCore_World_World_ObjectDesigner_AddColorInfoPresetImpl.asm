# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007881b0 (ScriptCore.World::World_ObjectDesigner_AddColorInfoPresetImpl)
Paired Ghidra pseudocode: 007881B0_ScriptCore_World_World_ObjectDesigner_AddColorInfoPresetImpl.c
Window: [0x007881b0, 0x00788220) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788220
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007881b0: 83 ec 18 56 e8 e7 80 3a 00 8b f0 e8 d0 11 fe ff
007881c0: 33 c9 89 4c 24 04 89 4c 24 08 8b 10 8b 52 70 8d
007881d0: 4c 24 04 51 8d 4c 24 0c 51 8b 4c 24 38 51 8b c8
007881e0: ff d2 8b 4c 24 2c 8b 44 24 28 8b 54 24 20 89 4c
007881f0: 24 10 8b 4c 24 04 89 44 24 0c 8b 44 24 24 51 89
00788200: 54 24 18 8b 54 24 0c 89 44 24 1c 52 8d 44 24 14
00788210: 50 8b ce e8 a8 8d 3a 00 5e 83 c4 18 c3 cc cc cc

LINEAR DISASSEMBLY
007881b0 <.text+0x3871b0>:
  7881b0:	83 ec 18                                        	sub    esp,0x18
  7881b3:	56                                              	push   esi
  7881b4:	e8 e7 80 3a 00                                  	call   0xb302a0
  7881b9:	8b f0                                           	mov    esi,eax
  7881bb:	e8 d0 11 fe ff                                  	call   0x769390
  7881c0:	33 c9                                           	xor    ecx,ecx
  7881c2:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  7881c6:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7881ca:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7881cc:	8b 52 70                                        	mov    edx,DWORD PTR [edx+0x70]
  7881cf:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  7881d3:	51                                              	push   ecx
  7881d4:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  7881d8:	51                                              	push   ecx
  7881d9:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  7881dd:	51                                              	push   ecx
  7881de:	8b c8                                           	mov    ecx,eax
  7881e0:	ff d2                                           	call   edx
  7881e2:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  7881e6:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  7881ea:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7881ee:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  7881f2:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7881f6:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7881fa:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  7881fe:	51                                              	push   ecx
  7881ff:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  788203:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  788207:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  78820b:	52                                              	push   edx
  78820c:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  788210:	50                                              	push   eax
  788211:	8b ce                                           	mov    ecx,esi
  788213:	e8 a8 8d 3a 00                                  	call   0xb30fc0
  788218:	5e                                              	pop    esi
  788219:	83 c4 18                                        	add    esp,0x18
  78821c:	c3                                              	ret
  78821d:	cc                                              	int3
  78821e:	cc                                              	int3
  78821f:	cc                                              	int3
