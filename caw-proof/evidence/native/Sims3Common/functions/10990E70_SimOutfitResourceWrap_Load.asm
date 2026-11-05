# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10990e70 (SimOutfitResourceWrap_Load)
Paired Ghidra pseudocode: 10990E70_SimOutfitResourceWrap_Load.c
Window: [0x10990e70, 0x10990ef0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10990e70: 83 ec 10 8b 44 24 18 8b 4c 24 14 8b 54 24 1c 89
10990e80: 44 24 0c 8b 44 24 20 89 4c 24 08 89 14 24 89 44
10990e90: 24 04 c7 44 24 14 00 00 00 00 e8 31 42 f5 ff 8b
10990ea0: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
10990eb0: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
10990ec0: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 08 d7 5e 02
10990ed0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
10990ee0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10990e70 <.text+0x98fe70>:
10990e70:	83 ec 10                                        	sub    esp,0x10
10990e73:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10990e77:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10990e7b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10990e7f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10990e83:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10990e87:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10990e8b:	89 14 24                                        	mov    DWORD PTR [esp],edx
10990e8e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10990e92:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10990e9a:	e8 31 42 f5 ff                                  	call   0x108e50d0
10990e9f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10990ea1:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10990ea4:	6a 00                                           	push   0x0
10990ea6:	6a 00                                           	push   0x0
10990ea8:	6a 00                                           	push   0x0
10990eaa:	6a 00                                           	push   0x0
10990eac:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10990eb0:	51                                              	push   ecx
10990eb1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10990eb5:	51                                              	push   ecx
10990eb6:	8b c8                                           	mov    ecx,eax
10990eb8:	ff d2                                           	call   edx
10990eba:	84 c0                                           	test   al,al
10990ebc:	74 23                                           	je     0x10990ee1
10990ebe:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10990ec2:	85 c9                                           	test   ecx,ecx
10990ec4:	74 14                                           	je     0x10990eda
10990ec6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10990ec8:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10990ecb:	68 08 d7 5e 02                                  	push   0x25ed708
10990ed0:	ff d2                                           	call   edx
10990ed2:	85 c0                                           	test   eax,eax
10990ed4:	75 0d                                           	jne    0x10990ee3
10990ed6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10990eda:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10990edc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10990edf:	ff d2                                           	call   edx
10990ee1:	33 c0                                           	xor    eax,eax
10990ee3:	83 c4 10                                        	add    esp,0x10
10990ee6:	c3                                              	ret
10990ee7:	cc                                              	int3
10990ee8:	cc                                              	int3
10990ee9:	cc                                              	int3
10990eea:	cc                                              	int3
10990eeb:	cc                                              	int3
10990eec:	cc                                              	int3
10990eed:	cc                                              	int3
10990eee:	cc                                              	int3
10990eef:	cc                                              	int3
