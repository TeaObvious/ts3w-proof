# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105629f0 (SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable)
Paired Ghidra pseudocode: 105629F0_SocialFeaturesHost_GetPrivacySettingsIsFriendsListViewable.c
Window: [0x105629f0, 0x10562a10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10562a10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105629f0: 8b 44 24 08 8b 4c 24 04 50 51 e8 a1 d4 2a 00 83
10562a00: c4 08 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105629f0 <.text+0x5619f0>:
105629f0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
105629f4:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
105629f8:	50                                              	push   eax
105629f9:	51                                              	push   ecx
105629fa:	e8 a1 d4 2a 00                                  	call   0x1080fea0
105629ff:	83 c4 08                                        	add    esp,0x8
10562a02:	c3                                              	ret
10562a03:	cc                                              	int3
10562a04:	cc                                              	int3
10562a05:	cc                                              	int3
10562a06:	cc                                              	int3
10562a07:	cc                                              	int3
10562a08:	cc                                              	int3
10562a09:	cc                                              	int3
10562a0a:	cc                                              	int3
10562a0b:	cc                                              	int3
10562a0c:	cc                                              	int3
10562a0d:	cc                                              	int3
10562a0e:	cc                                              	int3
10562a0f:	cc                                              	int3
