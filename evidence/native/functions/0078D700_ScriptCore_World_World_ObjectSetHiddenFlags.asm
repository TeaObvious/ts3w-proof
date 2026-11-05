# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078d700 (ScriptCore.World::World_ObjectSetHiddenFlags)
Paired Ghidra pseudocode: 0078D700_ScriptCore_World_World_ObjectSetHiddenFlags.c
Window: [0x0078d700, 0x0078d780) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078d780
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078d700: 51 e8 6a 9e 1a 00 85 c0 74 71 8b 4c 24 0c 8b 54
0078d710: 24 08 56 51 52 8b c8 e8 64 a8 1a 00 8b f0 85 f6
0078d720: 74 58 a1 a8 a2 1e 01 53 50 8b ce e8 30 6b 1a 00
0078d730: 85 c0 8b 5c 24 18 74 13 f6 c3 05 75 04 b1 01 eb
0078d740: 02 32 c9 51 8b c8 e8 05 0f 1d 00 8b 0d a8 9f 1e
0078d750: 01 d1 eb f6 d3 51 80 e3 01 8b ce 88 5c 24 0c e8
0078d760: fc 6a 1a 00 85 c0 5b 74 11 8b 54 24 18 8b 4c 24
0078d770: 04 52 51 8b c8 e8 d6 88 1b 00 5e 59 c3 cc cc cc

LINEAR DISASSEMBLY
0078d700 <.text+0x38c700>:
  78d700:	51                                              	push   ecx
  78d701:	e8 6a 9e 1a 00                                  	call   0x937570
  78d706:	85 c0                                           	test   eax,eax
  78d708:	74 71                                           	je     0x78d77b
  78d70a:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78d70e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78d712:	56                                              	push   esi
  78d713:	51                                              	push   ecx
  78d714:	52                                              	push   edx
  78d715:	8b c8                                           	mov    ecx,eax
  78d717:	e8 64 a8 1a 00                                  	call   0x937f80
  78d71c:	8b f0                                           	mov    esi,eax
  78d71e:	85 f6                                           	test   esi,esi
  78d720:	74 58                                           	je     0x78d77a
  78d722:	a1 a8 a2 1e 01                                  	mov    eax,ds:0x11ea2a8
  78d727:	53                                              	push   ebx
  78d728:	50                                              	push   eax
  78d729:	8b ce                                           	mov    ecx,esi
  78d72b:	e8 30 6b 1a 00                                  	call   0x934260
  78d730:	85 c0                                           	test   eax,eax
  78d732:	8b 5c 24 18                                     	mov    ebx,DWORD PTR [esp+0x18]
  78d736:	74 13                                           	je     0x78d74b
  78d738:	f6 c3 05                                        	test   bl,0x5
  78d73b:	75 04                                           	jne    0x78d741
  78d73d:	b1 01                                           	mov    cl,0x1
  78d73f:	eb 02                                           	jmp    0x78d743
  78d741:	32 c9                                           	xor    cl,cl
  78d743:	51                                              	push   ecx
  78d744:	8b c8                                           	mov    ecx,eax
  78d746:	e8 05 0f 1d 00                                  	call   0x95e650
  78d74b:	8b 0d a8 9f 1e 01                               	mov    ecx,DWORD PTR ds:0x11e9fa8
  78d751:	d1 eb                                           	shr    ebx,1
  78d753:	f6 d3                                           	not    bl
  78d755:	51                                              	push   ecx
  78d756:	80 e3 01                                        	and    bl,0x1
  78d759:	8b ce                                           	mov    ecx,esi
  78d75b:	88 5c 24 0c                                     	mov    BYTE PTR [esp+0xc],bl
  78d75f:	e8 fc 6a 1a 00                                  	call   0x934260
  78d764:	85 c0                                           	test   eax,eax
  78d766:	5b                                              	pop    ebx
  78d767:	74 11                                           	je     0x78d77a
  78d769:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  78d76d:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78d771:	52                                              	push   edx
  78d772:	51                                              	push   ecx
  78d773:	8b c8                                           	mov    ecx,eax
  78d775:	e8 d6 88 1b 00                                  	call   0x946050
  78d77a:	5e                                              	pop    esi
  78d77b:	59                                              	pop    ecx
  78d77c:	c3                                              	ret
  78d77d:	cc                                              	int3
  78d77e:	cc                                              	int3
  78d77f:	cc                                              	int3
