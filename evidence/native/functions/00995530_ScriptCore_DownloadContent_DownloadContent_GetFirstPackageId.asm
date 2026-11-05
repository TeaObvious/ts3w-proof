# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995530 (ScriptCore.DownloadContent::DownloadContent_GetFirstPackageId)
Paired Ghidra pseudocode: 00995530_ScriptCore_DownloadContent_DownloadContent_GetFirstPackageId.c
Window: [0x00995530, 0x009955a0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x009955a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995530: 83 ec 20 53 56 32 db e8 24 b7 01 00 8b f0 85 f6
00995540: 74 47 8d 4c 24 08 e8 b5 b6 b6 ff 8d 44 24 08 50
00995550: 8b ce e8 79 b0 01 00 8a d8 84 db 74 2c 8d 4c 24
00995560: 08 51 8d 54 24 1c 52 e8 b4 6a dd ff 8b 10 8b 4c
00995570: 24 34 89 11 8b 50 04 89 51 04 8b 50 08 89 51 08
00995580: 8b 40 0c 83 c4 08 89 41 0c 5e 8a c3 5b 83 c4 20
00995590: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995530 <.text+0x594530>:
  995530:	83 ec 20                                        	sub    esp,0x20
  995533:	53                                              	push   ebx
  995534:	56                                              	push   esi
  995535:	32 db                                           	xor    bl,bl
  995537:	e8 24 b7 01 00                                  	call   0x9b0c60
  99553c:	8b f0                                           	mov    esi,eax
  99553e:	85 f6                                           	test   esi,esi
  995540:	74 47                                           	je     0x995589
  995542:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  995546:	e8 b5 b6 b6 ff                                  	call   0x500c00
  99554b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  99554f:	50                                              	push   eax
  995550:	8b ce                                           	mov    ecx,esi
  995552:	e8 79 b0 01 00                                  	call   0x9b05d0
  995557:	8a d8                                           	mov    bl,al
  995559:	84 db                                           	test   bl,bl
  99555b:	74 2c                                           	je     0x995589
  99555d:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  995561:	51                                              	push   ecx
  995562:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  995566:	52                                              	push   edx
  995567:	e8 b4 6a dd ff                                  	call   0x76c020
  99556c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  99556e:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  995572:	89 11                                           	mov    DWORD PTR [ecx],edx
  995574:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  995577:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  99557a:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  99557d:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  995580:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  995583:	83 c4 08                                        	add    esp,0x8
  995586:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  995589:	5e                                              	pop    esi
  99558a:	8a c3                                           	mov    al,bl
  99558c:	5b                                              	pop    ebx
  99558d:	83 c4 20                                        	add    esp,0x20
  995590:	c3                                              	ret
  995591:	cc                                              	int3
  995592:	cc                                              	int3
  995593:	cc                                              	int3
  995594:	cc                                              	int3
  995595:	cc                                              	int3
  995596:	cc                                              	int3
  995597:	cc                                              	int3
  995598:	cc                                              	int3
  995599:	cc                                              	int3
  99559a:	cc                                              	int3
  99559b:	cc                                              	int3
  99559c:	cc                                              	int3
  99559d:	cc                                              	int3
  99559e:	cc                                              	int3
  99559f:	cc                                              	int3
