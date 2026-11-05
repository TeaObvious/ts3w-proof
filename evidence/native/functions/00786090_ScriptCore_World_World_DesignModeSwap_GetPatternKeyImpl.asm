# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786090 (ScriptCore.World::World_DesignModeSwap_GetPatternKeyImpl)
Paired Ghidra pseudocode: 00786090_ScriptCore_World_World_DesignModeSwap_GetPatternKeyImpl.c
Window: [0x00786090, 0x00786110) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786110
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786090: 33 c0 83 ec 10 56 8b 74 24 18 89 06 89 46 04 89
007860a0: 46 08 89 46 0c e8 e6 32 fe ff 8b 4c 24 1c 8b d1
007860b0: 81 e2 00 00 00 ff 81 fa 00 00 00 45 75 3d 8b 10
007860c0: 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 74 2c 8b
007860d0: 4c 24 20 51 8d 54 24 08 52 8b c8 e8 c0 9e 2d 00
007860e0: 8b 44 24 0c 8b 4c 24 10 8b 54 24 04 89 06 8b 44
007860f0: 24 08 89 4e 04 89 56 08 89 46 0c 8b c6 5e 83 c4
00786100: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00786090 <.text+0x385090>:
  786090:	33 c0                                           	xor    eax,eax
  786092:	83 ec 10                                        	sub    esp,0x10
  786095:	56                                              	push   esi
  786096:	8b 74 24 18                                     	mov    esi,DWORD PTR [esp+0x18]
  78609a:	89 06                                           	mov    DWORD PTR [esi],eax
  78609c:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  78609f:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  7860a2:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  7860a5:	e8 e6 32 fe ff                                  	call   0x769390
  7860aa:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  7860ae:	8b d1                                           	mov    edx,ecx
  7860b0:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  7860b6:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  7860bc:	75 3d                                           	jne    0x7860fb
  7860be:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7860c0:	51                                              	push   ecx
  7860c1:	8b c8                                           	mov    ecx,eax
  7860c3:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  7860c9:	ff d0                                           	call   eax
  7860cb:	85 c0                                           	test   eax,eax
  7860cd:	74 2c                                           	je     0x7860fb
  7860cf:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  7860d3:	51                                              	push   ecx
  7860d4:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  7860d8:	52                                              	push   edx
  7860d9:	8b c8                                           	mov    ecx,eax
  7860db:	e8 c0 9e 2d 00                                  	call   0xa5ffa0
  7860e0:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  7860e4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  7860e8:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7860ec:	89 06                                           	mov    DWORD PTR [esi],eax
  7860ee:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7860f2:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  7860f5:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  7860f8:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  7860fb:	8b c6                                           	mov    eax,esi
  7860fd:	5e                                              	pop    esi
  7860fe:	83 c4 10                                        	add    esp,0x10
  786101:	c3                                              	ret
  786102:	cc                                              	int3
  786103:	cc                                              	int3
  786104:	cc                                              	int3
  786105:	cc                                              	int3
  786106:	cc                                              	int3
  786107:	cc                                              	int3
  786108:	cc                                              	int3
  786109:	cc                                              	int3
  78610a:	cc                                              	int3
  78610b:	cc                                              	int3
  78610c:	cc                                              	int3
  78610d:	cc                                              	int3
  78610e:	cc                                              	int3
  78610f:	cc                                              	int3
