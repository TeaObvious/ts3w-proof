# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785960 (ScriptCore.World::World_GetCommercialLotSubType)
Paired Ghidra pseudocode: 00785960_ScriptCore_World_World_GetCommercialLotSubType.c
Window: [0x00785960, 0x007859a0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007859a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785960: 8b 0d c4 db 1e 01 85 c9 74 13 8b 44 24 08 8b 54
00785970: 24 04 6a 00 50 52 e8 95 ce 4d 00 eb 02 33 c0 33
00785980: c9 85 c0 74 13 83 b8 08 04 00 00 01 75 07 8b 80
00785990: 0c 04 00 00 c3 33 c0 c3 8b c1 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00785960 <.text+0x384960>:
  785960:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785966:	85 c9                                           	test   ecx,ecx
  785968:	74 13                                           	je     0x78597d
  78596a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78596e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785972:	6a 00                                           	push   0x0
  785974:	50                                              	push   eax
  785975:	52                                              	push   edx
  785976:	e8 95 ce 4d 00                                  	call   0xc62810
  78597b:	eb 02                                           	jmp    0x78597f
  78597d:	33 c0                                           	xor    eax,eax
  78597f:	33 c9                                           	xor    ecx,ecx
  785981:	85 c0                                           	test   eax,eax
  785983:	74 13                                           	je     0x785998
  785985:	83 b8 08 04 00 00 01                            	cmp    DWORD PTR [eax+0x408],0x1
  78598c:	75 07                                           	jne    0x785995
  78598e:	8b 80 0c 04 00 00                               	mov    eax,DWORD PTR [eax+0x40c]
  785994:	c3                                              	ret
  785995:	33 c0                                           	xor    eax,eax
  785997:	c3                                              	ret
  785998:	8b c1                                           	mov    eax,ecx
  78599a:	c3                                              	ret
  78599b:	cc                                              	int3
  78599c:	cc                                              	int3
  78599d:	cc                                              	int3
  78599e:	cc                                              	int3
  78599f:	cc                                              	int3
