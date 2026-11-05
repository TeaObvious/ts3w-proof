# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105697d0 (Swarm_SetEffectThumbnailTextureOverride)
Paired Ghidra pseudocode: 105697D0_Swarm_SetEffectThumbnailTextureOverride.c
Window: [0x105697d0, 0x10569830) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569830
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105697d0: 8b 44 24 34 8b 4c 24 30 8b 54 24 2c 50 8b 44 24
105697e0: 2c 51 8b 4c 24 2c 52 8b 54 24 2c 50 8b 44 24 2c
105697f0: 51 8b 4c 24 20 52 8b 54 24 28 50 83 ec 10 8b c4
10569800: 89 08 8b 4c 24 40 89 50 04 8b 54 24 44 89 48 08
10569810: 8b 4c 24 30 89 50 0c 8b 44 24 34 50 51 e8 5e fe
10569820: ff ff 83 c4 34 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105697d0 <.text+0x5687d0>:
105697d0:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
105697d4:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
105697d8:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
105697dc:	50                                              	push   eax
105697dd:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105697e1:	51                                              	push   ecx
105697e2:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
105697e6:	52                                              	push   edx
105697e7:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
105697eb:	50                                              	push   eax
105697ec:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
105697f0:	51                                              	push   ecx
105697f1:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105697f5:	52                                              	push   edx
105697f6:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
105697fa:	50                                              	push   eax
105697fb:	83 ec 10                                        	sub    esp,0x10
105697fe:	8b c4                                           	mov    eax,esp
10569800:	89 08                                           	mov    DWORD PTR [eax],ecx
10569802:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
10569806:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10569809:	8b 54 24 44                                     	mov    edx,DWORD PTR [esp+0x44]
1056980d:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10569810:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
10569814:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10569817:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
1056981b:	50                                              	push   eax
1056981c:	51                                              	push   ecx
1056981d:	e8 5e fe ff ff                                  	call   0x10569680
10569822:	83 c4 34                                        	add    esp,0x34
10569825:	c3                                              	ret
10569826:	cc                                              	int3
10569827:	cc                                              	int3
10569828:	cc                                              	int3
10569829:	cc                                              	int3
1056982a:	cc                                              	int3
1056982b:	cc                                              	int3
1056982c:	cc                                              	int3
1056982d:	cc                                              	int3
1056982e:	cc                                              	int3
1056982f:	cc                                              	int3
