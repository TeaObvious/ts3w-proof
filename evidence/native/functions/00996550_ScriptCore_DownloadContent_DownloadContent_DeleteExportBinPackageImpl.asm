# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00996550 (ScriptCore.DownloadContent::DownloadContent_DeleteExportBinPackageImpl)
Paired Ghidra pseudocode: 00996550_ScriptCore_DownloadContent_DownloadContent_DeleteExportBinPackageImpl.c
Window: [0x00996550, 0x009965e0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x009965e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00996550: 83 ec 10 e8 38 2e dd ff 85 c0 74 71 8b 4c 24 14
00996560: 8b 10 8b 52 58 53 51 8b c8 ff d2 50 8d 4c 24 08
00996570: c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00
00996580: c7 44 24 10 00 00 00 00 c7 44 24 14 28 a0 04 01
00996590: e8 fb 4f a7 ff 8b 0d a4 a6 1e 01 8d 44 24 04 50
009965a0: e8 eb ca 00 00 8b 4c 24 0c 8a d8 8b 44 24 04 2b
009965b0: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 1d
009965c0: df b4 ff 83 c4 04 8a c3 5b 83 c4 10 c3 32 c0 83
009965d0: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00996550 <.text+0x595550>:
  996550:	83 ec 10                                        	sub    esp,0x10
  996553:	e8 38 2e dd ff                                  	call   0x769390
  996558:	85 c0                                           	test   eax,eax
  99655a:	74 71                                           	je     0x9965cd
  99655c:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  996560:	8b 10                                           	mov    edx,DWORD PTR [eax]
  996562:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  996565:	53                                              	push   ebx
  996566:	51                                              	push   ecx
  996567:	8b c8                                           	mov    ecx,eax
  996569:	ff d2                                           	call   edx
  99656b:	50                                              	push   eax
  99656c:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  996570:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  996578:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  996580:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  996588:	c7 44 24 14 28 a0 04 01                         	mov    DWORD PTR [esp+0x14],0x104a028
  996590:	e8 fb 4f a7 ff                                  	call   0x40b590
  996595:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  99659b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  99659f:	50                                              	push   eax
  9965a0:	e8 eb ca 00 00                                  	call   0x9a3090
  9965a5:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  9965a9:	8a d8                                           	mov    bl,al
  9965ab:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  9965af:	2b c8                                           	sub    ecx,eax
  9965b1:	83 e1 fe                                        	and    ecx,0xfffffffe
  9965b4:	83 f9 02                                        	cmp    ecx,0x2
  9965b7:	7e 0d                                           	jle    0x9965c6
  9965b9:	85 c0                                           	test   eax,eax
  9965bb:	74 09                                           	je     0x9965c6
  9965bd:	50                                              	push   eax
  9965be:	e8 1d df b4 ff                                  	call   0x4e44e0
  9965c3:	83 c4 04                                        	add    esp,0x4
  9965c6:	8a c3                                           	mov    al,bl
  9965c8:	5b                                              	pop    ebx
  9965c9:	83 c4 10                                        	add    esp,0x10
  9965cc:	c3                                              	ret
  9965cd:	32 c0                                           	xor    al,al
  9965cf:	83 c4 10                                        	add    esp,0x10
  9965d2:	c3                                              	ret
  9965d3:	cc                                              	int3
  9965d4:	cc                                              	int3
  9965d5:	cc                                              	int3
  9965d6:	cc                                              	int3
  9965d7:	cc                                              	int3
  9965d8:	cc                                              	int3
  9965d9:	cc                                              	int3
  9965da:	cc                                              	int3
  9965db:	cc                                              	int3
  9965dc:	cc                                              	int3
  9965dd:	cc                                              	int3
  9965de:	cc                                              	int3
  9965df:	cc                                              	int3
