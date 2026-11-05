TS3W PC 1.67; original identity: evidence/reference.json.
Saved Ghidra evidence; current name: InitializeFrameDrawable.
Original instruction/byte blocks and ownership qualifications are unchanged.
Generated types and signatures remain projections; consult the machine instructions.

TS3W.exe PC1.67 — InitializeFrameDrawable (analyst-assigned role)
Paired actual annotated Ghidra C: 00523830_InitializeFrameDrawable.c
Existing owned contiguous body00523830..005238A6 inclusive:119bytes29instructions.
Independent PE decode, actual saved Listing and live119byte memory agree.
No bytes/boundaries/signatures changed; no original runtime execution claimed.
Data: primaryvtableFBD968, source Float32 constantF998F8; see paired guide/data TSVs.

ORIGINAL BYTES
00523830: f3 0f 10 05 f8 98 f9 00 8b c1 c7 40 04 fc b1 fb
00523840: 00 c7 00 68 d9 fb 00 c7 40 04 50 d9 fb 00 33 c9
00523850: 89 48 08 f3 0f 11 40 4c f3 0f 11 40 50 f3 0f 11
00523860: 40 54 f3 0f 11 40 58 c7 40 5c 00 00 00 ff 89 48
00523870: 18 89 48 14 89 48 20 89 48 1c 89 48 28 89 48 24
00523880: 89 48 30 89 48 2c 89 48 38 89 48 34 89 48 40 89
00523890: 48 3c 89 48 48 89 48 44 c7 40 10 ff ff ff ff c7
005238A0: 40 0c 02 00 00 00 c3

SAVED GHIDRA LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: InitializeFrameDrawable
Entry Point: 00523830

00523830: MOVSS XMM0, dword ptr [0x00f998f8]
00523838: MOV EAX, ECX
0052383a: MOV dword ptr [EAX + 0x4], 0xfbb1fc
00523841: MOV dword ptr [EAX], 0xfbd968 ; Install primary vtableFBD968; its slot+C points to query-provider candidate522C10.
00523847: MOV dword ptr [EAX + 0x4], 0xfbd950
0052384e: XOR ECX, ECX
00523850: MOV dword ptr [EAX + 0x8], ECX
00523853: MOVSS dword ptr [EAX + 0x4c], XMM0 ; Store Float32 1.0 at+4C, followed by same raw3F800000 at+50/+54/+58; property role remains unproved.
00523858: MOVSS dword ptr [EAX + 0x50], XMM0
0052385d: MOVSS dword ptr [EAX + 0x54], XMM0
00523862: MOVSS dword ptr [EAX + 0x58], XMM0
00523867: MOV dword ptr [EAX + 0x5c], 0xff000000 ; Raw DWORD+5C=FF000000; do not infer OutlineColor role without property-reader evidence.
0052386e: MOV dword ptr [EAX + 0x18], ECX ; Seven later8byte state rows+14..48 are zeroed as pairedDWORD stores; no inheritance/fallback semantics proved.
00523871: MOV dword ptr [EAX + 0x14], ECX
00523874: MOV dword ptr [EAX + 0x20], ECX
00523877: MOV dword ptr [EAX + 0x1c], ECX
0052387a: MOV dword ptr [EAX + 0x28], ECX
0052387d: MOV dword ptr [EAX + 0x24], ECX
00523880: MOV dword ptr [EAX + 0x30], ECX
00523883: MOV dword ptr [EAX + 0x2c], ECX
00523886: MOV dword ptr [EAX + 0x38], ECX
00523889: MOV dword ptr [EAX + 0x34], ECX
0052388c: MOV dword ptr [EAX + 0x40], ECX
0052388f: MOV dword ptr [EAX + 0x3c], ECX
00523892: MOV dword ptr [EAX + 0x48], ECX
00523895: MOV dword ptr [EAX + 0x44], ECX
00523898: MOV dword ptr [EAX + 0x10], 0xffffffff ; Normal-state color word at+10=FFFFFFFF; frontend funcID2/3 reads/writes this offset plus8*state.
0052389f: MOV dword ptr [EAX + 0xc], 0x2 ; Normal-state style word at+C=2, matching original BorderStyle.Solid; frontend funcID0/1 uses this offset.
005238a6: RET

Total instructions: 29

INDEPENDENT PE DISASSEMBLY
  523830:	f3 0f 10 05 f8 98 f9 00                         	movss  xmm0,DWORD PTR ds:0xf998f8
  523838:	8b c1                                           	mov    eax,ecx
  52383a:	c7 40 04 fc b1 fb 00                            	mov    DWORD PTR [eax+0x4],0xfbb1fc
  523841:	c7 00 68 d9 fb 00                               	mov    DWORD PTR [eax],0xfbd968
  523847:	c7 40 04 50 d9 fb 00                            	mov    DWORD PTR [eax+0x4],0xfbd950
  52384e:	33 c9                                           	xor    ecx,ecx
  523850:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  523853:	f3 0f 11 40 4c                                  	movss  DWORD PTR [eax+0x4c],xmm0
  523858:	f3 0f 11 40 50                                  	movss  DWORD PTR [eax+0x50],xmm0
  52385d:	f3 0f 11 40 54                                  	movss  DWORD PTR [eax+0x54],xmm0
  523862:	f3 0f 11 40 58                                  	movss  DWORD PTR [eax+0x58],xmm0
  523867:	c7 40 5c 00 00 00 ff                            	mov    DWORD PTR [eax+0x5c],0xff000000
  52386e:	89 48 18                                        	mov    DWORD PTR [eax+0x18],ecx
  523871:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  523874:	89 48 20                                        	mov    DWORD PTR [eax+0x20],ecx
  523877:	89 48 1c                                        	mov    DWORD PTR [eax+0x1c],ecx
  52387a:	89 48 28                                        	mov    DWORD PTR [eax+0x28],ecx
  52387d:	89 48 24                                        	mov    DWORD PTR [eax+0x24],ecx
  523880:	89 48 30                                        	mov    DWORD PTR [eax+0x30],ecx
  523883:	89 48 2c                                        	mov    DWORD PTR [eax+0x2c],ecx
  523886:	89 48 38                                        	mov    DWORD PTR [eax+0x38],ecx
  523889:	89 48 34                                        	mov    DWORD PTR [eax+0x34],ecx
  52388c:	89 48 40                                        	mov    DWORD PTR [eax+0x40],ecx
  52388f:	89 48 3c                                        	mov    DWORD PTR [eax+0x3c],ecx
  523892:	89 48 48                                        	mov    DWORD PTR [eax+0x48],ecx
  523895:	89 48 44                                        	mov    DWORD PTR [eax+0x44],ecx
  523898:	c7 40 10 ff ff ff ff                            	mov    DWORD PTR [eax+0x10],0xffffffff
  52389f:	c7 40 0c 02 00 00 00                            	mov    DWORD PTR [eax+0xc],0x2
  5238a6:	c3                                              	ret
