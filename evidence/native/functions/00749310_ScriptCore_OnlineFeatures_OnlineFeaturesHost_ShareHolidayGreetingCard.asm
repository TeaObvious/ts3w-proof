# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749310 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_ShareHolidayGreetingCard)
Paired Ghidra pseudocode: 00749310_ScriptCore_OnlineFeatures_OnlineFeaturesHost_ShareHolidayGreetingCard.c
Window: [0x00749310, 0x00749360) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749360
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749310: 8b 44 24 24 8b 4c 24 20 8b 54 24 1c 50 6a 00 6a
00749320: 00 6a 00 51 8b 4c 24 20 52 8b 54 24 28 83 ec 10
00749330: 8b c4 89 08 8b 4c 24 3c 89 50 04 8b 54 24 40 89
00749340: 48 08 8b 4c 24 2c 89 50 0c 8b 44 24 30 50 51 6a
00749350: 01 e8 ba f8 ff ff 83 c4 34 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00749310 <.text+0x348310>:
  749310:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  749314:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  749318:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  74931c:	50                                              	push   eax
  74931d:	6a 00                                           	push   0x0
  74931f:	6a 00                                           	push   0x0
  749321:	6a 00                                           	push   0x0
  749323:	51                                              	push   ecx
  749324:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  749328:	52                                              	push   edx
  749329:	8b 54 24 28                                     	mov    edx,DWORD PTR [esp+0x28]
  74932d:	83 ec 10                                        	sub    esp,0x10
  749330:	8b c4                                           	mov    eax,esp
  749332:	89 08                                           	mov    DWORD PTR [eax],ecx
  749334:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  749338:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  74933b:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  74933f:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  749342:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  749346:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  749349:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  74934d:	50                                              	push   eax
  74934e:	51                                              	push   ecx
  74934f:	6a 01                                           	push   0x1
  749351:	e8 ba f8 ff ff                                  	call   0x748c10
  749356:	83 c4 34                                        	add    esp,0x34
  749359:	c3                                              	ret
  74935a:	cc                                              	int3
  74935b:	cc                                              	int3
  74935c:	cc                                              	int3
  74935d:	cc                                              	int3
  74935e:	cc                                              	int3
  74935f:	cc                                              	int3
