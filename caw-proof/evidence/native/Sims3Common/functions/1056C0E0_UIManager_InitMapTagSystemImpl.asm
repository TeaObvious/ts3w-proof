# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1056c0e0 (UIManager_InitMapTagSystemImpl)
Paired Ghidra pseudocode: 1056C0E0_UIManager_InitMapTagSystemImpl.c
Window: [0x1056c0e0, 0x1056c180) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x1056c180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1056c0e0: 8b 44 24 48 d9 44 24 44 8b 4c 24 30 8b 54 24 34
1056c0f0: 50 83 ec 18 d9 5c 24 14 8b c4 d9 44 24 5c 83 ec
1056c100: 24 d9 5c 24 34 89 08 8b 4c 24 78 d9 44 24 6c 89
1056c110: 50 04 8b 54 24 7c 89 48 08 89 50 0c d9 5c 24 20
1056c120: d9 44 24 68 8b 44 24 48 d9 5c 24 1c 8b 4c 24 44
1056c130: d9 44 24 64 d9 5c 24 18 d9 44 24 60 d9 5c 24 14
1056c140: d9 44 24 5c d9 5c 24 10 d9 44 24 58 d9 5c 24 0c
1056c150: d9 44 24 54 d9 5c 24 08 d9 44 24 50 d9 5c 24 04
1056c160: d9 44 24 4c d9 1c 24 50 51 e8 02 f9 ff ff 83 c4
1056c170: 48 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1056c0e0 <.text+0x56b0e0>:
1056c0e0:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1056c0e4:	d9 44 24 44                                     	fld    DWORD PTR [esp+0x44]
1056c0e8:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1056c0ec:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
1056c0f0:	50                                              	push   eax
1056c0f1:	83 ec 18                                        	sub    esp,0x18
1056c0f4:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
1056c0f8:	8b c4                                           	mov    eax,esp
1056c0fa:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
1056c0fe:	83 ec 24                                        	sub    esp,0x24
1056c101:	d9 5c 24 34                                     	fstp   DWORD PTR [esp+0x34]
1056c105:	89 08                                           	mov    DWORD PTR [eax],ecx
1056c107:	8b 4c 24 78                                     	mov    ecx,DWORD PTR [esp+0x78]
1056c10b:	d9 44 24 6c                                     	fld    DWORD PTR [esp+0x6c]
1056c10f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1056c112:	8b 54 24 7c                                     	mov    edx,DWORD PTR [esp+0x7c]
1056c116:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
1056c119:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
1056c11c:	d9 5c 24 20                                     	fstp   DWORD PTR [esp+0x20]
1056c120:	d9 44 24 68                                     	fld    DWORD PTR [esp+0x68]
1056c124:	8b 44 24 48                                     	mov    eax,DWORD PTR [esp+0x48]
1056c128:	d9 5c 24 1c                                     	fstp   DWORD PTR [esp+0x1c]
1056c12c:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
1056c130:	d9 44 24 64                                     	fld    DWORD PTR [esp+0x64]
1056c134:	d9 5c 24 18                                     	fstp   DWORD PTR [esp+0x18]
1056c138:	d9 44 24 60                                     	fld    DWORD PTR [esp+0x60]
1056c13c:	d9 5c 24 14                                     	fstp   DWORD PTR [esp+0x14]
1056c140:	d9 44 24 5c                                     	fld    DWORD PTR [esp+0x5c]
1056c144:	d9 5c 24 10                                     	fstp   DWORD PTR [esp+0x10]
1056c148:	d9 44 24 58                                     	fld    DWORD PTR [esp+0x58]
1056c14c:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
1056c150:	d9 44 24 54                                     	fld    DWORD PTR [esp+0x54]
1056c154:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
1056c158:	d9 44 24 50                                     	fld    DWORD PTR [esp+0x50]
1056c15c:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
1056c160:	d9 44 24 4c                                     	fld    DWORD PTR [esp+0x4c]
1056c164:	d9 1c 24                                        	fstp   DWORD PTR [esp]
1056c167:	50                                              	push   eax
1056c168:	51                                              	push   ecx
1056c169:	e8 02 f9 ff ff                                  	call   0x1056ba70
1056c16e:	83 c4 48                                        	add    esp,0x48
1056c171:	c3                                              	ret
1056c172:	cc                                              	int3
1056c173:	cc                                              	int3
1056c174:	cc                                              	int3
1056c175:	cc                                              	int3
1056c176:	cc                                              	int3
1056c177:	cc                                              	int3
1056c178:	cc                                              	int3
1056c179:	cc                                              	int3
1056c17a:	cc                                              	int3
1056c17b:	cc                                              	int3
1056c17c:	cc                                              	int3
1056c17d:	cc                                              	int3
1056c17e:	cc                                              	int3
1056c17f:	cc                                              	int3
