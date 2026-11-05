# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770510 (ScriptCore.SocialFeatures::SocialFeaturesHost_HidePost)
Paired Ghidra pseudocode: 00770510_ScriptCore_SocialFeatures_SocialFeaturesHost_HidePost.c
Window: [0x00770510, 0x00770530) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770530
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770510: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770520: 08 51 52 50 e8 87 2e 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770510 <.text+0x36f510>:
  770510:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770514:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770518:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77051c:	50                                              	push   eax
  77051d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770521:	51                                              	push   ecx
  770522:	52                                              	push   edx
  770523:	50                                              	push   eax
  770524:	e8 87 2e 2b 00                                  	call   0xa233b0
  770529:	83 c4 10                                        	add    esp,0x10
  77052c:	c3                                              	ret
  77052d:	cc                                              	int3
  77052e:	cc                                              	int3
  77052f:	cc                                              	int3
