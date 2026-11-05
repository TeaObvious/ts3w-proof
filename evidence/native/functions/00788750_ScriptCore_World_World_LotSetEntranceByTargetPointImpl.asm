# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00788750 (ScriptCore.World::World_LotSetEntranceByTargetPointImpl)
Paired Ghidra pseudocode: 00788750_ScriptCore_World_World_LotSetEntranceByTargetPointImpl.c
Window: [0x00788750, 0x00788840) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00788840
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00788750: 55 8b ec 83 e4 f0 83 ec 64 53 56 57 e8 8f 05 0a
00788760: 00 85 c0 0f 84 c8 00 00 00 8b c8 e8 50 0e 0a 00
00788770: 85 c0 89 44 24 0c 0f 84 b5 00 00 00 8b 0d c4 db
00788780: 1e 01 85 c9 0f 84 a7 00 00 00 8b 7d 0c 8b 5d 08
00788790: 6a 00 57 53 e8 77 a0 4d 00 8b f0 85 f6 0f 84 8e
007887a0: 00 00 00 8d 44 24 30 50 8b ce e8 61 8e 32 00 f3
007887b0: 0f 10 4d 1c f3 0f 10 45 14 0f 28 10 0f 28 58 10
007887c0: 8b 55 10 f3 0f 11 4c 24 18 f3 0f 10 4d 18 f3 0f
007887d0: 11 4c 24 14 f3 0f 11 44 24 1c f3 0f 11 44 24 10
007887e0: 0f 28 44 24 10 0f 28 c8 0f c6 c8 00 0f 59 ca 0f
007887f0: 28 50 30 0f 58 ca 0f 28 d0 0f c6 d0 55 0f 59 d3
00788800: 0f 58 ca 8d 4c 24 20 51 8b 4c 24 10 0f 28 d0 52
00788810: 0f c6 d0 aa 0f 28 40 20 57 0f 59 d0 0f 58 ca 53
00788820: 0f 29 4c 24 30 e8 16 57 eb ff 8b ce e8 6f 39 33
00788830: 00 5f 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00788750 <.text+0x387750>:
  788750:	55                                              	push   ebp
  788751:	8b ec                                           	mov    ebp,esp
  788753:	83 e4 f0                                        	and    esp,0xfffffff0
  788756:	83 ec 64                                        	sub    esp,0x64
  788759:	53                                              	push   ebx
  78875a:	56                                              	push   esi
  78875b:	57                                              	push   edi
  78875c:	e8 8f 05 0a 00                                  	call   0x828cf0
  788761:	85 c0                                           	test   eax,eax
  788763:	0f 84 c8 00 00 00                               	je     0x788831
  788769:	8b c8                                           	mov    ecx,eax
  78876b:	e8 50 0e 0a 00                                  	call   0x8295c0
  788770:	85 c0                                           	test   eax,eax
  788772:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  788776:	0f 84 b5 00 00 00                               	je     0x788831
  78877c:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  788782:	85 c9                                           	test   ecx,ecx
  788784:	0f 84 a7 00 00 00                               	je     0x788831
  78878a:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  78878d:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  788790:	6a 00                                           	push   0x0
  788792:	57                                              	push   edi
  788793:	53                                              	push   ebx
  788794:	e8 77 a0 4d 00                                  	call   0xc62810
  788799:	8b f0                                           	mov    esi,eax
  78879b:	85 f6                                           	test   esi,esi
  78879d:	0f 84 8e 00 00 00                               	je     0x788831
  7887a3:	8d 44 24 30                                     	lea    eax,[esp+0x30]
  7887a7:	50                                              	push   eax
  7887a8:	8b ce                                           	mov    ecx,esi
  7887aa:	e8 61 8e 32 00                                  	call   0xab1610
  7887af:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  7887b4:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  7887b9:	0f 28 10                                        	movaps xmm2,XMMWORD PTR [eax]
  7887bc:	0f 28 58 10                                     	movaps xmm3,XMMWORD PTR [eax+0x10]
  7887c0:	8b 55 10                                        	mov    edx,DWORD PTR [ebp+0x10]
  7887c3:	f3 0f 11 4c 24 18                               	movss  DWORD PTR [esp+0x18],xmm1
  7887c9:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  7887ce:	f3 0f 11 4c 24 14                               	movss  DWORD PTR [esp+0x14],xmm1
  7887d4:	f3 0f 11 44 24 1c                               	movss  DWORD PTR [esp+0x1c],xmm0
  7887da:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  7887e0:	0f 28 44 24 10                                  	movaps xmm0,XMMWORD PTR [esp+0x10]
  7887e5:	0f 28 c8                                        	movaps xmm1,xmm0
  7887e8:	0f c6 c8 00                                     	shufps xmm1,xmm0,0x0
  7887ec:	0f 59 ca                                        	mulps  xmm1,xmm2
  7887ef:	0f 28 50 30                                     	movaps xmm2,XMMWORD PTR [eax+0x30]
  7887f3:	0f 58 ca                                        	addps  xmm1,xmm2
  7887f6:	0f 28 d0                                        	movaps xmm2,xmm0
  7887f9:	0f c6 d0 55                                     	shufps xmm2,xmm0,0x55
  7887fd:	0f 59 d3                                        	mulps  xmm2,xmm3
  788800:	0f 58 ca                                        	addps  xmm1,xmm2
  788803:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  788807:	51                                              	push   ecx
  788808:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78880c:	0f 28 d0                                        	movaps xmm2,xmm0
  78880f:	52                                              	push   edx
  788810:	0f c6 d0 aa                                     	shufps xmm2,xmm0,0xaa
  788814:	0f 28 40 20                                     	movaps xmm0,XMMWORD PTR [eax+0x20]
  788818:	57                                              	push   edi
  788819:	0f 59 d0                                        	mulps  xmm2,xmm0
  78881c:	0f 58 ca                                        	addps  xmm1,xmm2
  78881f:	53                                              	push   ebx
  788820:	0f 29 4c 24 30                                  	movaps XMMWORD PTR [esp+0x30],xmm1
  788825:	e8 16 57 eb ff                                  	call   0x63df40
  78882a:	8b ce                                           	mov    ecx,esi
  78882c:	e8 6f 39 33 00                                  	call   0xabc1a0
  788831:	5f                                              	pop    edi
  788832:	5e                                              	pop    esi
  788833:	5b                                              	pop    ebx
  788834:	8b e5                                           	mov    esp,ebp
  788836:	5d                                              	pop    ebp
  788837:	c3                                              	ret
  788838:	cc                                              	int3
  788839:	cc                                              	int3
  78883a:	cc                                              	int3
  78883b:	cc                                              	int3
  78883c:	cc                                              	int3
  78883d:	cc                                              	int3
  78883e:	cc                                              	int3
  78883f:	cc                                              	int3
