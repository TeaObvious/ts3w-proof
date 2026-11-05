# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098b970 (RigResource_GetBoneParentIndex)
Paired Ghidra pseudocode: 1098B970_RigResource_GetBoneParentIndex.c
Window: [0x1098b970, 0x1098b9a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098b9a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098b970: 8b 44 24 04 85 c0 56 74 1c 8d 70 28 8b ce e8 0d
1098b980: 5d 9e ff 8b 4c 24 0c 3b c1 76 0a 51 8b ce e8 5d
1098b990: 5d 9e ff 5e c3 83 c8 ff 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098b970 <.text+0x98a970>:
1098b970:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1098b974:	85 c0                                           	test   eax,eax
1098b976:	56                                              	push   esi
1098b977:	74 1c                                           	je     0x1098b995
1098b979:	8d 70 28                                        	lea    esi,[eax+0x28]
1098b97c:	8b ce                                           	mov    ecx,esi
1098b97e:	e8 0d 5d 9e ff                                  	call   0x10371690
1098b983:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
1098b987:	3b c1                                           	cmp    eax,ecx
1098b989:	76 0a                                           	jbe    0x1098b995
1098b98b:	51                                              	push   ecx
1098b98c:	8b ce                                           	mov    ecx,esi
1098b98e:	e8 5d 5d 9e ff                                  	call   0x103716f0
1098b993:	5e                                              	pop    esi
1098b994:	c3                                              	ret
1098b995:	83 c8 ff                                        	or     eax,0xffffffff
1098b998:	5e                                              	pop    esi
1098b999:	c3                                              	ret
1098b99a:	cc                                              	int3
1098b99b:	cc                                              	int3
1098b99c:	cc                                              	int3
1098b99d:	cc                                              	int3
1098b99e:	cc                                              	int3
1098b99f:	cc                                              	int3
