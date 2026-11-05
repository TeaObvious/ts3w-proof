# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770930 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetSystemWallPostTime)
Paired Ghidra pseudocode: 00770930_ScriptCore_SocialFeatures_SocialFeaturesHost_GetSystemWallPostTime.c
Window: [0x00770930, 0x00770950) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770950
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770930: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770940: 08 51 52 50 e8 07 37 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770930 <.text+0x36f930>:
  770930:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770934:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770938:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77093c:	50                                              	push   eax
  77093d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770941:	51                                              	push   ecx
  770942:	52                                              	push   edx
  770943:	50                                              	push   eax
  770944:	e8 07 37 2b 00                                  	call   0xa24050
  770949:	83 c4 10                                        	add    esp,0x10
  77094c:	c3                                              	ret
  77094d:	cc                                              	int3
  77094e:	cc                                              	int3
  77094f:	cc                                              	int3
