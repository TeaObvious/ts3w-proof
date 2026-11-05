# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787720 (ScriptCore.World::World_ObjectCanBeMovedUpAndDownOnWall)
Paired Ghidra pseudocode: 00787720_ScriptCore_World_World_ObjectCanBeMovedUpAndDownOnWall.c
Window: [0x00787720, 0x00787770) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787770
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787720: 56 e8 4a fe 1a 00 85 c0 74 36 8b 4c 24 0c 8b 54
00787730: 24 08 51 52 8b c8 e8 45 08 1b 00 8b f0 85 f6 74
00787740: 1f 8b 0d 34 e0 1e 01 8d 46 18 50 e8 60 74 50 00
00787750: 85 c0 74 0c 50 56 e8 85 bb 37 00 83 c4 08 5e c3
00787760: 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00787720 <.text+0x386720>:
  787720:	56                                              	push   esi
  787721:	e8 4a fe 1a 00                                  	call   0x937570
  787726:	85 c0                                           	test   eax,eax
  787728:	74 36                                           	je     0x787760
  78772a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78772e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  787732:	51                                              	push   ecx
  787733:	52                                              	push   edx
  787734:	8b c8                                           	mov    ecx,eax
  787736:	e8 45 08 1b 00                                  	call   0x937f80
  78773b:	8b f0                                           	mov    esi,eax
  78773d:	85 f6                                           	test   esi,esi
  78773f:	74 1f                                           	je     0x787760
  787741:	8b 0d 34 e0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ee034
  787747:	8d 46 18                                        	lea    eax,[esi+0x18]
  78774a:	50                                              	push   eax
  78774b:	e8 60 74 50 00                                  	call   0xc8ebb0
  787750:	85 c0                                           	test   eax,eax
  787752:	74 0c                                           	je     0x787760
  787754:	50                                              	push   eax
  787755:	56                                              	push   esi
  787756:	e8 85 bb 37 00                                  	call   0xb032e0
  78775b:	83 c4 08                                        	add    esp,0x8
  78775e:	5e                                              	pop    esi
  78775f:	c3                                              	ret
  787760:	32 c0                                           	xor    al,al
  787762:	5e                                              	pop    esi
  787763:	c3                                              	ret
  787764:	cc                                              	int3
  787765:	cc                                              	int3
  787766:	cc                                              	int3
  787767:	cc                                              	int3
  787768:	cc                                              	int3
  787769:	cc                                              	int3
  78776a:	cc                                              	int3
  78776b:	cc                                              	int3
  78776c:	cc                                              	int3
  78776d:	cc                                              	int3
  78776e:	cc                                              	int3
  78776f:	cc                                              	int3
