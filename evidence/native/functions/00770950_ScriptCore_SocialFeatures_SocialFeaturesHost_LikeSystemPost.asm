# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770950 (ScriptCore.SocialFeatures::SocialFeaturesHost_LikeSystemPost)
Paired Ghidra pseudocode: 00770950_ScriptCore_SocialFeatures_SocialFeaturesHost_LikeSystemPost.c
Window: [0x00770950, 0x00770970) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770970
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770950: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
00770960: 08 51 52 50 e8 27 37 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
00770950 <.text+0x36f950>:
  770950:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770954:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  770958:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  77095c:	50                                              	push   eax
  77095d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770961:	51                                              	push   ecx
  770962:	52                                              	push   edx
  770963:	50                                              	push   eax
  770964:	e8 27 37 2b 00                                  	call   0xa24090
  770969:	83 c4 10                                        	add    esp,0x10
  77096c:	c3                                              	ret
  77096d:	cc                                              	int3
  77096e:	cc                                              	int3
  77096f:	cc                                              	int3
