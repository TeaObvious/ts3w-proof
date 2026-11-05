# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3d80 (CASUtils_SimOutfitGetBlendInfoImpl)
Paired Ghidra pseudocode: 103A3D80_CASUtils_SimOutfitGetBlendInfoImpl.c
Window: [0x103a3d80, 0x103a3dd0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3dd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3d80: 8b 44 24 0c 8b 4c 24 08 83 ec 18 50 51 8d 54 24
103a3d90: 08 52 e8 79 f6 ff ff 8b 4c 24 28 8b 10 89 11 8b
103a3da0: 50 04 89 51 04 8b 50 08 89 51 08 8b 50 0c 89 51
103a3db0: 0c 8b 50 10 8b 40 14 89 51 10 89 41 14 8b c1 83
103a3dc0: c4 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a3d80 <.text+0x3a2d80>:
103a3d80:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
103a3d84:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
103a3d88:	83 ec 18                                        	sub    esp,0x18
103a3d8b:	50                                              	push   eax
103a3d8c:	51                                              	push   ecx
103a3d8d:	8d 54 24 08                                     	lea    edx,[esp+0x8]
103a3d91:	52                                              	push   edx
103a3d92:	e8 79 f6 ff ff                                  	call   0x103a3410
103a3d97:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
103a3d9b:	8b 10                                           	mov    edx,DWORD PTR [eax]
103a3d9d:	89 11                                           	mov    DWORD PTR [ecx],edx
103a3d9f:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
103a3da2:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
103a3da5:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
103a3da8:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
103a3dab:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
103a3dae:	89 51 0c                                        	mov    DWORD PTR [ecx+0xc],edx
103a3db1:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
103a3db4:	8b 40 14                                        	mov    eax,DWORD PTR [eax+0x14]
103a3db7:	89 51 10                                        	mov    DWORD PTR [ecx+0x10],edx
103a3dba:	89 41 14                                        	mov    DWORD PTR [ecx+0x14],eax
103a3dbd:	8b c1                                           	mov    eax,ecx
103a3dbf:	83 c4 24                                        	add    esp,0x24
103a3dc2:	c3                                              	ret
103a3dc3:	cc                                              	int3
103a3dc4:	cc                                              	int3
103a3dc5:	cc                                              	int3
103a3dc6:	cc                                              	int3
103a3dc7:	cc                                              	int3
103a3dc8:	cc                                              	int3
103a3dc9:	cc                                              	int3
103a3dca:	cc                                              	int3
103a3dcb:	cc                                              	int3
103a3dcc:	cc                                              	int3
103a3dcd:	cc                                              	int3
103a3dce:	cc                                              	int3
103a3dcf:	cc                                              	int3
