# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105588f0 (Route_GetEstimatedTravelTime)
Paired Ghidra pseudocode: 105588F0_Route_GetEstimatedTravelTime.c
Window: [0x105588f0, 0x10558940) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10558940
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105588f0: 8b 4c 24 14 8b 54 24 18 83 ec 10 8b c4 89 08 8b
10558900: 4c 24 2c 89 50 04 8b 54 24 30 89 48 08 8b 4c 24
10558910: 1c 89 50 0c 8b 44 24 20 8b 54 24 18 50 8b 44 24
10558920: 18 51 52 50 e8 77 e9 ff ff 83 c4 20 c3 cc cc cc
10558930: 8b 44 24 04 c7 00 d0 f6 c2 10 c2 04 00 cc cc cc

LINEAR DISASSEMBLY
105588f0 <.text+0x5578f0>:
105588f0:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
105588f4:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
105588f8:	83 ec 10                                        	sub    esp,0x10
105588fb:	8b c4                                           	mov    eax,esp
105588fd:	89 08                                           	mov    DWORD PTR [eax],ecx
105588ff:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10558903:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10558906:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
1055890a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1055890d:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10558911:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10558914:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10558918:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1055891c:	50                                              	push   eax
1055891d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10558921:	51                                              	push   ecx
10558922:	52                                              	push   edx
10558923:	50                                              	push   eax
10558924:	e8 77 e9 ff ff                                  	call   0x105572a0
10558929:	83 c4 20                                        	add    esp,0x20
1055892c:	c3                                              	ret
1055892d:	cc                                              	int3
1055892e:	cc                                              	int3
1055892f:	cc                                              	int3
10558930:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10558934:	c7 00 d0 f6 c2 10                               	mov    DWORD PTR [eax],0x10c2f6d0
1055893a:	c2 04 00                                        	ret    0x4
1055893d:	cc                                              	int3
1055893e:	cc                                              	int3
1055893f:	cc                                              	int3
