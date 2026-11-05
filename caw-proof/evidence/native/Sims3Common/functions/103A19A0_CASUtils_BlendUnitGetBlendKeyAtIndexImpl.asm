# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a19a0 (CASUtils_BlendUnitGetBlendKeyAtIndexImpl)
Paired Ghidra pseudocode: 103A19A0_CASUtils_BlendUnitGetBlendKeyAtIndexImpl.c
Window: [0x103a19a0, 0x103a19e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a19e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a19a0: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
103a19b0: 08 52 e8 69 e7 ff ff 8b 4c 24 20 8b 10 89 11 8b
103a19c0: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
103a19d0: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a19a0 <.text+0x3a09a0>:
103a19a0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a19a4:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a19a8:	83 ec 10                                        	sub    esp,0x10
103a19ab:	50                                              	push   eax
103a19ac:	51                                              	push   ecx
103a19ad:	8d 54 24 08                                     	lea    edx,[esp+0x8]
103a19b1:	52                                              	push   edx
103a19b2:	e8 69 e7 ff ff                                  	call   0x103a0120
103a19b7:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a19bb:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a19bd:	89 11                                           	mov    DWORD PTR [ecx],edx
103a19bf:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a19c2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a19c5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a19c8:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a19cb:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a19ce:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a19d1:	8b c1                                           	mov    eax,ecx
103a19d3:	83 c4 1c                                        	add    esp,0x1c
103a19d6:	c3                                              	ret
103a19d7:	cc                                              	int3
103a19d8:	cc                                              	int3
103a19d9:	cc                                              	int3
103a19da:	cc                                              	int3
103a19db:	cc                                              	int3
103a19dc:	cc                                              	int3
103a19dd:	cc                                              	int3
103a19de:	cc                                              	int3
103a19df:	cc                                              	int3
