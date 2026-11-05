# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00786930 (ScriptCore.World::World_LotGetAutoRoofStyleImpl)
Paired Ghidra pseudocode: 00786930_ScriptCore_World_World_LotGetAutoRoofStyleImpl.c
Window: [0x00786930, 0x00786990) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00786990
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00786930: 8b 0d c4 db 1e 01 56 8b 74 24 08 57 33 ff 3b cf
00786940: 89 7e 04 89 7e 08 89 7e 0c 89 3e 74 39 8b 44 24
00786950: 14 8b 54 24 10 57 50 52 e8 b3 be 4d 00 3b c7 74
00786960: 25 8b 88 ac 02 00 00 3b cf 74 1b e8 f0 db 40 00
00786970: 8b 08 8b 50 04 8b 78 08 8b 40 0c 89 4e 08 89 56
00786980: 0c 89 46 04 89 3e 5f 8b c6 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00786930 <.text+0x385930>:
  786930:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  786936:	56                                              	push   esi
  786937:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  78693b:	57                                              	push   edi
  78693c:	33 ff                                           	xor    edi,edi
  78693e:	3b cf                                           	cmp    ecx,edi
  786940:	89 7e 04                                        	mov    DWORD PTR [esi+0x4],edi
  786943:	89 7e 08                                        	mov    DWORD PTR [esi+0x8],edi
  786946:	89 7e 0c                                        	mov    DWORD PTR [esi+0xc],edi
  786949:	89 3e                                           	mov    DWORD PTR [esi],edi
  78694b:	74 39                                           	je     0x786986
  78694d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  786951:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  786955:	57                                              	push   edi
  786956:	50                                              	push   eax
  786957:	52                                              	push   edx
  786958:	e8 b3 be 4d 00                                  	call   0xc62810
  78695d:	3b c7                                           	cmp    eax,edi
  78695f:	74 25                                           	je     0x786986
  786961:	8b 88 ac 02 00 00                               	mov    ecx,DWORD PTR [eax+0x2ac]
  786967:	3b cf                                           	cmp    ecx,edi
  786969:	74 1b                                           	je     0x786986
  78696b:	e8 f0 db 40 00                                  	call   0xb94560
  786970:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  786972:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  786975:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  786978:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  78697b:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  78697e:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  786981:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  786984:	89 3e                                           	mov    DWORD PTR [esi],edi
  786986:	5f                                              	pop    edi
  786987:	8b c6                                           	mov    eax,esi
  786989:	5e                                              	pop    esi
  78698a:	c3                                              	ret
  78698b:	cc                                              	int3
  78698c:	cc                                              	int3
  78698d:	cc                                              	int3
  78698e:	cc                                              	int3
  78698f:	cc                                              	int3
