# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767220 (SACS_BridgeWatchConstructor_767220)
Paired Ghidra pseudocode: 00767220_SACS_BridgeWatchConstructor_767220.c
Window: [0x00767220, 0x00767290) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767220: 56 8b f1 c7 06 1c c9 06 01 33 c0 8d 4e 04 87 01
00767230: 8b 44 24 0c 8b 54 24 08 8b 4c 24 18 89 46 0c 8b
00767240: 44 24 28 85 c0 89 56 08 c7 46 10 20 93 76 00 c7
00767250: 06 fc 7d 00 01 89 4e 18 89 46 1c 74 17 8b 50 08
00767260: 8d 48 08 8b 02 ff d0 8b 4c 24 2c 89 4e 20 8b c6
00767270: 5e c2 28 00 8b 54 24 2c 89 56 20 8b c6 5e c2 28
00767280: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00767220 <.text+0x366220>:
  767220:	56                                              	push   esi
  767221:	8b f1                                           	mov    esi,ecx
  767223:	c7 06 1c c9 06 01                               	mov    DWORD PTR [esi],0x106c91c
  767229:	33 c0                                           	xor    eax,eax
  76722b:	8d 4e 04                                        	lea    ecx,[esi+0x4]
  76722e:	87 01                                           	xchg   DWORD PTR [ecx],eax
  767230:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  767234:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  767238:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76723c:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  76723f:	8b 44 24 28                                     	mov    eax,DWORD PTR [esp+0x28]
  767243:	85 c0                                           	test   eax,eax
  767245:	89 56 08                                        	mov    DWORD PTR [esi+0x8],edx
  767248:	c7 46 10 20 93 76 00                            	mov    DWORD PTR [esi+0x10],0x769320
  76724f:	c7 06 fc 7d 00 01                               	mov    DWORD PTR [esi],0x1007dfc
  767255:	89 4e 18                                        	mov    DWORD PTR [esi+0x18],ecx
  767258:	89 46 1c                                        	mov    DWORD PTR [esi+0x1c],eax
  76725b:	74 17                                           	je     0x767274
  76725d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  767260:	8d 48 08                                        	lea    ecx,[eax+0x8]
  767263:	8b 02                                           	mov    eax,DWORD PTR [edx]
  767265:	ff d0                                           	call   eax
  767267:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  76726b:	89 4e 20                                        	mov    DWORD PTR [esi+0x20],ecx
  76726e:	8b c6                                           	mov    eax,esi
  767270:	5e                                              	pop    esi
  767271:	c2 28 00                                        	ret    0x28
  767274:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  767278:	89 56 20                                        	mov    DWORD PTR [esi+0x20],edx
  76727b:	8b c6                                           	mov    eax,esi
  76727d:	5e                                              	pop    esi
  76727e:	c2 28 00                                        	ret    0x28
  767281:	cc                                              	int3
  767282:	cc                                              	int3
  767283:	cc                                              	int3
  767284:	cc                                              	int3
  767285:	cc                                              	int3
  767286:	cc                                              	int3
  767287:	cc                                              	int3
  767288:	cc                                              	int3
  767289:	cc                                              	int3
  76728a:	cc                                              	int3
  76728b:	cc                                              	int3
  76728c:	cc                                              	int3
  76728d:	cc                                              	int3
  76728e:	cc                                              	int3
  76728f:	cc                                              	int3
