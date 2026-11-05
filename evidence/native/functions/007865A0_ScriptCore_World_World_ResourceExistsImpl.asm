# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007865a0 (ScriptCore.World::World_ResourceExistsImpl)
Paired Ghidra pseudocode: 007865A0_ScriptCore_World_World_ResourceExistsImpl.c
Window: [0x007865a0, 0x007865e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007865e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007865a0: 83 ec 10 e8 d8 98 d2 ff 8b 4c 24 1c 8b 54 24 20
007865b0: 89 0c 24 8b 4c 24 14 89 54 24 04 8b 54 24 18 89
007865c0: 4c 24 08 89 54 24 0c 8b 10 8b 52 44 8d 0c 24 51
007865d0: 8b c8 ff d2 f7 d8 1b c0 f7 d8 83 c4 10 c3 cc cc

LINEAR DISASSEMBLY
007865a0 <.text+0x3855a0>:
  7865a0:	83 ec 10                                        	sub    esp,0x10
  7865a3:	e8 d8 98 d2 ff                                  	call   0x4afe80
  7865a8:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7865ac:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  7865b0:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  7865b3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  7865b7:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  7865bb:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  7865bf:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  7865c3:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  7865c7:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7865c9:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  7865cc:	8d 0c 24                                        	lea    ecx,[esp]
  7865cf:	51                                              	push   ecx
  7865d0:	8b c8                                           	mov    ecx,eax
  7865d2:	ff d2                                           	call   edx
  7865d4:	f7 d8                                           	neg    eax
  7865d6:	1b c0                                           	sbb    eax,eax
  7865d8:	f7 d8                                           	neg    eax
  7865da:	83 c4 10                                        	add    esp,0x10
  7865dd:	c3                                              	ret
  7865de:	cc                                              	int3
  7865df:	cc                                              	int3
