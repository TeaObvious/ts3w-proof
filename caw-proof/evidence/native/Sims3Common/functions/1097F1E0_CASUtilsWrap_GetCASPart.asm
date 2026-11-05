# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f1e0 (CASUtilsWrap_GetCASPart)
Paired Ghidra pseudocode: 1097F1E0_CASUtilsWrap_GetCASPart.c
Window: [0x1097f1e0, 0x1097f230) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f1e0: 8b 44 24 14 8b 4c 24 10 8b 54 24 0c 83 ec 48 50
1097f1f0: 8b 44 24 54 51 52 50 8d 4c 24 10 51 e8 bf 43 a2
1097f200: ff 8b 44 24 60 8b 54 24 14 8b 4c 24 18 89 10 8b
1097f210: 54 24 1c 89 48 04 8b 4c 24 20 89 50 08 89 48 0c
1097f220: 83 c4 5c c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f1e0 <.text+0x97e1e0>:
1097f1e0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1097f1e4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1097f1e8:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1097f1ec:	83 ec 48                                        	sub    esp,0x48
1097f1ef:	50                                              	push   eax
1097f1f0:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
1097f1f4:	51                                              	push   ecx
1097f1f5:	52                                              	push   edx
1097f1f6:	50                                              	push   eax
1097f1f7:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
1097f1fb:	51                                              	push   ecx
1097f1fc:	e8 bf 43 a2 ff                                  	call   0x103a35c0
1097f201:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1097f205:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
1097f209:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1097f20d:	89 10                                           	mov    DWORD PTR [eax],edx
1097f20f:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1097f213:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
1097f216:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
1097f21a:	89 50 08                                        	mov    DWORD PTR [eax+0x8],edx
1097f21d:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
1097f220:	83 c4 5c                                        	add    esp,0x5c
1097f223:	c3                                              	ret
1097f224:	cc                                              	int3
1097f225:	cc                                              	int3
1097f226:	cc                                              	int3
1097f227:	cc                                              	int3
1097f228:	cc                                              	int3
1097f229:	cc                                              	int3
1097f22a:	cc                                              	int3
1097f22b:	cc                                              	int3
1097f22c:	cc                                              	int3
1097f22d:	cc                                              	int3
1097f22e:	cc                                              	int3
1097f22f:	cc                                              	int3
