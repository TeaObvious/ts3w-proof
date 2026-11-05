# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00767410 (ScriptCore.SACS::SACS_ReleaseDriverImpl)
Paired Ghidra pseudocode: 00767410_ScriptCore_SACS_SACS_ReleaseDriverImpl.c
Window: [0x00767410, 0x00767480) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00767480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00767410: 57 e8 7a 1f 00 00 8b 4c 24 08 8b 10 8b 92 d8 00
00767420: 00 00 51 8b c8 ff d2 8b f8 85 ff 74 4f 56 68 67
00767430: 5d 0c 05 8b cf 33 f6 e8 a4 8b 09 00 85 c0 74 23
00767440: 8b 40 08 56 8b c8 e8 25 a4 e1 ff 85 c0 74 12 8b
00767450: 0d f0 a0 1e 01 51 8b c8 e8 03 ce 1c 00 8b f0 eb
00767460: 02 33 f6 8b 57 08 8b 42 04 8d 4f 08 ff d0 85 f6
00767470: 74 09 8b ce 5e 5f e9 15 5f 1e 00 5e 5f c3 cc cc

LINEAR DISASSEMBLY
00767410 <.text+0x366410>:
  767410:	57                                              	push   edi
  767411:	e8 7a 1f 00 00                                  	call   0x769390
  767416:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76741a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76741c:	8b 92 d8 00 00 00                               	mov    edx,DWORD PTR [edx+0xd8]
  767422:	51                                              	push   ecx
  767423:	8b c8                                           	mov    ecx,eax
  767425:	ff d2                                           	call   edx
  767427:	8b f8                                           	mov    edi,eax
  767429:	85 ff                                           	test   edi,edi
  76742b:	74 4f                                           	je     0x76747c
  76742d:	56                                              	push   esi
  76742e:	68 67 5d 0c 05                                  	push   0x50c5d67
  767433:	8b cf                                           	mov    ecx,edi
  767435:	33 f6                                           	xor    esi,esi
  767437:	e8 a4 8b 09 00                                  	call   0x7fffe0
  76743c:	85 c0                                           	test   eax,eax
  76743e:	74 23                                           	je     0x767463
  767440:	8b 40 08                                        	mov    eax,DWORD PTR [eax+0x8]
  767443:	56                                              	push   esi
  767444:	8b c8                                           	mov    ecx,eax
  767446:	e8 25 a4 e1 ff                                  	call   0x581870
  76744b:	85 c0                                           	test   eax,eax
  76744d:	74 12                                           	je     0x767461
  76744f:	8b 0d f0 a0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea0f0
  767455:	51                                              	push   ecx
  767456:	8b c8                                           	mov    ecx,eax
  767458:	e8 03 ce 1c 00                                  	call   0x934260
  76745d:	8b f0                                           	mov    esi,eax
  76745f:	eb 02                                           	jmp    0x767463
  767461:	33 f6                                           	xor    esi,esi
  767463:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  767466:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  767469:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  76746c:	ff d0                                           	call   eax
  76746e:	85 f6                                           	test   esi,esi
  767470:	74 09                                           	je     0x76747b
  767472:	8b ce                                           	mov    ecx,esi
  767474:	5e                                              	pop    esi
  767475:	5f                                              	pop    edi
  767476:	e9 15 5f 1e 00                                  	jmp    0x94d390
  76747b:	5e                                              	pop    esi
  76747c:	5f                                              	pop    edi
  76747d:	c3                                              	ret
  76747e:	cc                                              	int3
  76747f:	cc                                              	int3
