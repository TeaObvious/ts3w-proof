# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993ee0 (TextureCompositorResourceWrap_RebuildTexture)
Paired Ghidra pseudocode: 10993EE0_TextureCompositorResourceWrap_RebuildTexture.c
Window: [0x10993ee0, 0x10993f30) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993ee0: 83 ec 10 8b 4c 24 2c 8b 44 24 28 8b 54 24 30 89
10993ef0: 0c 24 89 44 24 0c 8b 44 24 24 89 54 24 04 8b 54
10993f00: 24 20 8d 0c 24 51 8b 4c 24 1c 52 8b 54 24 1c 89
10993f10: 44 24 10 8b 44 24 24 50 51 52 e8 81 fd ff ff 83
10993f20: c4 24 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993ee0 <.text+0x992ee0>:
10993ee0:	83 ec 10                                        	sub    esp,0x10
10993ee3:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
10993ee7:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
10993eeb:	8b 54 24 30                                     	mov    edx,DWORD PTR [esp+0x30]
10993eef:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10993ef2:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10993ef6:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10993efa:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10993efe:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10993f02:	8d 0c 24                                        	lea    ecx,[esp]
10993f05:	51                                              	push   ecx
10993f06:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10993f0a:	52                                              	push   edx
10993f0b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10993f0f:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
10993f13:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
10993f17:	50                                              	push   eax
10993f18:	51                                              	push   ecx
10993f19:	52                                              	push   edx
10993f1a:	e8 81 fd ff ff                                  	call   0x10993ca0
10993f1f:	83 c4 24                                        	add    esp,0x24
10993f22:	c3                                              	ret
10993f23:	cc                                              	int3
10993f24:	cc                                              	int3
10993f25:	cc                                              	int3
10993f26:	cc                                              	int3
10993f27:	cc                                              	int3
10993f28:	cc                                              	int3
10993f29:	cc                                              	int3
10993f2a:	cc                                              	int3
10993f2b:	cc                                              	int3
10993f2c:	cc                                              	int3
10993f2d:	cc                                              	int3
10993f2e:	cc                                              	int3
10993f2f:	cc                                              	int3
