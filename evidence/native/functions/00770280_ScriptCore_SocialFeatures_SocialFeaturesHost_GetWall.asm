# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770280 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetWall)
Paired Ghidra pseudocode: 00770280_ScriptCore_SocialFeatures_SocialFeaturesHost_GetWall.c
Window: [0x00770280, 0x007702b0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x007702b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770280: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
00770290: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 7d
007702a0: 2b 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770280 <.text+0x36f280>:
  770280:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  770284:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  770288:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77028c:	50                                              	push   eax
  77028d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770291:	51                                              	push   ecx
  770292:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770296:	52                                              	push   edx
  770297:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77029b:	50                                              	push   eax
  77029c:	51                                              	push   ecx
  77029d:	52                                              	push   edx
  77029e:	e8 7d 2b 2b 00                                  	call   0xa22e20
  7702a3:	83 c4 18                                        	add    esp,0x18
  7702a6:	c3                                              	ret
  7702a7:	cc                                              	int3
  7702a8:	cc                                              	int3
  7702a9:	cc                                              	int3
  7702aa:	cc                                              	int3
  7702ab:	cc                                              	int3
  7702ac:	cc                                              	int3
  7702ad:	cc                                              	int3
  7702ae:	cc                                              	int3
  7702af:	cc                                              	int3
