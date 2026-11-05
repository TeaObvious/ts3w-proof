# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770170 (ScriptCore.SocialFeatures::SocialFeaturesHost_InviteToBeFriend)
Paired Ghidra pseudocode: 00770170_ScriptCore_SocialFeatures_SocialFeaturesHost_InviteToBeFriend.c
Window: [0x00770170, 0x00770190) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770190
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770170: 8b 44 24 08 8b 4c 24 04 50 51 e8 71 2a 2b 00 83
00770180: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770170 <.text+0x36f170>:
  770170:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  770174:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  770178:	50                                              	push   eax
  770179:	51                                              	push   ecx
  77017a:	e8 71 2a 2b 00                                  	call   0xa22bf0
  77017f:	83 c4 08                                        	add    esp,0x8
  770182:	c3                                              	ret
  770183:	cc                                              	int3
  770184:	cc                                              	int3
  770185:	cc                                              	int3
  770186:	cc                                              	int3
  770187:	cc                                              	int3
  770188:	cc                                              	int3
  770189:	cc                                              	int3
  77018a:	cc                                              	int3
  77018b:	cc                                              	int3
  77018c:	cc                                              	int3
  77018d:	cc                                              	int3
  77018e:	cc                                              	int3
  77018f:	cc                                              	int3
