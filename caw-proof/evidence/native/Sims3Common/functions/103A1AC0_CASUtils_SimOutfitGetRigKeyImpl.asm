# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a1ac0 (CASUtils_SimOutfitGetRigKeyImpl)
Paired Ghidra pseudocode: 103A1AC0_CASUtils_SimOutfitGetRigKeyImpl.c
Window: [0x103a1ac0, 0x103a1b00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a1b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a1ac0: 8b 44 24 08 83 ec 10 50 8d 4c 24 04 51 e8 2e eb
103a1ad0: ff ff 8b 4c 24 1c 8b 10 89 11 8b 50 04 89 51 04
103a1ae0: 8b 50 08 8b 40 0c 89 51 08 89 41 0c 8b c1 83 c4
103a1af0: 18 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a1ac0 <.text+0x3a0ac0>:
103a1ac0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a1ac4:	83 ec 10                                        	sub    esp,0x10
103a1ac7:	50                                              	push   eax
103a1ac8:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
103a1acc:	51                                              	push   ecx
103a1acd:	e8 2e eb ff ff                                  	call   0x103a0600
103a1ad2:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
103a1ad6:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a1ad8:	89 11                                           	mov    DWORD PTR [ecx],edx
103a1ada:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a1add:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a1ae0:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a1ae3:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a1ae6:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a1ae9:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a1aec:	8b c1                                           	mov    eax,ecx
103a1aee:	83 c4 18                                        	add    esp,0x18
103a1af1:	c3                                              	ret
103a1af2:	cc                                              	int3
103a1af3:	cc                                              	int3
103a1af4:	cc                                              	int3
103a1af5:	cc                                              	int3
103a1af6:	cc                                              	int3
103a1af7:	cc                                              	int3
103a1af8:	cc                                              	int3
103a1af9:	cc                                              	int3
103a1afa:	cc                                              	int3
103a1afb:	cc                                              	int3
103a1afc:	cc                                              	int3
103a1afd:	cc                                              	int3
103a1afe:	cc                                              	int3
103a1aff:	cc                                              	int3
