# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007868d0 (ScriptCore.World::World_LotSetAutoRoofStyleImpl)
Paired Ghidra pseudocode: 007868D0_ScriptCore_World_World_LotSetAutoRoofStyleImpl.c
Window: [0x007868d0, 0x00786930) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007868d0: 8b 0d c4 db 1e 01 83 ec 10 85 c9 74 49 8b 44 24
007868e0: 18 8b 54 24 14 6a 00 50 52 e8 22 bf 4d 00 85 c0
007868f0: 74 34 8b 80 ac 02 00 00 85 c0 74 2a 8b 4c 24 24
00786900: 8b 54 24 28 89 0c 24 8b 4c 24 1c 89 4c 24 08 8d
00786910: 0c 24 89 54 24 04 8b 54 24 20 51 8b c8 89 54 24
00786920: 10 e8 4a e9 40 00 83 c4 10 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007868d0 <.text+0x3858d0>:
  7868d0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7868d6:	83 ec 10                                        	sub    esp,0x10
  7868d9:	85 c9                                           	test   ecx,ecx
  7868db:	74 49                                           	je     0x786926
  7868dd:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  7868e1:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  7868e5:	6a 00                                           	push   0x0
  7868e7:	50                                              	push   eax
  7868e8:	52                                              	push   edx
  7868e9:	e8 22 bf 4d 00                                  	call   0xc62810
  7868ee:	85 c0                                           	test   eax,eax
  7868f0:	74 34                                           	je     0x786926
  7868f2:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  7868f8:	85 c0                                           	test   eax,eax
  7868fa:	74 2a                                           	je     0x786926
  7868fc:	8b 4c 24 24                                     	mov    ecx,DWORD PTR [esp+0x24]
  786900:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  786904:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
  786907:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
  78690b:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  78690f:	8d 0c 24                                        	lea    ecx,[esp]
  786912:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
  786916:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
  78691a:	51                                              	push   ecx
  78691b:	8b c8                                           	mov    ecx,eax
  78691d:	89 54 24 10                                     	mov    DWORD PTR [esp+0x10],edx
  786921:	e8 4a e9 40 00                                  	call   0xb95270
  786926:	83 c4 10                                        	add    esp,0x10
  786929:	c3                                              	ret
  78692a:	cc                                              	int3
  78692b:	cc                                              	int3
  78692c:	cc                                              	int3
  78692d:	cc                                              	int3
  78692e:	cc                                              	int3
  78692f:	cc                                              	int3
