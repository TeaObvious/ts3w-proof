# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a80d0 (ScriptCore.CASUtils::CASUtils_PartSearchGetCurrentImpl)
Paired Ghidra pseudocode: 005A80D0_ScriptCore_CASUtils_CASUtils_PartSearchGetCurrentImpl.c
Window: [0x005a80d0, 0x005a8160) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a8160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a80d0: 83 ec 48 56 8b 74 24 54 8b c6 25 00 00 00 ff 3d
005a80e0: 00 00 00 35 57 75 18 e8 a4 12 1c 00 8b 10 8b c8
005a80f0: 8b 82 cc 00 00 00 56 ff d0 8b f0 85 f6 75 28 6a
005a8100: 48 8d 4c 24 0c 6a 00 51 e8 8b 71 9d 00 8b 44 24
005a8110: 60 83 c4 0c b9 12 00 00 00 8d 74 24 08 8b f8 f3
005a8120: a5 5f 5e 83 c4 48 c3 8b 7c 24 54 6a 48 6a 00 57
005a8130: e8 63 71 9d 00 83 c4 0c 83 7e 14 00 74 12 8b 46
005a8140: 10 3b 46 04 74 0a 57 50 e8 43 fd ff ff 83 c4 08
005a8150: 8b c7 5f 5e 83 c4 48 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a80d0 <.text+0x1a70d0>:
  5a80d0:	83 ec 48                                        	sub    esp,0x48
  5a80d3:	56                                              	push   esi
  5a80d4:	8b 74 24 54                                     	mov    esi,DWORD PTR [esp+0x54]
  5a80d8:	8b c6                                           	mov    eax,esi
  5a80da:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a80df:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a80e4:	57                                              	push   edi
  5a80e5:	75 18                                           	jne    0x5a80ff
  5a80e7:	e8 a4 12 1c 00                                  	call   0x769390
  5a80ec:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a80ee:	8b c8                                           	mov    ecx,eax
  5a80f0:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a80f6:	56                                              	push   esi
  5a80f7:	ff d0                                           	call   eax
  5a80f9:	8b f0                                           	mov    esi,eax
  5a80fb:	85 f6                                           	test   esi,esi
  5a80fd:	75 28                                           	jne    0x5a8127
  5a80ff:	6a 48                                           	push   0x48
  5a8101:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  5a8105:	6a 00                                           	push   0x0
  5a8107:	51                                              	push   ecx
  5a8108:	e8 8b 71 9d 00                                  	call   0xf7f298
  5a810d:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  5a8111:	83 c4 0c                                        	add    esp,0xc
  5a8114:	b9 12 00 00 00                                  	mov    ecx,0x12
  5a8119:	8d 74 24 08                                     	lea    esi,[esp+0x8]
  5a811d:	8b f8                                           	mov    edi,eax
  5a811f:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
  5a8121:	5f                                              	pop    edi
  5a8122:	5e                                              	pop    esi
  5a8123:	83 c4 48                                        	add    esp,0x48
  5a8126:	c3                                              	ret
  5a8127:	8b 7c 24 54                                     	mov    edi,DWORD PTR [esp+0x54]
  5a812b:	6a 48                                           	push   0x48
  5a812d:	6a 00                                           	push   0x0
  5a812f:	57                                              	push   edi
  5a8130:	e8 63 71 9d 00                                  	call   0xf7f298
  5a8135:	83 c4 0c                                        	add    esp,0xc
  5a8138:	83 7e 14 00                                     	cmp    DWORD PTR [esi+0x14],0x0
  5a813c:	74 12                                           	je     0x5a8150
  5a813e:	8b 46 10                                        	mov    eax,DWORD PTR [esi+0x10]
  5a8141:	3b 46 04                                        	cmp    eax,DWORD PTR [esi+0x4]
  5a8144:	74 0a                                           	je     0x5a8150
  5a8146:	57                                              	push   edi
  5a8147:	50                                              	push   eax
  5a8148:	e8 43 fd ff ff                                  	call   0x5a7e90
  5a814d:	83 c4 08                                        	add    esp,0x8
  5a8150:	8b c7                                           	mov    eax,edi
  5a8152:	5f                                              	pop    edi
  5a8153:	5e                                              	pop    esi
  5a8154:	83 c4 48                                        	add    esp,0x48
  5a8157:	c3                                              	ret
  5a8158:	cc                                              	int3
  5a8159:	cc                                              	int3
  5a815a:	cc                                              	int3
  5a815b:	cc                                              	int3
  5a815c:	cc                                              	int3
  5a815d:	cc                                              	int3
  5a815e:	cc                                              	int3
  5a815f:	cc                                              	int3
