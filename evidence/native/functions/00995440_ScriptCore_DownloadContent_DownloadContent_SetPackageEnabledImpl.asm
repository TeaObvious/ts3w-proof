# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995440 (ScriptCore.DownloadContent::DownloadContent_SetPackageEnabledImpl)
Paired Ghidra pseudocode: 00995440_ScriptCore_DownloadContent_DownloadContent_SetPackageEnabledImpl.c
Window: [0x00995440, 0x00995490) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995490
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995440: 83 ec 10 56 8d 44 24 04 50 8d 4c 24 1c e8 9e 6b
00995450: dd ff e8 09 da fe ff 8b f0 85 f6 74 20 8b 4c 24
00995460: 28 51 83 ec 10 8d 54 24 18 8b cc 52 e8 1f b8 b6
00995470: ff 8b ce e8 18 30 ff ff 5e 83 c4 10 c3 b8 01 00
00995480: 00 00 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995440 <.text+0x594440>:
  995440:	83 ec 10                                        	sub    esp,0x10
  995443:	56                                              	push   esi
  995444:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  995448:	50                                              	push   eax
  995449:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  99544d:	e8 9e 6b dd ff                                  	call   0x76bff0
  995452:	e8 09 da fe ff                                  	call   0x982e60
  995457:	8b f0                                           	mov    esi,eax
  995459:	85 f6                                           	test   esi,esi
  99545b:	74 20                                           	je     0x99547d
  99545d:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  995461:	51                                              	push   ecx
  995462:	83 ec 10                                        	sub    esp,0x10
  995465:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  995469:	8b cc                                           	mov    ecx,esp
  99546b:	52                                              	push   edx
  99546c:	e8 1f b8 b6 ff                                  	call   0x500c90
  995471:	8b ce                                           	mov    ecx,esi
  995473:	e8 18 30 ff ff                                  	call   0x988490
  995478:	5e                                              	pop    esi
  995479:	83 c4 10                                        	add    esp,0x10
  99547c:	c3                                              	ret
  99547d:	b8 01 00 00 00                                  	mov    eax,0x1
  995482:	5e                                              	pop    esi
  995483:	83 c4 10                                        	add    esp,0x10
  995486:	c3                                              	ret
  995487:	cc                                              	int3
  995488:	cc                                              	int3
  995489:	cc                                              	int3
  99548a:	cc                                              	int3
  99548b:	cc                                              	int3
  99548c:	cc                                              	int3
  99548d:	cc                                              	int3
  99548e:	cc                                              	int3
  99548f:	cc                                              	int3
