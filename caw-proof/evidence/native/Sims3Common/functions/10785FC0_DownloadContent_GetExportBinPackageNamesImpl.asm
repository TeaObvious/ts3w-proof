# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10785fc0 (DownloadContent_GetExportBinPackageNamesImpl)
Paired Ghidra pseudocode: 10785FC0_DownloadContent_GetExportBinPackageNamesImpl.c
Window: [0x10785fc0, 0x107860b0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x107860b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10785fc0: 83 ec 34 8b 0d 94 de c8 10 b8 44 82 ca 10 89 44
10785fd0: 24 04 89 44 24 08 8d 44 24 04 50 c7 44 24 14 74
10785fe0: 8e b5 10 c7 44 24 10 46 82 ca 10 e8 30 db 00 00
10785ff0: 8b 44 24 04 3b 44 24 08 0f 84 91 00 00 00 56 6a
10786000: 01 6a 10 8d 4c 24 10 51 6a 09 6a 13 8d 4c 24 2c
10786010: c7 44 24 2c b4 a5 ac 10 66 c7 44 24 36 13 00 66
10786020: c7 44 24 34 0b 00 e8 65 2b 1a 00 c7 44 24 04 00
10786030: 00 00 00 e8 e8 50 dd ff 8b 10 8b 52 50 8d 4c 24
10786040: 04 51 8d 4c 24 1c 51 8b c8 ff d2 f6 44 24 20 04
10786050: 8b 74 24 04 c7 44 24 18 b4 a5 ac 10 74 0b 6a 00
10786060: 8d 4c 24 1c e8 27 2a 1a 00 8b 4c 24 10 8b 44 24
10786070: 08 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09 50
10786080: e8 0b 2e 19 00 83 c4 04 8b c6 5e 83 c4 34 c3 8b
10786090: 54 24 0c 2b d0 83 e2 fe 83 fa 02 7e 0d 85 c0 74
107860a0: 09 50 e8 e9 2d 19 00 83 c4 04 33 c0 83 c4 34 c3

LINEAR DISASSEMBLY
10785fc0 <.text+0x784fc0>:
10785fc0:	83 ec 34                                        	sub    esp,0x34
10785fc3:	8b 0d 94 de c8 10                               	mov    ecx,DWORD PTR ds:0x10c8de94
10785fc9:	b8 44 82 ca 10                                  	mov    eax,0x10ca8244
10785fce:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10785fd2:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10785fd6:	8d 44 24 04                                     	lea    eax,[esp+0x4]
10785fda:	50                                              	push   eax
10785fdb:	c7 44 24 14 74 8e b5 10                         	mov    DWORD PTR [esp+0x14],0x10b58e74
10785fe3:	c7 44 24 10 46 82 ca 10                         	mov    DWORD PTR [esp+0x10],0x10ca8246
10785feb:	e8 30 db 00 00                                  	call   0x10793b20
10785ff0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10785ff4:	3b 44 24 08                                     	cmp    eax,DWORD PTR [esp+0x8]
10785ff8:	0f 84 91 00 00 00                               	je     0x1078608f
10785ffe:	56                                              	push   esi
10785fff:	6a 01                                           	push   0x1
10786001:	6a 10                                           	push   0x10
10786003:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
10786007:	51                                              	push   ecx
10786008:	6a 09                                           	push   0x9
1078600a:	6a 13                                           	push   0x13
1078600c:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
10786010:	c7 44 24 2c b4 a5 ac 10                         	mov    DWORD PTR [esp+0x2c],0x10aca5b4
10786018:	66 c7 44 24 36 13 00                            	mov    WORD PTR [esp+0x36],0x13
1078601f:	66 c7 44 24 34 0b 00                            	mov    WORD PTR [esp+0x34],0xb
10786026:	e8 65 2b 1a 00                                  	call   0x10928b90
1078602b:	c7 44 24 04 00 00 00 00                         	mov    DWORD PTR [esp+0x4],0x0
10786033:	e8 e8 50 dd ff                                  	call   0x1055b120
10786038:	8b 10                                           	mov    edx,DWORD PTR [eax]
1078603a:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
1078603d:	8d 4c 24 04                                     	lea    ecx,[esp+0x4]
10786041:	51                                              	push   ecx
10786042:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10786046:	51                                              	push   ecx
10786047:	8b c8                                           	mov    ecx,eax
10786049:	ff d2                                           	call   edx
1078604b:	f6 44 24 20 04                                  	test   BYTE PTR [esp+0x20],0x4
10786050:	8b 74 24 04                                     	mov    esi,DWORD PTR [esp+0x4]
10786054:	c7 44 24 18 b4 a5 ac 10                         	mov    DWORD PTR [esp+0x18],0x10aca5b4
1078605c:	74 0b                                           	je     0x10786069
1078605e:	6a 00                                           	push   0x0
10786060:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
10786064:	e8 27 2a 1a 00                                  	call   0x10928a90
10786069:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1078606d:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10786071:	2b c8                                           	sub    ecx,eax
10786073:	83 e1 fe                                        	and    ecx,0xfffffffe
10786076:	83 f9 02                                        	cmp    ecx,0x2
10786079:	7e 0d                                           	jle    0x10786088
1078607b:	85 c0                                           	test   eax,eax
1078607d:	74 09                                           	je     0x10786088
1078607f:	50                                              	push   eax
10786080:	e8 0b 2e 19 00                                  	call   0x10918e90
10786085:	83 c4 04                                        	add    esp,0x4
10786088:	8b c6                                           	mov    eax,esi
1078608a:	5e                                              	pop    esi
1078608b:	83 c4 34                                        	add    esp,0x34
1078608e:	c3                                              	ret
1078608f:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
10786093:	2b d0                                           	sub    edx,eax
10786095:	83 e2 fe                                        	and    edx,0xfffffffe
10786098:	83 fa 02                                        	cmp    edx,0x2
1078609b:	7e 0d                                           	jle    0x107860aa
1078609d:	85 c0                                           	test   eax,eax
1078609f:	74 09                                           	je     0x107860aa
107860a1:	50                                              	push   eax
107860a2:	e8 e9 2d 19 00                                  	call   0x10918e90
107860a7:	83 c4 04                                        	add    esp,0x4
107860aa:	33 c0                                           	xor    eax,eax
107860ac:	83 c4 34                                        	add    esp,0x34
107860af:	c3                                              	ret
