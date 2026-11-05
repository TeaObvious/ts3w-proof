# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00770110 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetFriendStatus)
Paired Ghidra pseudocode: 00770110_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetFriendStatus.c
Window: [0x00770110, 0x00770130) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770130
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00770110: 8b 44 24 0c 8b 4c 24 08 8b 54 24 04 50 51 52 e8
00770120: 4c 2a 2b 00 83 c4 0c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00770110 <.text+0x36f110>:
  770110:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  770114:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  770118:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  77011c:	50                                              	push   eax
  77011d:	51                                              	push   ecx
  77011e:	52                                              	push   edx
  77011f:	e8 4c 2a 2b 00                                  	call   0xa22b70
  770124:	83 c4 0c                                        	add    esp,0xc
  770127:	c3                                              	ret
  770128:	cc                                              	int3
  770129:	cc                                              	int3
  77012a:	cc                                              	int3
  77012b:	cc                                              	int3
  77012c:	cc                                              	int3
  77012d:	cc                                              	int3
  77012e:	cc                                              	int3
  77012f:	cc                                              	int3
