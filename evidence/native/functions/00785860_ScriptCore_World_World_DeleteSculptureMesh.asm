# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785860 (ScriptCore.World::World_DeleteSculptureMesh)
Paired Ghidra pseudocode: 00785860_ScriptCore_World_World_DeleteSculptureMesh.c
Window: [0x00785860, 0x00785890) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785890
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785860: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 14 89
00785870: 4c 24 04 89 04 24 8b 44 24 18 8d 0c 24 51 89 54
00785880: 24 0c 89 44 24 10 e8 c5 3f f8 ff 83 c4 14 c3 cc

LINEAR DISASSEMBLY
00785860 <.text+0x384860>:
  785860:	83 ec 10                                        	sub    esp,0x10
  785863:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  785867:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  78586b:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  78586f:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  785873:	89 04 24                                        	mov    DWORD PTR [esp],eax
  785876:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  78587a:	8d 0c 24                                        	lea    ecx,[esp]
  78587d:	51                                              	push   ecx
  78587e:	89 54 24 0c                                     	mov    DWORD PTR [esp+0xc],edx
  785882:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
  785886:	e8 c5 3f f8 ff                                  	call   0x709850
  78588b:	83 c4 14                                        	add    esp,0x14
  78588e:	c3                                              	ret
  78588f:	cc                                              	int3
