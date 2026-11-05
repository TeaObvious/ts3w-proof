# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a4d50 (CASUtils_GetOutfitInGameObjectImpl)
Paired Ghidra pseudocode: 103A4D50_CASUtils_GetOutfitInGameObjectImpl.c
Window: [0x103a4d50, 0x103a4d90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a4d90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a4d50: 8b 44 24 0c 8b 4c 24 08 83 ec 10 50 51 8d 54 24
103a4d60: 08 52 e8 a9 f7 ff ff 8b 4c 24 20 8b 10 89 11 8b
103a4d70: 50 04 89 51 04 8b 50 08 8b 40 0c 89 51 08 89 41
103a4d80: 0c 8b c1 83 c4 1c c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a4d50 <.text+0x3a3d50>:
103a4d50:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a4d54:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a4d58:	83 ec 10                                        	sub    esp,0x10
103a4d5b:	50                                              	push   eax
103a4d5c:	51                                              	push   ecx
103a4d5d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
103a4d61:	52                                              	push   edx
103a4d62:	e8 a9 f7 ff ff                                  	call   0x103a4510
103a4d67:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
103a4d6b:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a4d6d:	89 11                                           	mov    DWORD PTR [ecx],edx
103a4d6f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a4d72:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a4d75:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a4d78:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
103a4d7b:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a4d7e:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
103a4d81:	8b c1                                           	mov    eax,ecx
103a4d83:	83 c4 1c                                        	add    esp,0x1c
103a4d86:	c3                                              	ret
103a4d87:	cc                                              	int3
103a4d88:	cc                                              	int3
103a4d89:	cc                                              	int3
103a4d8a:	cc                                              	int3
103a4d8b:	cc                                              	int3
103a4d8c:	cc                                              	int3
103a4d8d:	cc                                              	int3
103a4d8e:	cc                                              	int3
103a4d8f:	cc                                              	int3
