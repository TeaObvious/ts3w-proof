# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009965e0 (ScriptCore.DownloadContent::DownloadContent_HideExportBinPackageImpl)
Paired Ghidra pseudocode: 009965E0_ScriptCore_DownloadContent_DownloadContent_HideExportBinPackageImpl.c
Window: [0x009965e0, 0x00996670) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x00996670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009965e0: 83 ec 10 e8 a8 2d dd ff 85 c0 74 71 8b 4c 24 14
009965f0: 8b 10 8b 52 58 53 51 8b c8 ff d2 50 8d 4c 24 08
00996600: c7 44 24 08 00 00 00 00 c7 44 24 0c 00 00 00 00
00996610: c7 44 24 10 00 00 00 00 c7 44 24 14 28 a0 04 01
00996620: e8 6b 4f a7 ff 8b 0d a4 a6 1e 01 8d 44 24 04 50
00996630: e8 2b d7 00 00 8b 4c 24 0c 8a d8 8b 44 24 04 2b
00996640: c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50 e8 8d
00996650: de b4 ff 83 c4 04 8a c3 5b 83 c4 10 c3 32 c0 83
00996660: c4 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009965e0 <.text+0x5955e0>:
  9965e0:	83 ec 10                                        	sub    esp,0x10
  9965e3:	e8 a8 2d dd ff                                  	call   0x769390
  9965e8:	85 c0                                           	test   eax,eax
  9965ea:	74 71                                           	je     0x99665d
  9965ec:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  9965f0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  9965f2:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  9965f5:	53                                              	push   ebx
  9965f6:	51                                              	push   ecx
  9965f7:	8b c8                                           	mov    ecx,eax
  9965f9:	ff d2                                           	call   edx
  9965fb:	50                                              	push   eax
  9965fc:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  996600:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  996608:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  996610:	c7 44 24 10 00 00 00 00                         	mov    DWORD PTR [esp+0x10],0x0
  996618:	c7 44 24 14 28 a0 04 01                         	mov    DWORD PTR [esp+0x14],0x104a028
  996620:	e8 6b 4f a7 ff                                  	call   0x40b590
  996625:	8b 0d a4 a6 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea6a4
  99662b:	8d 44 24 04                                     	lea    eax,[esp+0x4]
  99662f:	50                                              	push   eax
  996630:	e8 2b d7 00 00                                  	call   0x9a3d60
  996635:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  996639:	8a d8                                           	mov    bl,al
  99663b:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  99663f:	2b c8                                           	sub    ecx,eax
  996641:	83 e1 fe                                        	and    ecx,0xfffffffe
  996644:	83 f9 02                                        	cmp    ecx,0x2
  996647:	7e 0d                                           	jle    0x996656
  996649:	85 c0                                           	test   eax,eax
  99664b:	74 09                                           	je     0x996656
  99664d:	50                                              	push   eax
  99664e:	e8 8d de b4 ff                                  	call   0x4e44e0
  996653:	83 c4 04                                        	add    esp,0x4
  996656:	8a c3                                           	mov    al,bl
  996658:	5b                                              	pop    ebx
  996659:	83 c4 10                                        	add    esp,0x10
  99665c:	c3                                              	ret
  99665d:	32 c0                                           	xor    al,al
  99665f:	83 c4 10                                        	add    esp,0x10
  996662:	c3                                              	ret
  996663:	cc                                              	int3
  996664:	cc                                              	int3
  996665:	cc                                              	int3
  996666:	cc                                              	int3
  996667:	cc                                              	int3
  996668:	cc                                              	int3
  996669:	cc                                              	int3
  99666a:	cc                                              	int3
  99666b:	cc                                              	int3
  99666c:	cc                                              	int3
  99666d:	cc                                              	int3
  99666e:	cc                                              	int3
  99666f:	cc                                              	int3
