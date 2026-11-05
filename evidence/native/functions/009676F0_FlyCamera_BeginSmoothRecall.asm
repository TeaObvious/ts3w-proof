# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x009676f0 (FlyCamera_BeginSmoothRecall)
Paired Ghidra pseudocode: 009676F0_FlyCamera_BeginSmoothRecall.c
Window: [0x009676f0, 0x00967760) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00967760
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
009676f0: 55 8b ec 83 e4 f0 83 ec 24 8b 45 08 53 8b 5d 0c
00967700: 56 57 53 8b f1 50 8d 4c 24 18 51 8b ce e8 0e fe
00967710: ff ff d9 45 10 8b 96 70 05 00 00 8b 06 51 d9 1c
00967720: 24 8d be 70 05 00 00 53 8d 4c 24 28 89 54 24 14
00967730: 8b 50 30 51 8b ce ff d2 8b 54 24 14 50 8d 44 24
00967740: 1c 50 8b 42 08 81 c6 00 06 00 00 56 8b cf ff d0
00967750: 5f 5e 5b 8b e5 5d c2 0c 00 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
009676f0 <.text+0x5666f0>:
  9676f0:	55                                              	push   ebp
  9676f1:	8b ec                                           	mov    ebp,esp
  9676f3:	83 e4 f0                                        	and    esp,0xfffffff0
  9676f6:	83 ec 24                                        	sub    esp,0x24
  9676f9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  9676fc:	53                                              	push   ebx
  9676fd:	8b 5d 0c                                        	mov    ebx,DWORD PTR [ebp+0xc]
  967700:	56                                              	push   esi
  967701:	57                                              	push   edi
  967702:	53                                              	push   ebx
  967703:	8b f1                                           	mov    esi,ecx
  967705:	50                                              	push   eax
  967706:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  96770a:	51                                              	push   ecx
  96770b:	8b ce                                           	mov    ecx,esi
  96770d:	e8 0e fe ff ff                                  	call   0x967520
  967712:	d9 45 10                                        	fld    DWORD PTR [ebp+0x10]
  967715:	8b 96 70 05 00 00                               	mov    edx,DWORD PTR [esi+0x570]
  96771b:	8b 06                                           	mov    eax,DWORD PTR [esi]
  96771d:	51                                              	push   ecx
  96771e:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  967721:	8d be 70 05 00 00                               	lea    edi,[esi+0x570]
  967727:	53                                              	push   ebx
  967728:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  96772c:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  967730:	8b 50 30                                        	mov    edx,DWORD PTR [eax+0x30]
  967733:	51                                              	push   ecx
  967734:	8b ce                                           	mov    ecx,esi
  967736:	ff d2                                           	call   edx
  967738:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  96773c:	50                                              	push   eax
  96773d:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  967741:	50                                              	push   eax
  967742:	8b 42 08                                        	mov    eax,DWORD PTR [edx+0x8]
  967745:	81 c6 00 06 00 00                               	add    esi,0x600
  96774b:	56                                              	push   esi
  96774c:	8b cf                                           	mov    ecx,edi
  96774e:	ff d0                                           	call   eax
  967750:	5f                                              	pop    edi
  967751:	5e                                              	pop    esi
  967752:	5b                                              	pop    ebx
  967753:	8b e5                                           	mov    esp,ebp
  967755:	5d                                              	pop    ebp
  967756:	c2 0c 00                                        	ret    0xc
  967759:	cc                                              	int3
  96775a:	cc                                              	int3
  96775b:	cc                                              	int3
  96775c:	cc                                              	int3
  96775d:	cc                                              	int3
  96775e:	cc                                              	int3
  96775f:	cc                                              	int3
