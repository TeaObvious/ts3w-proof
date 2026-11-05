# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007700c0 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetFriendImage)
Paired Ghidra pseudocode: 007700C0_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetFriendImage.c
Window: [0x007700c0, 0x00770110) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00770110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007700c0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 10 50
007700d0: 8b 44 24 1c 51 52 50 8d 4c 24 10 51 e8 bf 29 2b
007700e0: 00 8b 4c 24 28 8b 10 89 11 8b 50 04 89 51 04 8b
007700f0: 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4 24
00770100: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
007700c0 <.text+0x36f0c0>:
  7700c0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  7700c4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7700c8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  7700cc:	83 ec 10                                        	sub    esp,0x10
  7700cf:	50                                              	push   eax
  7700d0:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  7700d4:	51                                              	push   ecx
  7700d5:	52                                              	push   edx
  7700d6:	50                                              	push   eax
  7700d7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  7700db:	51                                              	push   ecx
  7700dc:	e8 bf 29 2b 00                                  	call   0xa22aa0
  7700e1:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  7700e5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7700e7:	89 11                                           	mov    DWORD PTR [ecx],edx
  7700e9:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  7700ec:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  7700ef:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  7700f2:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  7700f5:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  7700f8:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  7700fb:	8b c1                                           	mov    eax,ecx
  7700fd:	83 c4 24                                        	add    esp,0x24
  770100:	c3                                              	ret
  770101:	cc                                              	int3
  770102:	cc                                              	int3
  770103:	cc                                              	int3
  770104:	cc                                              	int3
  770105:	cc                                              	int3
  770106:	cc                                              	int3
  770107:	cc                                              	int3
  770108:	cc                                              	int3
  770109:	cc                                              	int3
  77010a:	cc                                              	int3
  77010b:	cc                                              	int3
  77010c:	cc                                              	int3
  77010d:	cc                                              	int3
  77010e:	cc                                              	int3
  77010f:	cc                                              	int3
