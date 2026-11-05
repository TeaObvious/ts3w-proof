# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098ffc0 (SimBuilderWrap_SaveOutfit)
Paired Ghidra pseudocode: 1098FFC0_SimBuilderWrap_SaveOutfit.c
Window: [0x1098ffc0, 0x10990020) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x10990020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098ffc0: 83 ec 20 80 7c 24 34 00 74 14 8b 4c 24 28 6a ff
1098ffd0: 6a ff 8d 44 24 08 50 e8 b4 c8 a4 ff eb 1e 8b 4c
1098ffe0: 24 30 8b 54 24 2c 51 8b 4c 24 2c 6a ff 6a ff 6a
1098fff0: 00 52 8d 44 24 24 50 e8 94 af a4 ff 8b 08 8b 50
10990000: 04 56 8b 70 08 57 8b 78 0c 8b 44 24 2c 89 78 04
10990010: 5f 89 30 89 48 08 89 50 0c 5e 83 c4 20 c3 cc cc

LINEAR DISASSEMBLY
1098ffc0 <.text+0x98efc0>:
1098ffc0:	83 ec 20                                        	sub    esp,0x20
1098ffc3:	80 7c 24 34 00                                  	cmp    BYTE PTR [esp+0x34],0x0
1098ffc8:	74 14                                           	je     0x1098ffde
1098ffca:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
1098ffce:	6a ff                                           	push   0xffffffff
1098ffd0:	6a ff                                           	push   0xffffffff
1098ffd2:	8d 44 24 08                                     	lea    eax,[esp+0x8]
1098ffd6:	50                                              	push   eax
1098ffd7:	e8 b4 c8 a4 ff                                  	call   0x103dc890
1098ffdc:	eb 1e                                           	jmp    0x1098fffc
1098ffde:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
1098ffe2:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
1098ffe6:	51                                              	push   ecx
1098ffe7:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
1098ffeb:	6a ff                                           	push   0xffffffff
1098ffed:	6a ff                                           	push   0xffffffff
1098ffef:	6a 00                                           	push   0x0
1098fff1:	52                                              	push   edx
1098fff2:	8d 44 24 24                                     	lea    eax,[esp+0x24]
1098fff6:	50                                              	push   eax
1098fff7:	e8 94 af a4 ff                                  	call   0x103daf90
1098fffc:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1098fffe:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10990001:	56                                              	push   esi
10990002:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
10990005:	57                                              	push   edi
10990006:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
10990009:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
1099000d:	89 78 04                                        	mov    DWORD PTR [eax+0x4],edi
10990010:	5f                                              	pop    edi
10990011:	89 30                                           	mov    DWORD PTR [eax],esi
10990013:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10990016:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
10990019:	5e                                              	pop    esi
1099001a:	83 c4 20                                        	add    esp,0x20
1099001d:	c3                                              	ret
1099001e:	cc                                              	int3
1099001f:	cc                                              	int3
