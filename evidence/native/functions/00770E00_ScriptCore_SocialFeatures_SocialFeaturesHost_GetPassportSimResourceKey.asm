# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770e00 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetPassportSimResourceKey)
Paired Ghidra pseudocode: 00770E00_ScriptCore_SocialFeatures_SocialFeaturesHost_GetPassportSimResourceKey.c
Window: [0x00770e00, 0x00770e30) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770e30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770e00: 83 ec 10 8d 04 24 50 e8 a4 43 2b 00 8b 4c 24 18
00770e10: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
00770e20: 89 51 08 89 41 0c 8b c1 83 c4 14 c3 cc cc cc cc

LINEAR DISASSEMBLY
00770e00 <.text+0x36fe00>:
  770e00:	83 ec 10                                        	sub    esp,0x10
  770e03:	8d 04 24                                        	lea    eax,[esp]
  770e06:	50                                              	push   eax
  770e07:	e8 a4 43 2b 00                                  	call   0xa251b0
  770e0c:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  770e10:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770e12:	89 11                                           	mov    DWORD PTR [ecx],edx
  770e14:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  770e17:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770e1a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770e1d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770e20:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770e23:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770e26:	8b c1                                           	mov    eax,ecx
  770e28:	83 c4 14                                        	add    esp,0x14
  770e2b:	c3                                              	ret
  770e2c:	cc                                              	int3
  770e2d:	cc                                              	int3
  770e2e:	cc                                              	int3
  770e2f:	cc                                              	int3
