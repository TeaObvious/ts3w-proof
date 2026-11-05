# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109828c0 (ContentManager_GetLocalKeyFromSourceKey)
Paired Ghidra pseudocode: 109828C0_ContentManager_GetLocalKeyFromSourceKey.c
Window: [0x109828c0, 0x10982980) (192 bytes; stop exclusive)
Next defined Ghidra entry: 0x10982980
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109828c0: 83 ec 40 56 57 e8 f6 1b df ff 8b f8 33 f6 3b fe
109828d0: 0f 84 9b 00 00 00 8b 44 24 4c 6a 10 50 8d 4c 24
109828e0: 30 e8 4a 21 fb ff 8d 4c 24 50 51 8d 54 24 3c 52
109828f0: 89 74 24 20 89 74 24 24 89 74 24 28 89 74 24 2c
10982900: 89 74 24 10 89 74 24 14 89 74 24 18 89 74 24 1c
10982910: e8 8b b1 bd ff 8b 08 89 4c 24 10 8b 50 04 89 54
10982920: 24 14 8b 48 08 89 4c 24 18 8b 50 0c 83 c4 08 8d
10982930: 44 24 18 50 8d 4c 24 0c 51 83 ec 10 89 54 24 2c
10982940: 8d 54 24 40 8b cc 52 e8 74 0c fb ff 8b cf e8 dd
10982950: 73 df ff 84 c0 74 1a 8b 44 24 60 50 8d 4c 24 1c
10982960: 51 e8 da 73 00 00 83 c4 08 b0 01 5f 5e 83 c4 40
10982970: c3 5f 32 c0 5e 83 c4 40 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109828c0 <.text+0x9818c0>:
109828c0:	83 ec 40                                        	sub    esp,0x40
109828c3:	56                                              	push   esi
109828c4:	57                                              	push   edi
109828c5:	e8 f6 1b df ff                                  	call   0x107744c0
109828ca:	8b f8                                           	mov    edi,eax
109828cc:	33 f6                                           	xor    esi,esi
109828ce:	3b fe                                           	cmp    edi,esi
109828d0:	0f 84 9b 00 00 00                               	je     0x10982971
109828d6:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
109828da:	6a 10                                           	push   0x10
109828dc:	50                                              	push   eax
109828dd:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
109828e1:	e8 4a 21 fb ff                                  	call   0x10934a30
109828e6:	8d 4c 24 50                                     	lea    ecx,[esp+0x50]
109828ea:	51                                              	push   ecx
109828eb:	8d 54 24 3c                                     	lea    edx,[esp+0x3c]
109828ef:	52                                              	push   edx
109828f0:	89 74 24 20                                     	mov    DWORD PTR [esp+0x20],esi
109828f4:	89 74 24 24                                     	mov    DWORD PTR [esp+0x24],esi
109828f8:	89 74 24 28                                     	mov    DWORD PTR [esp+0x28],esi
109828fc:	89 74 24 2c                                     	mov    DWORD PTR [esp+0x2c],esi
10982900:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
10982904:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
10982908:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
1098290c:	89 74 24 1c                                     	mov    DWORD PTR [esp+0x1c],esi
10982910:	e8 8b b1 bd ff                                  	call   0x1055daa0
10982915:	8b 08                                           	mov    ecx,DWORD PTR [eax]
10982917:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
1098291b:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1098291e:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
10982922:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
10982925:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
10982929:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1098292c:	83 c4 08                                        	add    esp,0x8
1098292f:	8d 44 24 18                                     	lea    eax,[esp+0x18]
10982933:	50                                              	push   eax
10982934:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
10982938:	51                                              	push   ecx
10982939:	83 ec 10                                        	sub    esp,0x10
1098293c:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
10982940:	8d 54 24 40                                     	lea    edx,[esp+0x40]
10982944:	8b cc                                           	mov    ecx,esp
10982946:	52                                              	push   edx
10982947:	e8 74 0c fb ff                                  	call   0x109335c0
1098294c:	8b cf                                           	mov    ecx,edi
1098294e:	e8 dd 73 df ff                                  	call   0x10779d30
10982953:	84 c0                                           	test   al,al
10982955:	74 1a                                           	je     0x10982971
10982957:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
1098295b:	50                                              	push   eax
1098295c:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10982960:	51                                              	push   ecx
10982961:	e8 da 73 00 00                                  	call   0x10989d40
10982966:	83 c4 08                                        	add    esp,0x8
10982969:	b0 01                                           	mov    al,0x1
1098296b:	5f                                              	pop    edi
1098296c:	5e                                              	pop    esi
1098296d:	83 c4 40                                        	add    esp,0x40
10982970:	c3                                              	ret
10982971:	5f                                              	pop    edi
10982972:	32 c0                                           	xor    al,al
10982974:	5e                                              	pop    esi
10982975:	83 c4 40                                        	add    esp,0x40
10982978:	c3                                              	ret
10982979:	cc                                              	int3
1098297a:	cc                                              	int3
1098297b:	cc                                              	int3
1098297c:	cc                                              	int3
1098297d:	cc                                              	int3
1098297e:	cc                                              	int3
1098297f:	cc                                              	int3
