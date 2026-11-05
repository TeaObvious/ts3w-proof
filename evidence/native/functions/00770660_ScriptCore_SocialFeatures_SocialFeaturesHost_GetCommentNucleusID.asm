# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770660 (ScriptCore.SocialFeatures::SocialFeaturesHost_GetCommentNucleusID)
Paired Ghidra pseudocode: 00770660_ScriptCore_SocialFeatures_SocialFeaturesHost_GetCommentNucleusID.c
Window: [0x00770660, 0x00770690) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770660: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
00770670: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 9d
00770680: 2f 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770660 <.text+0x36f660>:
  770660:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  770664:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  770668:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77066c:	50                                              	push   eax
  77066d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770671:	51                                              	push   ecx
  770672:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770676:	52                                              	push   edx
  770677:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77067b:	50                                              	push   eax
  77067c:	51                                              	push   ecx
  77067d:	52                                              	push   edx
  77067e:	e8 9d 2f 2b 00                                  	call   0xa23620
  770683:	83 c4 18                                        	add    esp,0x18
  770686:	c3                                              	ret
  770687:	cc                                              	int3
  770688:	cc                                              	int3
  770689:	cc                                              	int3
  77068a:	cc                                              	int3
  77068b:	cc                                              	int3
  77068c:	cc                                              	int3
  77068d:	cc                                              	int3
  77068e:	cc                                              	int3
  77068f:	cc                                              	int3
