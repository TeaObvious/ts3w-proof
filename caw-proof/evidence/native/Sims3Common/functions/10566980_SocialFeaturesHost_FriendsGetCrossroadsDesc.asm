# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10566980 (SocialFeaturesHost_FriendsGetCrossroadsDesc)
Paired Ghidra pseudocode: 10566980_SocialFeaturesHost_FriendsGetCrossroadsDesc.c
Window: [0x10566980, 0x105669a0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x105669a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10566980: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 50 8b 44 24
10566990: 08 51 52 50 e8 07 da ff ff 83 c4 10 c3 cc cc cc

LINEAR DISASSEMBLY
10566980 <.text+0x565980>:
10566980:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10566984:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10566988:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056698c:	50                                              	push   eax
1056698d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10566991:	51                                              	push   ecx
10566992:	52                                              	push   edx
10566993:	50                                              	push   eax
10566994:	e8 07 da ff ff                                  	call   0x105643a0
10566999:	83 c4 10                                        	add    esp,0x10
1056699c:	c3                                              	ret
1056699d:	cc                                              	int3
1056699e:	cc                                              	int3
1056699f:	cc                                              	int3
