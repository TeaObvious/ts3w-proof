# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ffe0 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetFriends)
Paired Ghidra pseudocode: 0076FFE0_ScriptCore_SocialFeatures_SocialFeaturesHost_GetFriends.c
Window: [0x0076ffe0, 0x00770010) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770010
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ffe0: 8b 44 24 1c 8b 4c 24 18 8b 54 24 14 50 8b 44 24
0076fff0: 14 51 8b 4c 24 14 52 8b 54 24 14 50 8b 44 24 14
00770000: 51 52 50 e8 88 27 2b 00 83 c4 1c c3 cc cc cc cc

LINEAR DISASSEMBLY
0076ffe0 <.text+0x36efe0>:
  76ffe0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  76ffe4:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76ffe8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76ffec:	50                                              	push   eax
  76ffed:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  76fff1:	51                                              	push   ecx
  76fff2:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  76fff6:	52                                              	push   edx
  76fff7:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  76fffb:	50                                              	push   eax
  76fffc:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  770000:	51                                              	push   ecx
  770001:	52                                              	push   edx
  770002:	50                                              	push   eax
  770003:	e8 88 27 2b 00                                  	call   0xa22790
  770008:	83 c4 1c                                        	add    esp,0x1c
  77000b:	c3                                              	ret
  77000c:	cc                                              	int3
  77000d:	cc                                              	int3
  77000e:	cc                                              	int3
  77000f:	cc                                              	int3
