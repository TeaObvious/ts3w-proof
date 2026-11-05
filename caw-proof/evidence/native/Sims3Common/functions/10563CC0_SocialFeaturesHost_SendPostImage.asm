# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10563cc0 (SocialFeaturesHost_SendPostImage)
Paired Ghidra pseudocode: 10563CC0_SocialFeaturesHost_SendPostImage.c
Window: [0x10563cc0, 0x10563d00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10563d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10563cc0: 8b 4c 24 10 8b 54 24 14 83 ec 10 8b c4 89 08 8b
10563cd0: 4c 24 28 89 50 04 8b 54 24 2c 89 48 08 8b 4c 24
10563ce0: 18 89 50 0c 8b 44 24 1c 8b 54 24 14 50 51 52 e8
10563cf0: 4c f2 ff ff 83 c4 1c c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10563cc0 <.text+0x562cc0>:
10563cc0:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10563cc4:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10563cc8:	83 ec 10                                        	sub    esp,0x10
10563ccb:	8b c4                                           	mov    eax,esp
10563ccd:	89 08                                           	mov    DWORD PTR [eax],ecx
10563ccf:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
10563cd3:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
10563cd6:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
10563cda:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10563cdd:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
10563ce1:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10563ce4:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
10563ce8:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
10563cec:	50                                              	push   eax
10563ced:	51                                              	push   ecx
10563cee:	52                                              	push   edx
10563cef:	e8 4c f2 ff ff                                  	call   0x10562f40
10563cf4:	83 c4 1c                                        	add    esp,0x1c
10563cf7:	c3                                              	ret
10563cf8:	cc                                              	int3
10563cf9:	cc                                              	int3
10563cfa:	cc                                              	int3
10563cfb:	cc                                              	int3
10563cfc:	cc                                              	int3
10563cfd:	cc                                              	int3
10563cfe:	cc                                              	int3
10563cff:	cc                                              	int3
