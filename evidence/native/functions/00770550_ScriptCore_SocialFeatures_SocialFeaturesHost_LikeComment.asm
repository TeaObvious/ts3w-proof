# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770550 (ScriptCore.SocialFeatures::SocialFeaturesHost_LikeComment)
Paired Ghidra pseudocode: 00770550_ScriptCore_SocialFeatures_SocialFeaturesHost_LikeComment.c
Window: [0x00770550, 0x00770580) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770580
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770550: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
00770560: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 dd
00770570: 2e 2b 00 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770550 <.text+0x36f550>:
  770550:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  770554:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  770558:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77055c:	50                                              	push   eax
  77055d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  770561:	51                                              	push   ecx
  770562:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  770566:	52                                              	push   edx
  770567:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  77056b:	50                                              	push   eax
  77056c:	51                                              	push   ecx
  77056d:	52                                              	push   edx
  77056e:	e8 dd 2e 2b 00                                  	call   0xa23450
  770573:	83 c4 18                                        	add    esp,0x18
  770576:	c3                                              	ret
  770577:	cc                                              	int3
  770578:	cc                                              	int3
  770579:	cc                                              	int3
  77057a:	cc                                              	int3
  77057b:	cc                                              	int3
  77057c:	cc                                              	int3
  77057d:	cc                                              	int3
  77057e:	cc                                              	int3
  77057f:	cc                                              	int3
