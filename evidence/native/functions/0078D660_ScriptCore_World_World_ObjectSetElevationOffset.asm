# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d660 (ScriptCore.World::World_ObjectSetElevationOffset)
Paired Ghidra pseudocode: 0078D660_ScriptCore_World_World_ObjectSetElevationOffset.c
Window: [0x0078d660, 0x0078d6c0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d6c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d660: e8 0b 9f 1a 00 85 c0 74 4e 8b 4c 24 08 8b 54 24
0078d670: 04 56 51 52 8b c8 e8 05 a9 1a 00 8b f0 85 f6 74
0078d680: 35 a1 08 df 1e 01 57 50 8b ce e8 d1 6b 1a 00 8b
0078d690: f8 85 ff 74 20 56 e8 15 27 37 00 50 6a 00 e8 3d
0078d6a0: 5c 37 00 83 c4 0c 84 c0 74 0b f3 0f 10 44 24 14
0078d6b0: f3 0f 11 47 24 5f 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d660 <.text+0x38c660>:
  78d660:	e8 0b 9f 1a 00                                  	call   0x937570
  78d665:	85 c0                                           	test   eax,eax
  78d667:	74 4e                                           	je     0x78d6b7
  78d669:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  78d66d:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  78d671:	56                                              	push   esi
  78d672:	51                                              	push   ecx
  78d673:	52                                              	push   edx
  78d674:	8b c8                                           	mov    ecx,eax
  78d676:	e8 05 a9 1a 00                                  	call   0x937f80
  78d67b:	8b f0                                           	mov    esi,eax
  78d67d:	85 f6                                           	test   esi,esi
  78d67f:	74 35                                           	je     0x78d6b6
  78d681:	a1 08 df 1e 01                                  	mov    eax,ds:0x11edf08
  78d686:	57                                              	push   edi
  78d687:	50                                              	push   eax
  78d688:	8b ce                                           	mov    ecx,esi
  78d68a:	e8 d1 6b 1a 00                                  	call   0x934260
  78d68f:	8b f8                                           	mov    edi,eax
  78d691:	85 ff                                           	test   edi,edi
  78d693:	74 20                                           	je     0x78d6b5
  78d695:	56                                              	push   esi
  78d696:	e8 15 27 37 00                                  	call   0xaffdb0
  78d69b:	50                                              	push   eax
  78d69c:	6a 00                                           	push   0x0
  78d69e:	e8 3d 5c 37 00                                  	call   0xb032e0
  78d6a3:	83 c4 0c                                        	add    esp,0xc
  78d6a6:	84 c0                                           	test   al,al
  78d6a8:	74 0b                                           	je     0x78d6b5
  78d6aa:	f3 0f 10 44 24 14                               	movss  xmm0,DWORD PTR [esp+0x14]
  78d6b0:	f3 0f 11 47 24                                  	movss  DWORD PTR [edi+0x24],xmm0
  78d6b5:	5f                                              	pop    edi
  78d6b6:	5e                                              	pop    esi
  78d6b7:	c3                                              	ret
  78d6b8:	cc                                              	int3
  78d6b9:	cc                                              	int3
  78d6ba:	cc                                              	int3
  78d6bb:	cc                                              	int3
  78d6bc:	cc                                              	int3
  78d6bd:	cc                                              	int3
  78d6be:	cc                                              	int3
  78d6bf:	cc                                              	int3
