# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105695d0 (Swarm_SetEffectTextureOverride)
Paired Ghidra pseudocode: 105695D0_Swarm_SetEffectTextureOverride.c
Window: [0x105695d0, 0x10569610) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569610
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105695d0: 83 ec 10 8b 4c 24 20 8b 44 24 1c 8b 54 24 24 6a
105695e0: 04 89 4c 24 08 8d 4c 24 04 51 89 44 24 08 8b 44
105695f0: 24 30 89 54 24 10 8b 54 24 20 6a 01 89 44 24 18
10569600: 8b 44 24 20 52 50 e8 05 fc ff ff 83 c4 24 c3 cc

LINEAR DISASSEMBLY
105695d0 <.text+0x5685d0>:
105695d0:	83 ec 10                                        	sub    esp,0x10
105695d3:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
105695d7:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
105695db:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
105695df:	6a 04                                           	push   0x4
105695e1:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
105695e5:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
105695e9:	51                                              	push   ecx
105695ea:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
105695ee:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
105695f2:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
105695f6:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
105695fa:	6a 01                                           	push   0x1
105695fc:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
10569600:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10569604:	52                                              	push   edx
10569605:	50                                              	push   eax
10569606:	e8 05 fc ff ff                                  	call   0x10569210
1056960b:	83 c4 24                                        	add    esp,0x24
1056960e:	c3                                              	ret
1056960f:	cc                                              	int3
