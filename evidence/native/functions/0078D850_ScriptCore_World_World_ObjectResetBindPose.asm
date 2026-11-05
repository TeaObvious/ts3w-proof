# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d850 (ScriptCore.World::World_ObjectResetBindPose)
Paired Ghidra pseudocode: 0078D850_ScriptCore_World_World_ObjectResetBindPose.c
Window: [0x0078d850, 0x0078d8c0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d8c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d850: 51 56 e8 19 9d 1a 00 8b 4c 24 10 8b 54 24 0c 51
0078d860: 52 8b c8 e8 18 a7 1a 00 8b f0 85 f6 74 46 57 8d
0078d870: 7e 04 8b c7 b9 01 00 00 00 f0 0f c1 08 8b 15 84
0078d880: d4 1d 01 52 8b ce e8 d5 69 1a 00 85 c0 74 07 8b
0078d890: c8 e8 5a f3 1a 00 8b c7 83 c9 ff f0 0f c1 08 49
0078d8a0: 75 11 ba 01 00 00 00 87 17 8b 06 8b 10 6a 01 8b
0078d8b0: ce ff d2 5f 5e 59 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078d850 <.text+0x38c850>:
  78d850:	51                                              	push   ecx
  78d851:	56                                              	push   esi
  78d852:	e8 19 9d 1a 00                                  	call   0x937570
  78d857:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78d85b:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  78d85f:	51                                              	push   ecx
  78d860:	52                                              	push   edx
  78d861:	8b c8                                           	mov    ecx,eax
  78d863:	e8 18 a7 1a 00                                  	call   0x937f80
  78d868:	8b f0                                           	mov    esi,eax
  78d86a:	85 f6                                           	test   esi,esi
  78d86c:	74 46                                           	je     0x78d8b4
  78d86e:	57                                              	push   edi
  78d86f:	8d 7e 04                                        	lea    edi,[esi+0x4]
  78d872:	8b c7                                           	mov    eax,edi
  78d874:	b9 01 00 00 00                                  	mov    ecx,0x1
  78d879:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78d87d:	8b 15 84 d4 1d 01                               	mov    edx,DWORD PTR ds:0x11dd484
  78d883:	52                                              	push   edx
  78d884:	8b ce                                           	mov    ecx,esi
  78d886:	e8 d5 69 1a 00                                  	call   0x934260
  78d88b:	85 c0                                           	test   eax,eax
  78d88d:	74 07                                           	je     0x78d896
  78d88f:	8b c8                                           	mov    ecx,eax
  78d891:	e8 5a f3 1a 00                                  	call   0x93cbf0
  78d896:	8b c7                                           	mov    eax,edi
  78d898:	83 c9 ff                                        	or     ecx,0xffffffff
  78d89b:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  78d89f:	49                                              	dec    ecx
  78d8a0:	75 11                                           	jne    0x78d8b3
  78d8a2:	ba 01 00 00 00                                  	mov    edx,0x1
  78d8a7:	87 17                                           	xchg   DWORD PTR [edi],edx
  78d8a9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78d8ab:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78d8ad:	6a 01                                           	push   0x1
  78d8af:	8b ce                                           	mov    ecx,esi
  78d8b1:	ff d2                                           	call   edx
  78d8b3:	5f                                              	pop    edi
  78d8b4:	5e                                              	pop    esi
  78d8b5:	59                                              	pop    ecx
  78d8b6:	c3                                              	ret
  78d8b7:	cc                                              	int3
  78d8b8:	cc                                              	int3
  78d8b9:	cc                                              	int3
  78d8ba:	cc                                              	int3
  78d8bb:	cc                                              	int3
  78d8bc:	cc                                              	int3
  78d8bd:	cc                                              	int3
  78d8be:	cc                                              	int3
  78d8bf:	cc                                              	int3
