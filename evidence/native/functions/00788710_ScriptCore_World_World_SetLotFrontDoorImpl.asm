# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788710 (ScriptCore.World::World_SetLotFrontDoorImpl)
Paired Ghidra pseudocode: 00788710_ScriptCore_World_World_SetLotFrontDoorImpl.c
Window: [0x00788710, 0x00788750) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788710: e8 db 05 0a 00 85 c0 74 0b 8b c8 e8 a0 0e 0a 00
00788720: 85 c0 75 03 32 c0 c3 8b 4c 24 14 8b 54 24 10 51
00788730: 8b 4c 24 10 52 8b 54 24 10 51 8b 4c 24 10 52 51
00788740: 8b c8 e8 89 99 ea ff c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788710 <.text+0x387710>:
  788710:	e8 db 05 0a 00                                  	call   0x828cf0
  788715:	85 c0                                           	test   eax,eax
  788717:	74 0b                                           	je     0x788724
  788719:	8b c8                                           	mov    ecx,eax
  78871b:	e8 a0 0e 0a 00                                  	call   0x8295c0
  788720:	85 c0                                           	test   eax,eax
  788722:	75 03                                           	jne    0x788727
  788724:	32 c0                                           	xor    al,al
  788726:	c3                                              	ret
  788727:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78872b:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  78872f:	51                                              	push   ecx
  788730:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  788734:	52                                              	push   edx
  788735:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  788739:	51                                              	push   ecx
  78873a:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78873e:	52                                              	push   edx
  78873f:	51                                              	push   ecx
  788740:	8b c8                                           	mov    ecx,eax
  788742:	e8 89 99 ea ff                                  	call   0x6320d0
  788747:	c3                                              	ret
  788748:	cc                                              	int3
  788749:	cc                                              	int3
  78874a:	cc                                              	int3
  78874b:	cc                                              	int3
  78874c:	cc                                              	int3
  78874d:	cc                                              	int3
  78874e:	cc                                              	int3
  78874f:	cc                                              	int3
