# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563e90 (SocialFeaturesHost_CreateSendMeYourSimInvite)
Paired Ghidra pseudocode: 10563E90_SocialFeaturesHost_CreateSendMeYourSimInvite.c
Window: [0x10563e90, 0x10563ec0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563ec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563e90: 8b 44 24 18 8b 4c 24 14 8b 54 24 10 50 8b 44 24
10563ea0: 10 51 8b 4c 24 10 52 8b 54 24 10 50 51 52 e8 1d
10563eb0: fb ff ff 83 c4 18 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563e90 <.text+0x562e90>:
10563e90:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10563e94:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10563e98:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10563e9c:	50                                              	push   eax
10563e9d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10563ea1:	51                                              	push   ecx
10563ea2:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10563ea6:	52                                              	push   edx
10563ea7:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
10563eab:	50                                              	push   eax
10563eac:	51                                              	push   ecx
10563ead:	52                                              	push   edx
10563eae:	e8 1d fb ff ff                                  	call   0x105639d0
10563eb3:	83 c4 18                                        	add    esp,0x18
10563eb6:	c3                                              	ret
10563eb7:	cc                                              	int3
10563eb8:	cc                                              	int3
10563eb9:	cc                                              	int3
10563eba:	cc                                              	int3
10563ebb:	cc                                              	int3
10563ebc:	cc                                              	int3
10563ebd:	cc                                              	int3
10563ebe:	cc                                              	int3
10563ebf:	cc                                              	int3
