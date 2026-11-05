# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007700a0 (ScriptCore.SocialFeatures::SocialFeaturesHost_FriendsGetNucleusID)
Paired Ghidra pseudocode: 007700A0_ScriptCore_SocialFeatures_SocialFeaturesHost_FriendsGetNucleusID.c
Window: [0x007700a0, 0x007700c0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x007700c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007700a0: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
007700b0: 08 51 52 50 e8 17 29 2b 00 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
007700a0 <.text+0x36f0a0>:
  7700a0:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  7700a4:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  7700a8:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  7700ac:	50                                              	push   eax
  7700ad:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7700b1:	51                                              	push   ecx
  7700b2:	52                                              	push   edx
  7700b3:	50                                              	push   eax
  7700b4:	e8 17 29 2b 00                                  	call   0xa229d0
  7700b9:	83 c4 10                                        	add    esp,0x10
  7700bc:	c3                                              	ret
  7700bd:	cc                                              	int3
  7700be:	cc                                              	int3
  7700bf:	cc                                              	int3
