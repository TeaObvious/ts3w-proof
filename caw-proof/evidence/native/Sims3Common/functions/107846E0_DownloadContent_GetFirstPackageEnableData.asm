# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x107846e0 (DownloadContent_GetFirstPackageEnableData)
Paired Ghidra pseudocode: 107846E0_DownloadContent_GetFirstPackageEnableData.c
Window: [0x107846e0, 0x10784750) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x10784750
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
107846e0: 83 ec 20 53 56 32 db e8 f4 b1 01 00 8b f0 85 f6
107846f0: 74 4c 8d 4c 24 08 e8 75 ee 1a 00 8b 44 24 30 50
10784700: 8d 4c 24 0c 51 8b ce e8 64 b0 01 00 8a d8 84 db
10784710: 74 2c 8d 54 24 08 52 8d 44 24 1c 50 e8 cf 93 dd
10784720: ff 8b 10 8b 4c 24 34 89 11 8b 50 04 89 51 04 8b
10784730: 50 08 89 51 08 8b 40 0c 83 c4 08 89 41 0c 5e 8a
10784740: c3 5b 83 c4 20 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
107846e0 <.text+0x7836e0>:
107846e0:	83 ec 20                                        	sub    esp,0x20
107846e3:	53                                              	push   ebx
107846e4:	56                                              	push   esi
107846e5:	32 db                                           	xor    bl,bl
107846e7:	e8 f4 b1 01 00                                  	call   0x1079f8e0
107846ec:	8b f0                                           	mov    esi,eax
107846ee:	85 f6                                           	test   esi,esi
107846f0:	74 4c                                           	je     0x1078473e
107846f2:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
107846f6:	e8 75 ee 1a 00                                  	call   0x10933570
107846fb:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
107846ff:	50                                              	push   eax
10784700:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10784704:	51                                              	push   ecx
10784705:	8b ce                                           	mov    ecx,esi
10784707:	e8 64 b0 01 00                                  	call   0x1079f770
1078470c:	8a d8                                           	mov    bl,al
1078470e:	84 db                                           	test   bl,bl
10784710:	74 2c                                           	je     0x1078473e
10784712:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10784716:	52                                              	push   edx
10784717:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
1078471b:	50                                              	push   eax
1078471c:	e8 cf 93 dd ff                                  	call   0x1055daf0
10784721:	8b 10                                           	mov    edx,DWORD PTR [eax]
10784723:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
10784727:	89 11                                           	mov    DWORD PTR [ecx],edx
10784729:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1078472c:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
1078472f:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10784732:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
10784735:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10784738:	83 c4 08                                        	add    esp,0x8
1078473b:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
1078473e:	5e                                              	pop    esi
1078473f:	8a c3                                           	mov    al,bl
10784741:	5b                                              	pop    ebx
10784742:	83 c4 20                                        	add    esp,0x20
10784745:	c3                                              	ret
10784746:	cc                                              	int3
10784747:	cc                                              	int3
10784748:	cc                                              	int3
10784749:	cc                                              	int3
1078474a:	cc                                              	int3
1078474b:	cc                                              	int3
1078474c:	cc                                              	int3
1078474d:	cc                                              	int3
1078474e:	cc                                              	int3
1078474f:	cc                                              	int3
