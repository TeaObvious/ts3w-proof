# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10589030 (World_ObjectFootprintContainsPoint)
Paired Ghidra pseudocode: 10589030_World_ObjectFootprintContainsPoint.c
Window: [0x10589030, 0x10589070) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10589070
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10589030: 8b 4c 24 10 8b 54 24 14 83 ec 0c 8b c4 89 08 8b
10589040: 4c 24 24 89 50 04 8b 54 24 18 89 48 08 8b 44 24
10589050: 14 8b 4c 24 10 52 50 51 e8 33 eb ff ff 83 c4 18
10589060: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10589030 <.text+0x588030>:
10589030:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10589034:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10589038:	83 ec 0c                                        	sub    esp,0xc
1058903b:	8b c4                                           	mov    eax,esp
1058903d:	89 08                                           	mov    DWORD PTR [eax],ecx
1058903f:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
10589043:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10589046:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1058904a:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1058904d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10589051:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10589055:	52                                              	push   edx
10589056:	50                                              	push   eax
10589057:	51                                              	push   ecx
10589058:	e8 33 eb ff ff                                  	call   0x10587b90
1058905d:	83 c4 18                                        	add    esp,0x18
10589060:	c3                                              	ret
10589061:	cc                                              	int3
10589062:	cc                                              	int3
10589063:	cc                                              	int3
10589064:	cc                                              	int3
10589065:	cc                                              	int3
10589066:	cc                                              	int3
10589067:	cc                                              	int3
10589068:	cc                                              	int3
10589069:	cc                                              	int3
1058906a:	cc                                              	int3
1058906b:	cc                                              	int3
1058906c:	cc                                              	int3
1058906d:	cc                                              	int3
1058906e:	cc                                              	int3
1058906f:	cc                                              	int3
