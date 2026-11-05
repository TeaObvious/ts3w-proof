# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007672d0 (ConstructSACSNativeDescriptor)
Paired Ghidra pseudocode: 007672D0_ConstructSACSNativeDescriptor.c
Window: [0x007672d0, 0x00767350) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767350
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007672d0: 53 56 57 8b f9 c7 07 a8 7d 00 01 89 3d b4 5b 1d
007672e0: 01 e8 4a c6 e2 ff 6a 00 6a 00 6a 00 6a 00 68 40
007672f0: 7e 00 01 6a 18 8b d8 e8 04 d2 d7 ff 8b f0 83 c4
00767300: 18 85 f6 74 2c 68 77 d3 ab 78 68 2c 7e 00 01 68
00767310: 10 7e 00 01 8b ce e8 e5 cc 06 00 c7 06 ec 7d 00
00767320: 01 c7 46 04 dc 7d 00 01 c7 46 08 bc 7d 00 01 eb
00767330: 02 33 f6 89 35 b8 5b 1d 01 8b 03 8b 50 10 6a 00
00767340: 56 8b cb ff d2 8b c7 5f 5e 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007672d0 <.text+0x3662d0>:
  7672d0:	53                                              	push   ebx
  7672d1:	56                                              	push   esi
  7672d2:	57                                              	push   edi
  7672d3:	8b f9                                           	mov    edi,ecx
  7672d5:	c7 07 a8 7d 00 01                               	mov    DWORD PTR [edi],0x1007da8
  7672db:	89 3d b4 5b 1d 01                               	mov    DWORD PTR ds:0x11d5bb4,edi
  7672e1:	e8 4a c6 e2 ff                                  	call   0x593930
  7672e6:	6a 00                                           	push   0x0
  7672e8:	6a 00                                           	push   0x0
  7672ea:	6a 00                                           	push   0x0
  7672ec:	6a 00                                           	push   0x0
  7672ee:	68 40 7e 00 01                                  	push   0x1007e40
  7672f3:	6a 18                                           	push   0x18
  7672f5:	8b d8                                           	mov    ebx,eax
  7672f7:	e8 04 d2 d7 ff                                  	call   0x4e4500
  7672fc:	8b f0                                           	mov    esi,eax
  7672fe:	83 c4 18                                        	add    esp,0x18
  767301:	85 f6                                           	test   esi,esi
  767303:	74 2c                                           	je     0x767331
  767305:	68 77 d3 ab 78                                  	push   0x78abd377
  76730a:	68 2c 7e 00 01                                  	push   0x1007e2c
  76730f:	68 10 7e 00 01                                  	push   0x1007e10
  767314:	8b ce                                           	mov    ecx,esi
  767316:	e8 e5 cc 06 00                                  	call   0x7d4000
  76731b:	c7 06 ec 7d 00 01                               	mov    DWORD PTR [esi],0x1007dec
  767321:	c7 46 04 dc 7d 00 01                            	mov    DWORD PTR [esi+0x4],0x1007ddc
  767328:	c7 46 08 bc 7d 00 01                            	mov    DWORD PTR [esi+0x8],0x1007dbc
  76732f:	eb 02                                           	jmp    0x767333
  767331:	33 f6                                           	xor    esi,esi
  767333:	89 35 b8 5b 1d 01                               	mov    DWORD PTR ds:0x11d5bb8,esi
  767339:	8b 03                                           	mov    eax,DWORD PTR [ebx]
  76733b:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  76733e:	6a 00                                           	push   0x0
  767340:	56                                              	push   esi
  767341:	8b cb                                           	mov    ecx,ebx
  767343:	ff d2                                           	call   edx
  767345:	8b c7                                           	mov    eax,edi
  767347:	5f                                              	pop    edi
  767348:	5e                                              	pop    esi
  767349:	5b                                              	pop    ebx
  76734a:	c3                                              	ret
  76734b:	cc                                              	int3
  76734c:	cc                                              	int3
  76734d:	cc                                              	int3
  76734e:	cc                                              	int3
  76734f:	cc                                              	int3
