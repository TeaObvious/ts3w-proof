# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6050 (ScriptCore.CASUtils::CASUtils_SimBuilderSetTextureSizeImpl)
Paired Ghidra pseudocode: 005A6050_ScriptCore_CASUtils_CASUtils_SimBuilderSetTextureSizeImpl.c
Window: [0x005a6050, 0x005a60a0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a60a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6050: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6060: 35 75 2f e8 28 33 1c 00 8b 10 8b c8 8b 82 cc 00
005a6070: 00 00 56 ff d0 85 c0 74 19 8b 4c 24 0c 81 48 1c
005a6080: 00 4f 00 00 89 48 64 b9 1f 00 00 00 89 48 14 89
005a6090: 48 18 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6050 <.text+0x1a5050>:
  5a6050:	56                                              	push   esi
  5a6051:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6055:	8b c6                                           	mov    eax,esi
  5a6057:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a605c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6061:	75 2f                                           	jne    0x5a6092
  5a6063:	e8 28 33 1c 00                                  	call   0x769390
  5a6068:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a606a:	8b c8                                           	mov    ecx,eax
  5a606c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6072:	56                                              	push   esi
  5a6073:	ff d0                                           	call   eax
  5a6075:	85 c0                                           	test   eax,eax
  5a6077:	74 19                                           	je     0x5a6092
  5a6079:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5a607d:	81 48 1c 00 4f 00 00                            	or     DWORD PTR [eax+0x1c],0x4f00
  5a6084:	89 48 64                                        	mov    DWORD PTR [eax+0x64],ecx
  5a6087:	b9 1f 00 00 00                                  	mov    ecx,0x1f
  5a608c:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  5a608f:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
  5a6092:	5e                                              	pop    esi
  5a6093:	c3                                              	ret
  5a6094:	cc                                              	int3
  5a6095:	cc                                              	int3
  5a6096:	cc                                              	int3
  5a6097:	cc                                              	int3
  5a6098:	cc                                              	int3
  5a6099:	cc                                              	int3
  5a609a:	cc                                              	int3
  5a609b:	cc                                              	int3
  5a609c:	cc                                              	int3
  5a609d:	cc                                              	int3
  5a609e:	cc                                              	int3
  5a609f:	cc                                              	int3
