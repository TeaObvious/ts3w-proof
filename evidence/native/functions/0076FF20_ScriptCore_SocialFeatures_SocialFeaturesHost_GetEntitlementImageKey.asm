# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ff20 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetEntitlementImageKey)
Paired Ghidra pseudocode: 0076FF20_ScriptCore_SocialFeatures_SocialFeaturesHost_GetEntitlementImageKey.c
Window: [0x0076ff20, 0x0076ff60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ff60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ff20: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 3e 57
0076ff30: 2b 00 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
0076ff40: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
0076ff50: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ff20 <.text+0x36ef20>:
  76ff20:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  76ff24:	83 ec 10                                        	sub    esp,0x10
  76ff27:	50                                              	push   eax
  76ff28:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
  76ff2c:	51                                              	push   ecx
  76ff2d:	e8 3e 57 2b 00                                  	call   0xa25670
  76ff32:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  76ff36:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76ff38:	89 11                                           	mov    DWORD PTR [ecx],edx
  76ff3a:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76ff3d:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  76ff40:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  76ff43:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  76ff46:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  76ff49:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  76ff4c:	8b c1                                           	mov    eax,ecx
  76ff4e:	83 c4 18                                        	add    esp,0x18
  76ff51:	c3                                              	ret
  76ff52:	cc                                              	int3
  76ff53:	cc                                              	int3
  76ff54:	cc                                              	int3
  76ff55:	cc                                              	int3
  76ff56:	cc                                              	int3
  76ff57:	cc                                              	int3
  76ff58:	cc                                              	int3
  76ff59:	cc                                              	int3
  76ff5a:	cc                                              	int3
  76ff5b:	cc                                              	int3
  76ff5c:	cc                                              	int3
  76ff5d:	cc                                              	int3
  76ff5e:	cc                                              	int3
  76ff5f:	cc                                              	int3
