# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770c70 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEarnedBadgeGrayImageKey)
Paired Ghidra pseudocode: 00770C70_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEarnedBadgeGrayImageKey.c
Window: [0x00770c70, 0x00770cb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770cb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770c70: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
00770c80: 51 52 8d 44 24 0c 50 e8 b4 4d 2b 00 8b 4c 24 24
00770c90: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
00770ca0: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
00770c70 <.text+0x36fc70>:
  770c70:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770c74:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770c78:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  770c7c:	83 ec 10                                        	sub    esp,0x10
  770c7f:	50                                              	push   eax
  770c80:	51                                              	push   ecx
  770c81:	52                                              	push   edx
  770c82:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  770c86:	50                                              	push   eax
  770c87:	e8 b4 4d 2b 00                                  	call   0xa25a40
  770c8c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  770c90:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770c92:	89 11                                           	mov    DWORD PTR [ecx],edx
  770c94:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  770c97:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770c9a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770c9d:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770ca0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770ca3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770ca6:	8b c1                                           	mov    eax,ecx
  770ca8:	83 c4 20                                        	add    esp,0x20
  770cab:	c3                                              	ret
  770cac:	cc                                              	int3
  770cad:	cc                                              	int3
  770cae:	cc                                              	int3
  770caf:	cc                                              	int3
