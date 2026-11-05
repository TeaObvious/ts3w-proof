# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097fa80 (AnimationClipIkInfo_SetObjectForNamespace)
Paired Ghidra pseudocode: 1097FA80_AnimationClipIkInfo_SetObjectForNamespace.c
Window: [0x1097fa80, 0x1097fac0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097fac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097fa80: 56 8b 74 24 08 85 f6 74 27 e8 12 a7 da ff 85 c0
1097fa90: 74 1e 8b 4c 24 14 8b 54 24 10 51 52 8b c8 e8 0d
1097faa0: b1 da ff 50 8b 44 24 10 50 8b ce e8 00 45 9f ff
1097fab0: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097fa80 <.text+0x97ea80>:
1097fa80:	56                                              	push   esi
1097fa81:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1097fa85:	85 f6                                           	test   esi,esi
1097fa87:	74 27                                           	je     0x1097fab0
1097fa89:	e8 12 a7 da ff                                  	call   0x1072a1a0
1097fa8e:	85 c0                                           	test   eax,eax
1097fa90:	74 1e                                           	je     0x1097fab0
1097fa92:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097fa96:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
1097fa9a:	51                                              	push   ecx
1097fa9b:	52                                              	push   edx
1097fa9c:	8b c8                                           	mov    ecx,eax
1097fa9e:	e8 0d b1 da ff                                  	call   0x1072abb0
1097faa3:	50                                              	push   eax
1097faa4:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
1097faa8:	50                                              	push   eax
1097faa9:	8b ce                                           	mov    ecx,esi
1097faab:	e8 00 45 9f ff                                  	call   0x10373fb0
1097fab0:	5e                                              	pop    esi
1097fab1:	c3                                              	ret
1097fab2:	cc                                              	int3
1097fab3:	cc                                              	int3
1097fab4:	cc                                              	int3
1097fab5:	cc                                              	int3
1097fab6:	cc                                              	int3
1097fab7:	cc                                              	int3
1097fab8:	cc                                              	int3
1097fab9:	cc                                              	int3
1097faba:	cc                                              	int3
1097fabb:	cc                                              	int3
1097fabc:	cc                                              	int3
1097fabd:	cc                                              	int3
1097fabe:	cc                                              	int3
1097fabf:	cc                                              	int3
