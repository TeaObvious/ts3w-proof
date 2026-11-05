# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00995250 (ScriptCore.DownloadContent::DownloadContent_DeleteCustomSim)
Paired Ghidra pseudocode: 00995250_ScriptCore_DownloadContent_DownloadContent_DeleteCustomSim.c
Window: [0x00995250, 0x00995290) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00995290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00995250: 83 ec 10 8d 04 24 50 8d 4c 24 18 e8 80 6e dd ff
00995260: e8 fb db fe ff 85 c0 75 06 32 c0 83 c4 10 c3 8b
00995270: 88 64 06 00 00 85 c9 74 f0 8d 14 24 52 e8 7e 46
00995280: 03 00 83 c4 10 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00995250 <.text+0x594250>:
  995250:	83 ec 10                                        	sub    esp,0x10
  995253:	8d 04 24                                        	lea    eax,[esp]
  995256:	50                                              	push   eax
  995257:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  99525b:	e8 80 6e dd ff                                  	call   0x76c0e0
  995260:	e8 fb db fe ff                                  	call   0x982e60
  995265:	85 c0                                           	test   eax,eax
  995267:	75 06                                           	jne    0x99526f
  995269:	32 c0                                           	xor    al,al
  99526b:	83 c4 10                                        	add    esp,0x10
  99526e:	c3                                              	ret
  99526f:	8b 88 64 06 00 00                               	mov    ecx,DWORD PTR [eax+0x664]
  995275:	85 c9                                           	test   ecx,ecx
  995277:	74 f0                                           	je     0x995269
  995279:	8d 14 24                                        	lea    edx,[esp]
  99527c:	52                                              	push   edx
  99527d:	e8 7e 46 03 00                                  	call   0x9c9900
  995282:	83 c4 10                                        	add    esp,0x10
  995285:	c3                                              	ret
  995286:	cc                                              	int3
  995287:	cc                                              	int3
  995288:	cc                                              	int3
  995289:	cc                                              	int3
  99528a:	cc                                              	int3
  99528b:	cc                                              	int3
  99528c:	cc                                              	int3
  99528d:	cc                                              	int3
  99528e:	cc                                              	int3
  99528f:	cc                                              	int3
