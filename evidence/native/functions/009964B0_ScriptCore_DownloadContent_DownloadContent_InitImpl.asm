# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009964b0 (ScriptCore.DownloadContent::DownloadContent_InitImpl)
Paired Ghidra pseudocode: 009964B0_ScriptCore_DownloadContent_DownloadContent_InitImpl.c
Window: [0x009964b0, 0x00996550) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996550
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009964b0: e8 8b 8c d9 ff 85 c0 0f 84 8c 00 00 00 8b 10 8b
009964c0: c8 8b 42 24 ff d0 66 83 38 00 8b c8 74 0b 8b ff
009964d0: 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 8d 0c 48
009964e0: 51 50 b9 00 16 18 01 e8 74 28 a7 ff 68 00 16 18
009964f0: 01 e8 2a 7f b5 ff 68 d0 8f 04 01 68 ac 8f 04 01
00996500: 68 50 27 fc 00 e8 56 47 bf ff 83 c4 10 66 83 38
00996510: 00 8b c8 74 09 83 c1 02 66 83 39 00 75 f7 2b c8
00996520: d1 f9 8d 14 48 52 50 b9 00 16 18 01 e8 5f 26 a7
00996530: ff 68 00 16 18 01 e8 e5 7e b5 ff a1 00 16 18 01
00996540: 50 e8 aa 6d b4 ff 83 c4 08 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
009964b0 <.text+0x5954b0>:
  9964b0:	e8 8b 8c d9 ff                                  	call   0x72f140
  9964b5:	85 c0                                           	test   eax,eax
  9964b7:	0f 84 8c 00 00 00                               	je     0x996549
  9964bd:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9964bf:	8b c8                                           	mov    ecx,eax
  9964c1:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  9964c4:	ff d0                                           	call   eax
  9964c6:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  9964ca:	8b c8                                           	mov    ecx,eax
  9964cc:	74 0b                                           	je     0x9964d9
  9964ce:	8b ff                                           	mov    edi,edi
  9964d0:	83 c1 02                                        	add    ecx,0x2
  9964d3:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  9964d7:	75 f7                                           	jne    0x9964d0
  9964d9:	2b c8                                           	sub    ecx,eax
  9964db:	d1 f9                                           	sar    ecx,1
  9964dd:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  9964e0:	51                                              	push   ecx
  9964e1:	50                                              	push   eax
  9964e2:	b9 00 16 18 01                                  	mov    ecx,0x1181600
  9964e7:	e8 74 28 a7 ff                                  	call   0x408d60
  9964ec:	68 00 16 18 01                                  	push   0x1181600
  9964f1:	e8 2a 7f b5 ff                                  	call   0x4ee420
  9964f6:	68 d0 8f 04 01                                  	push   0x1048fd0
  9964fb:	68 ac 8f 04 01                                  	push   0x1048fac
  996500:	68 50 27 fc 00                                  	push   0xfc2750
  996505:	e8 56 47 bf ff                                  	call   0x58ac60
  99650a:	83 c4 10                                        	add    esp,0x10
  99650d:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  996511:	8b c8                                           	mov    ecx,eax
  996513:	74 09                                           	je     0x99651e
  996515:	83 c1 02                                        	add    ecx,0x2
  996518:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  99651c:	75 f7                                           	jne    0x996515
  99651e:	2b c8                                           	sub    ecx,eax
  996520:	d1 f9                                           	sar    ecx,1
  996522:	8d 14 48                                        	lea    edx,[eax+ecx*2]
  996525:	52                                              	push   edx
  996526:	50                                              	push   eax
  996527:	b9 00 16 18 01                                  	mov    ecx,0x1181600
  99652c:	e8 5f 26 a7 ff                                  	call   0x408b90
  996531:	68 00 16 18 01                                  	push   0x1181600
  996536:	e8 e5 7e b5 ff                                  	call   0x4ee420
  99653b:	a1 00 16 18 01                                  	mov    eax,ds:0x1181600
  996540:	50                                              	push   eax
  996541:	e8 aa 6d b4 ff                                  	call   0x4dd2f0
  996546:	83 c4 08                                        	add    esp,0x8
  996549:	c3                                              	ret
  99654a:	cc                                              	int3
  99654b:	cc                                              	int3
  99654c:	cc                                              	int3
  99654d:	cc                                              	int3
  99654e:	cc                                              	int3
  99654f:	cc                                              	int3
