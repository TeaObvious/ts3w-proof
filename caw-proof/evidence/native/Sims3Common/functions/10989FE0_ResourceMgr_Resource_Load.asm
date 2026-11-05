# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989fe0 (ResourceMgr_Resource_Load)
Paired Ghidra pseudocode: 10989FE0_ResourceMgr_Resource_Load.c
Window: [0x10989fe0, 0x1098a040) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098a040
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989fe0: 83 ec 10 8b 44 24 18 8b 4c 24 14 8b 54 24 1c 89
10989ff0: 44 24 0c 8b 44 24 20 89 4c 24 08 89 14 24 89 44
1098a000: 24 04 c7 44 24 14 00 00 00 00 e8 c1 b0 f5 ff 85
1098a010: c0 74 27 8b 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00
1098a020: 8d 4c 24 24 51 8d 4c 24 14 51 8b c8 ff d2 84 c0
1098a030: 74 08 8b 44 24 14 83 c4 10 c3 33 c0 83 c4 10 c3

LINEAR DISASSEMBLY
10989fe0 <.text+0x988fe0>:
10989fe0:	83 ec 10                                        	sub    esp,0x10
10989fe3:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10989fe7:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10989feb:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10989fef:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10989ff3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10989ff7:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10989ffb:	89 14 24                                        	mov    DWORD PTR [esp],edx
10989ffe:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1098a002:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1098a00a:	e8 c1 b0 f5 ff                                  	call   0x108e50d0
1098a00f:	85 c0                                           	test   eax,eax
1098a011:	74 27                                           	je     0x1098a03a
1098a013:	8b 10                                           	mov    edx,DWORD PTR [eax]
1098a015:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1098a018:	6a 00                                           	push   0x0
1098a01a:	6a 00                                           	push   0x0
1098a01c:	6a 00                                           	push   0x0
1098a01e:	6a 00                                           	push   0x0
1098a020:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1098a024:	51                                              	push   ecx
1098a025:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098a029:	51                                              	push   ecx
1098a02a:	8b c8                                           	mov    ecx,eax
1098a02c:	ff d2                                           	call   edx
1098a02e:	84 c0                                           	test   al,al
1098a030:	74 08                                           	je     0x1098a03a
1098a032:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
1098a036:	83 c4 10                                        	add    esp,0x10
1098a039:	c3                                              	ret
1098a03a:	33 c0                                           	xor    eax,eax
1098a03c:	83 c4 10                                        	add    esp,0x10
1098a03f:	c3                                              	ret
