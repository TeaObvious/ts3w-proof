# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770690 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentAuthorImage)
Paired Ghidra pseudocode: 00770690_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentAuthorImage.c
Window: [0x00770690, 0x007706e0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007706e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770690: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 83 ec 10 50
007706a0: 8b 44 24 24 51 8b 4c 24 24 52 8b 54 24 24 50 51
007706b0: 52 8d 44 24 18 50 e8 55 30 2b 00 8b 4c 24 30 8b
007706c0: 10 89 11 8b 50 04 89 51 04 8b 50 08 8b 40 0c 89
007706d0: 51 08 89 41 0c 8b c1 83 c4 2c c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00770690 <.text+0x36f690>:
  770690:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  770694:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  770698:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  77069c:	83 ec 10                                        	sub    esp,0x10
  77069f:	50                                              	push   eax
  7706a0:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  7706a4:	51                                              	push   ecx
  7706a5:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  7706a9:	52                                              	push   edx
  7706aa:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  7706ae:	50                                              	push   eax
  7706af:	51                                              	push   ecx
  7706b0:	52                                              	push   edx
  7706b1:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  7706b5:	50                                              	push   eax
  7706b6:	e8 55 30 2b 00                                  	call   0xa23710
  7706bb:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  7706bf:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7706c1:	89 11                                           	mov    DWORD PTR [ecx],edx
  7706c3:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7706c6:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7706c9:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7706cc:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7706cf:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7706d2:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  7706d5:	8b c1                                           	mov    eax,ecx
  7706d7:	83 c4 2c                                        	add    esp,0x2c
  7706da:	c3                                              	ret
  7706db:	cc                                              	int3
  7706dc:	cc                                              	int3
  7706dd:	cc                                              	int3
  7706de:	cc                                              	int3
  7706df:	cc                                              	int3
