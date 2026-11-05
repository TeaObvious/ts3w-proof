# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990b70 (SimBuilderWrap_GetBlendKey)
Paired Ghidra pseudocode: 10990B70_SimBuilderWrap_GetBlendKey.c
Window: [0x10990b70, 0x10990bb0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990bb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990b70: 8b 44 24 0c 83 ec 10 50 8d 4c 24 04 51 8b 4c 24
10990b80: 20 e8 1a fd ff ff 8b 44 24 14 8b 54 24 08 8b 0c
10990b90: 24 89 10 8b 54 24 04 89 48 08 8b 4c 24 0c 89 50
10990ba0: 0c 89 48 04 83 c4 10 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990b70 <.text+0x98fb70>:
10990b70:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10990b74:	83 ec 10                                        	sub    esp,0x10
10990b77:	50                                              	push   eax
10990b78:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10990b7c:	51                                              	push   ecx
10990b7d:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
10990b81:	e8 1a fd ff ff                                  	call   0x109908a0
10990b86:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10990b8a:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10990b8e:	8b 0c 24                                        	mov    ecx,DWORD PTR [esp]
10990b91:	89 10                                           	mov    DWORD PTR [eax],edx
10990b93:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
10990b97:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10990b9a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10990b9e:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10990ba1:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10990ba4:	83 c4 10                                        	add    esp,0x10
10990ba7:	c3                                              	ret
10990ba8:	cc                                              	int3
10990ba9:	cc                                              	int3
10990baa:	cc                                              	int3
10990bab:	cc                                              	int3
10990bac:	cc                                              	int3
10990bad:	cc                                              	int3
10990bae:	cc                                              	int3
10990baf:	cc                                              	int3
