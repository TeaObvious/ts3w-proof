# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007709d0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetProfileImage)
Paired Ghidra pseudocode: 007709D0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetProfileImage.c
Window: [0x007709d0, 0x00770a10) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007709d0: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
007709e0: 08 52 e8 99 37 2b 00 8b 4c 24 20 8b 10 89 11 8b
007709f0: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
00770a00: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007709d0 <.text+0x36f9d0>:
  7709d0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7709d4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7709d8:	83 ec 10                                        	sub    esp,0x10
  7709db:	50                                              	push   eax
  7709dc:	51                                              	push   ecx
  7709dd:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  7709e1:	52                                              	push   edx
  7709e2:	e8 99 37 2b 00                                  	call   0xa24180
  7709e7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7709eb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7709ed:	89 11                                           	mov    DWORD PTR [ecx],edx
  7709ef:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7709f2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7709f5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7709f8:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7709fb:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7709fe:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  770a01:	8b c1                                           	mov    eax,ecx
  770a03:	83 c4 1c                                        	add    esp,0x1c
  770a06:	c3                                              	ret
  770a07:	cc                                              	int3
  770a08:	cc                                              	int3
  770a09:	cc                                              	int3
  770a0a:	cc                                              	int3
  770a0b:	cc                                              	int3
  770a0c:	cc                                              	int3
  770a0d:	cc                                              	int3
  770a0e:	cc                                              	int3
  770a0f:	cc                                              	int3
