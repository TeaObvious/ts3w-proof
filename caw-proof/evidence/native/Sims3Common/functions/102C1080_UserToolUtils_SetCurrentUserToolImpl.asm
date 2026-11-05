# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102c1080 (UserToolUtils_SetCurrentUserToolImpl)
Paired Ghidra pseudocode: 102C1080_UserToolUtils_SetCurrentUserToolImpl.c
Window: [0x102c1080, 0x102c1100) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x102c1100
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102c1080: 8b 44 24 3c 8b 4c 24 38 8b 54 24 28 50 51 8b 4c
102c1090: 24 34 83 ec 10 8b c4 89 10 8b 54 24 48 89 48 04
102c10a0: 8b 4c 24 4c 89 50 08 8b 54 24 30 89 48 0c 8b 4c
102c10b0: 24 34 83 ec 10 8b c4 89 10 8b 54 24 48 89 48 04
102c10c0: 8b 4c 24 4c 89 50 08 8b 54 24 30 89 48 0c 8b 4c
102c10d0: 24 34 83 ec 10 8b c4 89 10 8b 54 24 48 89 48 04
102c10e0: 8b 4c 24 4c 89 50 08 8b 54 24 3c 52 89 48 0c e8
102c10f0: ac f2 ff ff 83 c4 3c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
102c1080 <.text+0x2c0080>:
102c1080:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
102c1084:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
102c1088:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
102c108c:	50                                              	push   eax
102c108d:	51                                              	push   ecx
102c108e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
102c1092:	83 ec 10                                        	sub    esp,0x10
102c1095:	8b c4                                           	mov    eax,esp
102c1097:	89 10                                           	mov    DWORD PTR [eax],edx
102c1099:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
102c109d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
102c10a0:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
102c10a4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
102c10a7:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
102c10ab:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
102c10ae:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
102c10b2:	83 ec 10                                        	sub    esp,0x10
102c10b5:	8b c4                                           	mov    eax,esp
102c10b7:	89 10                                           	mov    DWORD PTR [eax],edx
102c10b9:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
102c10bd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
102c10c0:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
102c10c4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
102c10c7:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
102c10cb:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
102c10ce:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
102c10d2:	83 ec 10                                        	sub    esp,0x10
102c10d5:	8b c4                                           	mov    eax,esp
102c10d7:	89 10                                           	mov    DWORD PTR [eax],edx
102c10d9:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
102c10dd:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
102c10e0:	8b 4c 24 4c                                     	mov    ecx,DWORD PTR [esp+0x4c]
102c10e4:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
102c10e7:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
102c10eb:	52                                              	push   edx
102c10ec:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
102c10ef:	e8 ac f2 ff ff                                  	call   0x102c03a0
102c10f4:	83 c4 3c                                        	add    esp,0x3c
102c10f7:	c3                                              	ret
102c10f8:	cc                                              	int3
102c10f9:	cc                                              	int3
102c10fa:	cc                                              	int3
102c10fb:	cc                                              	int3
102c10fc:	cc                                              	int3
102c10fd:	cc                                              	int3
102c10fe:	cc                                              	int3
102c10ff:	cc                                              	int3
