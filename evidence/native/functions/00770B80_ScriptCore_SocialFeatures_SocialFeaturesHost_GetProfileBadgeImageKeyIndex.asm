# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770b80 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileBadgeImageKeyIndex)
Paired Ghidra pseudocode: 00770B80_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileBadgeImageKeyIndex.c
Window: [0x00770b80, 0x00770bc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770bc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770b80: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 10 50
00770b90: 51 52 8d 44 24 0c 50 e8 04 4c 2b 00 8b 4c 24 24
00770ba0: 8b 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c
00770bb0: 89 51 08 89 41 0c 8b c1 83 c4 20 c3 cc cc cc cc

LINEAR DISASSEMBLY
00770b80 <.text+0x36fb80>:
  770b80:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770b84:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770b88:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  770b8c:	83 ec 10                                        	sub    esp,0x10
  770b8f:	50                                              	push   eax
  770b90:	51                                              	push   ecx
  770b91:	52                                              	push   edx
  770b92:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  770b96:	50                                              	push   eax
  770b97:	e8 04 4c 2b 00                                  	call   0xa257a0
  770b9c:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  770ba0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770ba2:	89 11                                           	mov    DWORD PTR [ecx],edx
  770ba4:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  770ba7:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770baa:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770bad:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770bb0:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770bb3:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770bb6:	8b c1                                           	mov    eax,ecx
  770bb8:	83 c4 20                                        	add    esp,0x20
  770bbb:	c3                                              	ret
  770bbc:	cc                                              	int3
  770bbd:	cc                                              	int3
  770bbe:	cc                                              	int3
  770bbf:	cc                                              	int3
