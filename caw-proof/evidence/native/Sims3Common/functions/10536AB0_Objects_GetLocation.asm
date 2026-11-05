# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10536ab0 (Objects_GetLocation)
Paired Ghidra pseudocode: 10536AB0_Objects_GetLocation.c
Window: [0x10536ab0, 0x10536b00) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10536b00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10536ab0: e8 eb 36 1f 00 8b 4c 24 08 8b 54 24 04 51 52 8b
10536ac0: c8 e8 ea 40 1f 00 85 c0 74 33 8b 0d 08 04 c7 10
10536ad0: 51 8b c8 e8 c8 02 1f 00 85 c0 74 21 8b 50 08 8b
10536ae0: 4c 24 0c 89 11 8b 50 0c 89 51 04 8b 48 18 8b 54
10536af0: 24 10 89 0a 8b 40 20 8b 4c 24 14 89 01 c3 cc cc

LINEAR DISASSEMBLY
10536ab0 <.text+0x535ab0>:
10536ab0:	e8 eb 36 1f 00                                  	call   0x1072a1a0
10536ab5:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10536ab9:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10536abd:	51                                              	push   ecx
10536abe:	52                                              	push   edx
10536abf:	8b c8                                           	mov    ecx,eax
10536ac1:	e8 ea 40 1f 00                                  	call   0x1072abb0
10536ac6:	85 c0                                           	test   eax,eax
10536ac8:	74 33                                           	je     0x10536afd
10536aca:	8b 0d 08 04 c7 10                               	mov    ecx,DWORD PTR ds:0x10c70408
10536ad0:	51                                              	push   ecx
10536ad1:	8b c8                                           	mov    ecx,eax
10536ad3:	e8 c8 02 1f 00                                  	call   0x10726da0
10536ad8:	85 c0                                           	test   eax,eax
10536ada:	74 21                                           	je     0x10536afd
10536adc:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10536adf:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10536ae3:	89 11                                           	mov    DWORD PTR [ecx],edx
10536ae5:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10536ae8:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
10536aeb:	8b 48 18                                        	mov    ecx,DWORD PTR [eax+0x18]
10536aee:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10536af2:	89 0a                                           	mov    DWORD PTR [edx],ecx
10536af4:	8b 40 20                                        	mov    eax,DWORD PTR [eax+0x20]
10536af7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10536afb:	89 01                                           	mov    DWORD PTR [ecx],eax
10536afd:	c3                                              	ret
10536afe:	cc                                              	int3
10536aff:	cc                                              	int3
