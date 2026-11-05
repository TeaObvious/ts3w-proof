# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770bc0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetRankImageKey)
Paired Ghidra pseudocode: 00770BC0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetRankImageKey.c
Window: [0x00770bc0, 0x00770c00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770c00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770bc0: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
00770bd0: 08 52 e8 19 3b 2b 00 8b 4c 24 20 8b 10 89 11 8b
00770be0: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
00770bf0: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770bc0 <.text+0x36fbc0>:
  770bc0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770bc4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770bc8:	83 ec 10                                        	sub    esp,0x10
  770bcb:	50                                              	push   eax
  770bcc:	51                                              	push   ecx
  770bcd:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  770bd1:	52                                              	push   edx
  770bd2:	e8 19 3b 2b 00                                  	call   0xa246f0
  770bd7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  770bdb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  770bdd:	89 11                                           	mov    DWORD PTR [ecx],edx
  770bdf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  770be2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  770be5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  770be8:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  770beb:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  770bee:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770bf1:	8b c1                                           	mov    eax,ecx
  770bf3:	83 c4 1c                                        	add    esp,0x1c
  770bf6:	c3                                              	ret
  770bf7:	cc                                              	int3
  770bf8:	cc                                              	int3
  770bf9:	cc                                              	int3
  770bfa:	cc                                              	int3
  770bfb:	cc                                              	int3
  770bfc:	cc                                              	int3
  770bfd:	cc                                              	int3
  770bfe:	cc                                              	int3
  770bff:	cc                                              	int3
