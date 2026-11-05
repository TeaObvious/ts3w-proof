# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x008af960 (AudioVoice_Construct)
Paired Ghidra pseudocode: 008AF960_AudioVoice_Construct.c
Window: [0x008af960, 0x008afd70) (1040 bytes; stop exclusive)
Next defined Ghidra entry: 0x008afd70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
008af960: 51 53 55 56 8b f1 c7 06 88 d2 ff 00 c7 46 04 bc
008af970: 8a 02 01 57 c7 46 08 a4 bb 02 01 33 c0 8d 4e 0c
008af980: 87 01 0f 57 c0 c7 06 48 b9 03 01 c7 46 04 38 b2
008af990: 02 01 c7 46 08 44 b9 03 01 c7 46 24 7c a2 02 01
008af9a0: f3 0f 10 0d f8 98 f9 00 f3 0f 10 15 18 b2 fa 00
008af9b0: 33 db bd 54 8e 1c 01 89 6e 18 89 6e 1c b8 55 8e
008af9c0: 1c 01 89 46 20 c7 46 34 74 ba 03 01 89 6e 28 89
008af9d0: 6e 2c 89 46 30 89 5e 38 89 5e 3c 89 5e 40 89 5e
008af9e0: 48 89 5e 4c 89 5e 50 89 5e 58 f3 0f 11 56 7c f3
008af9f0: 0f 10 15 84 ba fb 00 f3 0f 11 96 80 00 00 00 f3
008afa00: 0f 10 15 ec b8 03 01 f3 0f 11 46 5c f3 0f 11 46
008afa10: 60 f3 0f 11 4e 64 f3 0f 11 46 68 f3 0f 11 46 6c
008afa20: f3 0f 11 4e 70 f3 0f 11 46 74 f3 0f 11 46 78 f3
008afa30: 0f 11 8e 84 00 00 00 f3 0f 11 86 88 00 00 00 f3
008afa40: 0f 11 96 8c 00 00 00 f3 0f 11 86 90 00 00 00 f3
008afa50: 0f 11 8e 94 00 00 00 f3 0f 11 8e 98 00 00 00 f3
008afa60: 0f 11 8e 9c 00 00 00 f3 0f 11 86 a0 00 00 00 f3
008afa70: 0f 11 86 a4 00 00 00 f3 0f 11 86 a8 00 00 00 88
008afa80: 9e ac 00 00 00 88 9e ad 00 00 00 88 9e ae 00 00
008afa90: 00 c6 86 af 00 00 00 01 88 9e b0 00 00 00 89 9e
008afaa0: b4 00 00 00 f3 0f 10 15 8c b0 1d 01 f3 0f 11 96
008afab0: b8 00 00 00 f3 0f 10 15 90 b0 1d 01 f3 0f 11 96
008afac0: bc 00 00 00 f3 0f 10 15 94 b0 1d 01 f3 0f 11 96
008afad0: c0 00 00 00 f3 0f 10 15 8c b0 1d 01 f3 0f 11 96
008afae0: c4 00 00 00 f3 0f 10 15 90 b0 1d 01 f3 0f 11 96
008afaf0: c8 00 00 00 f3 0f 10 15 94 b0 1d 01 f3 0f 11 96
008afb00: cc 00 00 00 88 9e d0 00 00 00 f3 0f 10 15 8c b0
008afb10: 1d 01 f3 0f 11 96 d4 00 00 00 f3 0f 10 15 90 b0
008afb20: 1d 01 f3 0f 11 96 d8 00 00 00 f3 0f 10 15 94 b0
008afb30: 1d 01 f3 0f 11 96 dc 00 00 00 8d be f4 00 00 00
008afb40: 8b cf f3 0f 11 8e e0 00 00 00 f3 0f 11 8e e4 00
008afb50: 00 00 f3 0f 11 86 e8 00 00 00 89 9e ec 00 00 00
008afb60: 89 9e f0 00 00 00 e8 e5 fb fe ff 8d 54 24 13 52
008afb70: 8d 44 24 17 50 8d 8e 08 01 00 00 e8 f0 f0 ff ff
008afb80: 0f 57 c0 89 9e e8 02 00 00 89 9e ec 02 00 00 c7
008afb90: 86 fc 02 00 00 7c 99 f9 00 8d 86 04 03 00 00 89
008afba0: 86 00 03 00 00 89 86 f4 02 00 00 89 86 f0 02 00
008afbb0: 00 c7 86 fc 02 00 00 c8 aa f9 00 8d 4c 24 13 51
008afbc0: 83 c0 28 89 86 f8 02 00 00 8d 54 24 17 52 8d 8e
008afbd0: 48 03 00 00 89 9e 2c 03 00 00 f3 0f 11 86 30 03
008afbe0: 00 00 f3 0f 11 86 34 03 00 00 f3 0f 11 86 38 03
008afbf0: 00 00 c7 86 3c 03 00 00 02 00 00 00 c7 86 40 03
008afc00: 00 00 b0 47 83 ee c7 86 44 03 00 00 ff ff ff ff
008afc10: e8 5b f0 ff ff 8d 44 24 13 50 8d 4c 24 17 51 8d
008afc20: 8e 28 05 00 00 e8 56 f1 ff ff 8d 54 24 13 52 8d
008afc30: 44 24 17 50 8d 8e 98 08 00 00 e8 31 f0 ff ff d9
008afc40: ee 0f 57 c0 c7 86 80 0a 00 00 60 ba 03 01 f3 0f
008afc50: 10 0d f8 98 f9 00 8d 86 78 0a 00 00 89 00 89 40
008afc60: 04 89 9e 84 0a 00 00 88 9e a4 0a 00 00 f3 0f 11
008afc70: 86 b4 0a 00 00 f3 0f 11 86 b8 0a 00 00 33 c0 89
008afc80: 86 88 0a 00 00 89 86 8c 0a 00 00 89 86 90 0a 00
008afc90: 00 89 86 94 0a 00 00 89 86 98 0a 00 00 89 86 9c
008afca0: 0a 00 00 f3 0f 11 8e ac 0a 00 00 f3 0f 11 86 b0
008afcb0: 0a 00 00 89 9e a0 0a 00 00 dd 9e c0 0a 00 00 f3
008afcc0: 0f 11 86 c8 0a 00 00 88 9e cc 0a 00 00 88 9e cd
008afcd0: 0a 00 00 c7 86 d0 0a 00 00 ff ff ff ff 89 9e d4
008afce0: 0a 00 00 c7 86 d8 0a 00 00 01 00 00 00 89 9e dc
008afcf0: 0a 00 00 8d 8e e0 0a 00 00 e8 32 a7 ff ff 8d 8e
008afd00: 40 0e 00 00 e8 27 a7 ff ff 8d 8e a0 11 00 00 e8
008afd10: 1c a7 ff ff 8d 8e 00 15 00 00 e8 11 a7 ff ff c7
008afd20: 86 6c 18 00 00 06 00 00 00 c7 86 94 18 00 00 48
008afd30: ba 03 01 89 ae 88 18 00 00 89 ae 8c 18 00 00 c7
008afd40: 86 90 18 00 00 55 8e 1c 01 c7 86 98 18 00 00 03
008afd50: 00 00 00 89 9e dc 0a 00 00 8b 17 8b 02 8b cf 89
008afd60: 5e 14 89 5e 10 ff d0 5f 8b c6 5e 5d 5b 59 c3 cc

LINEAR DISASSEMBLY
008af960 <.text+0x4ae960>:
  8af960:	51                                              	push   ecx
  8af961:	53                                              	push   ebx
  8af962:	55                                              	push   ebp
  8af963:	56                                              	push   esi
  8af964:	8b f1                                           	mov    esi,ecx
  8af966:	c7 06 88 d2 ff 00                               	mov    DWORD PTR [esi],0xffd288
  8af96c:	c7 46 04 bc 8a 02 01                            	mov    DWORD PTR [esi+0x4],0x1028abc
  8af973:	57                                              	push   edi
  8af974:	c7 46 08 a4 bb 02 01                            	mov    DWORD PTR [esi+0x8],0x102bba4
  8af97b:	33 c0                                           	xor    eax,eax
  8af97d:	8d 4e 0c                                        	lea    ecx,[esi+0xc]
  8af980:	87 01                                           	xchg   DWORD PTR [ecx],eax
  8af982:	0f 57 c0                                        	xorps  xmm0,xmm0
  8af985:	c7 06 48 b9 03 01                               	mov    DWORD PTR [esi],0x103b948
  8af98b:	c7 46 04 38 b2 02 01                            	mov    DWORD PTR [esi+0x4],0x102b238
  8af992:	c7 46 08 44 b9 03 01                            	mov    DWORD PTR [esi+0x8],0x103b944
  8af999:	c7 46 24 7c a2 02 01                            	mov    DWORD PTR [esi+0x24],0x102a27c
  8af9a0:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  8af9a8:	f3 0f 10 15 18 b2 fa 00                         	movss  xmm2,DWORD PTR ds:0xfab218
  8af9b0:	33 db                                           	xor    ebx,ebx
  8af9b2:	bd 54 8e 1c 01                                  	mov    ebp,0x11c8e54
  8af9b7:	89 6e 18                                        	mov    DWORD PTR [esi+0x18],ebp
  8af9ba:	89 6e 1c                                        	mov    DWORD PTR [esi+0x1c],ebp
  8af9bd:	b8 55 8e 1c 01                                  	mov    eax,0x11c8e55
  8af9c2:	89 46 20                                        	mov    DWORD PTR [esi+0x20],eax
  8af9c5:	c7 46 34 74 ba 03 01                            	mov    DWORD PTR [esi+0x34],0x103ba74
  8af9cc:	89 6e 28                                        	mov    DWORD PTR [esi+0x28],ebp
  8af9cf:	89 6e 2c                                        	mov    DWORD PTR [esi+0x2c],ebp
  8af9d2:	89 46 30                                        	mov    DWORD PTR [esi+0x30],eax
  8af9d5:	89 5e 38                                        	mov    DWORD PTR [esi+0x38],ebx
  8af9d8:	89 5e 3c                                        	mov    DWORD PTR [esi+0x3c],ebx
  8af9db:	89 5e 40                                        	mov    DWORD PTR [esi+0x40],ebx
  8af9de:	89 5e 48                                        	mov    DWORD PTR [esi+0x48],ebx
  8af9e1:	89 5e 4c                                        	mov    DWORD PTR [esi+0x4c],ebx
  8af9e4:	89 5e 50                                        	mov    DWORD PTR [esi+0x50],ebx
  8af9e7:	89 5e 58                                        	mov    DWORD PTR [esi+0x58],ebx
  8af9ea:	f3 0f 11 56 7c                                  	movss  DWORD PTR [esi+0x7c],xmm2
  8af9ef:	f3 0f 10 15 84 ba fb 00                         	movss  xmm2,DWORD PTR ds:0xfbba84
  8af9f7:	f3 0f 11 96 80 00 00 00                         	movss  DWORD PTR [esi+0x80],xmm2
  8af9ff:	f3 0f 10 15 ec b8 03 01                         	movss  xmm2,DWORD PTR ds:0x103b8ec
  8afa07:	f3 0f 11 46 5c                                  	movss  DWORD PTR [esi+0x5c],xmm0
  8afa0c:	f3 0f 11 46 60                                  	movss  DWORD PTR [esi+0x60],xmm0
  8afa11:	f3 0f 11 4e 64                                  	movss  DWORD PTR [esi+0x64],xmm1
  8afa16:	f3 0f 11 46 68                                  	movss  DWORD PTR [esi+0x68],xmm0
  8afa1b:	f3 0f 11 46 6c                                  	movss  DWORD PTR [esi+0x6c],xmm0
  8afa20:	f3 0f 11 4e 70                                  	movss  DWORD PTR [esi+0x70],xmm1
  8afa25:	f3 0f 11 46 74                                  	movss  DWORD PTR [esi+0x74],xmm0
  8afa2a:	f3 0f 11 46 78                                  	movss  DWORD PTR [esi+0x78],xmm0
  8afa2f:	f3 0f 11 8e 84 00 00 00                         	movss  DWORD PTR [esi+0x84],xmm1
  8afa37:	f3 0f 11 86 88 00 00 00                         	movss  DWORD PTR [esi+0x88],xmm0
  8afa3f:	f3 0f 11 96 8c 00 00 00                         	movss  DWORD PTR [esi+0x8c],xmm2
  8afa47:	f3 0f 11 86 90 00 00 00                         	movss  DWORD PTR [esi+0x90],xmm0
  8afa4f:	f3 0f 11 8e 94 00 00 00                         	movss  DWORD PTR [esi+0x94],xmm1
  8afa57:	f3 0f 11 8e 98 00 00 00                         	movss  DWORD PTR [esi+0x98],xmm1
  8afa5f:	f3 0f 11 8e 9c 00 00 00                         	movss  DWORD PTR [esi+0x9c],xmm1
  8afa67:	f3 0f 11 86 a0 00 00 00                         	movss  DWORD PTR [esi+0xa0],xmm0
  8afa6f:	f3 0f 11 86 a4 00 00 00                         	movss  DWORD PTR [esi+0xa4],xmm0
  8afa77:	f3 0f 11 86 a8 00 00 00                         	movss  DWORD PTR [esi+0xa8],xmm0
  8afa7f:	88 9e ac 00 00 00                               	mov    BYTE PTR [esi+0xac],bl
  8afa85:	88 9e ad 00 00 00                               	mov    BYTE PTR [esi+0xad],bl
  8afa8b:	88 9e ae 00 00 00                               	mov    BYTE PTR [esi+0xae],bl
  8afa91:	c6 86 af 00 00 00 01                            	mov    BYTE PTR [esi+0xaf],0x1
  8afa98:	88 9e b0 00 00 00                               	mov    BYTE PTR [esi+0xb0],bl
  8afa9e:	89 9e b4 00 00 00                               	mov    DWORD PTR [esi+0xb4],ebx
  8afaa4:	f3 0f 10 15 8c b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db08c
  8afaac:	f3 0f 11 96 b8 00 00 00                         	movss  DWORD PTR [esi+0xb8],xmm2
  8afab4:	f3 0f 10 15 90 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db090
  8afabc:	f3 0f 11 96 bc 00 00 00                         	movss  DWORD PTR [esi+0xbc],xmm2
  8afac4:	f3 0f 10 15 94 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db094
  8afacc:	f3 0f 11 96 c0 00 00 00                         	movss  DWORD PTR [esi+0xc0],xmm2
  8afad4:	f3 0f 10 15 8c b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db08c
  8afadc:	f3 0f 11 96 c4 00 00 00                         	movss  DWORD PTR [esi+0xc4],xmm2
  8afae4:	f3 0f 10 15 90 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db090
  8afaec:	f3 0f 11 96 c8 00 00 00                         	movss  DWORD PTR [esi+0xc8],xmm2
  8afaf4:	f3 0f 10 15 94 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db094
  8afafc:	f3 0f 11 96 cc 00 00 00                         	movss  DWORD PTR [esi+0xcc],xmm2
  8afb04:	88 9e d0 00 00 00                               	mov    BYTE PTR [esi+0xd0],bl
  8afb0a:	f3 0f 10 15 8c b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db08c
  8afb12:	f3 0f 11 96 d4 00 00 00                         	movss  DWORD PTR [esi+0xd4],xmm2
  8afb1a:	f3 0f 10 15 90 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db090
  8afb22:	f3 0f 11 96 d8 00 00 00                         	movss  DWORD PTR [esi+0xd8],xmm2
  8afb2a:	f3 0f 10 15 94 b0 1d 01                         	movss  xmm2,DWORD PTR ds:0x11db094
  8afb32:	f3 0f 11 96 dc 00 00 00                         	movss  DWORD PTR [esi+0xdc],xmm2
  8afb3a:	8d be f4 00 00 00                               	lea    edi,[esi+0xf4]
  8afb40:	8b cf                                           	mov    ecx,edi
  8afb42:	f3 0f 11 8e e0 00 00 00                         	movss  DWORD PTR [esi+0xe0],xmm1
  8afb4a:	f3 0f 11 8e e4 00 00 00                         	movss  DWORD PTR [esi+0xe4],xmm1
  8afb52:	f3 0f 11 86 e8 00 00 00                         	movss  DWORD PTR [esi+0xe8],xmm0
  8afb5a:	89 9e ec 00 00 00                               	mov    DWORD PTR [esi+0xec],ebx
  8afb60:	89 9e f0 00 00 00                               	mov    DWORD PTR [esi+0xf0],ebx
  8afb66:	e8 e5 fb fe ff                                  	call   0x89f750
  8afb6b:	8d 54 24 13                                     	lea    edx,[esp+0x13]
  8afb6f:	52                                              	push   edx
  8afb70:	8d 44 24 17                                     	lea    eax,[esp+0x17]
  8afb74:	50                                              	push   eax
  8afb75:	8d 8e 08 01 00 00                               	lea    ecx,[esi+0x108]
  8afb7b:	e8 f0 f0 ff ff                                  	call   0x8aec70
  8afb80:	0f 57 c0                                        	xorps  xmm0,xmm0
  8afb83:	89 9e e8 02 00 00                               	mov    DWORD PTR [esi+0x2e8],ebx
  8afb89:	89 9e ec 02 00 00                               	mov    DWORD PTR [esi+0x2ec],ebx
  8afb8f:	c7 86 fc 02 00 00 7c 99 f9 00                   	mov    DWORD PTR [esi+0x2fc],0xf9997c
  8afb99:	8d 86 04 03 00 00                               	lea    eax,[esi+0x304]
  8afb9f:	89 86 00 03 00 00                               	mov    DWORD PTR [esi+0x300],eax
  8afba5:	89 86 f4 02 00 00                               	mov    DWORD PTR [esi+0x2f4],eax
  8afbab:	89 86 f0 02 00 00                               	mov    DWORD PTR [esi+0x2f0],eax
  8afbb1:	c7 86 fc 02 00 00 c8 aa f9 00                   	mov    DWORD PTR [esi+0x2fc],0xf9aac8
  8afbbb:	8d 4c 24 13                                     	lea    ecx,[esp+0x13]
  8afbbf:	51                                              	push   ecx
  8afbc0:	83 c0 28                                        	add    eax,0x28
  8afbc3:	89 86 f8 02 00 00                               	mov    DWORD PTR [esi+0x2f8],eax
  8afbc9:	8d 54 24 17                                     	lea    edx,[esp+0x17]
  8afbcd:	52                                              	push   edx
  8afbce:	8d 8e 48 03 00 00                               	lea    ecx,[esi+0x348]
  8afbd4:	89 9e 2c 03 00 00                               	mov    DWORD PTR [esi+0x32c],ebx
  8afbda:	f3 0f 11 86 30 03 00 00                         	movss  DWORD PTR [esi+0x330],xmm0
  8afbe2:	f3 0f 11 86 34 03 00 00                         	movss  DWORD PTR [esi+0x334],xmm0
  8afbea:	f3 0f 11 86 38 03 00 00                         	movss  DWORD PTR [esi+0x338],xmm0
  8afbf2:	c7 86 3c 03 00 00 02 00 00 00                   	mov    DWORD PTR [esi+0x33c],0x2
  8afbfc:	c7 86 40 03 00 00 b0 47 83 ee                   	mov    DWORD PTR [esi+0x340],0xee8347b0
  8afc06:	c7 86 44 03 00 00 ff ff ff ff                   	mov    DWORD PTR [esi+0x344],0xffffffff
  8afc10:	e8 5b f0 ff ff                                  	call   0x8aec70
  8afc15:	8d 44 24 13                                     	lea    eax,[esp+0x13]
  8afc19:	50                                              	push   eax
  8afc1a:	8d 4c 24 17                                     	lea    ecx,[esp+0x17]
  8afc1e:	51                                              	push   ecx
  8afc1f:	8d 8e 28 05 00 00                               	lea    ecx,[esi+0x528]
  8afc25:	e8 56 f1 ff ff                                  	call   0x8aed80
  8afc2a:	8d 54 24 13                                     	lea    edx,[esp+0x13]
  8afc2e:	52                                              	push   edx
  8afc2f:	8d 44 24 17                                     	lea    eax,[esp+0x17]
  8afc33:	50                                              	push   eax
  8afc34:	8d 8e 98 08 00 00                               	lea    ecx,[esi+0x898]
  8afc3a:	e8 31 f0 ff ff                                  	call   0x8aec70
  8afc3f:	d9 ee                                           	fldz
  8afc41:	0f 57 c0                                        	xorps  xmm0,xmm0
  8afc44:	c7 86 80 0a 00 00 60 ba 03 01                   	mov    DWORD PTR [esi+0xa80],0x103ba60
  8afc4e:	f3 0f 10 0d f8 98 f9 00                         	movss  xmm1,DWORD PTR ds:0xf998f8
  8afc56:	8d 86 78 0a 00 00                               	lea    eax,[esi+0xa78]
  8afc5c:	89 00                                           	mov    DWORD PTR [eax],eax
  8afc5e:	89 40 04                                        	mov    DWORD PTR [eax+0x4],eax
  8afc61:	89 9e 84 0a 00 00                               	mov    DWORD PTR [esi+0xa84],ebx
  8afc67:	88 9e a4 0a 00 00                               	mov    BYTE PTR [esi+0xaa4],bl
  8afc6d:	f3 0f 11 86 b4 0a 00 00                         	movss  DWORD PTR [esi+0xab4],xmm0
  8afc75:	f3 0f 11 86 b8 0a 00 00                         	movss  DWORD PTR [esi+0xab8],xmm0
  8afc7d:	33 c0                                           	xor    eax,eax
  8afc7f:	89 86 88 0a 00 00                               	mov    DWORD PTR [esi+0xa88],eax
  8afc85:	89 86 8c 0a 00 00                               	mov    DWORD PTR [esi+0xa8c],eax
  8afc8b:	89 86 90 0a 00 00                               	mov    DWORD PTR [esi+0xa90],eax
  8afc91:	89 86 94 0a 00 00                               	mov    DWORD PTR [esi+0xa94],eax
  8afc97:	89 86 98 0a 00 00                               	mov    DWORD PTR [esi+0xa98],eax
  8afc9d:	89 86 9c 0a 00 00                               	mov    DWORD PTR [esi+0xa9c],eax
  8afca3:	f3 0f 11 8e ac 0a 00 00                         	movss  DWORD PTR [esi+0xaac],xmm1
  8afcab:	f3 0f 11 86 b0 0a 00 00                         	movss  DWORD PTR [esi+0xab0],xmm0
  8afcb3:	89 9e a0 0a 00 00                               	mov    DWORD PTR [esi+0xaa0],ebx
  8afcb9:	dd 9e c0 0a 00 00                               	fstp   QWORD PTR [esi+0xac0]
  8afcbf:	f3 0f 11 86 c8 0a 00 00                         	movss  DWORD PTR [esi+0xac8],xmm0
  8afcc7:	88 9e cc 0a 00 00                               	mov    BYTE PTR [esi+0xacc],bl
  8afccd:	88 9e cd 0a 00 00                               	mov    BYTE PTR [esi+0xacd],bl
  8afcd3:	c7 86 d0 0a 00 00 ff ff ff ff                   	mov    DWORD PTR [esi+0xad0],0xffffffff
  8afcdd:	89 9e d4 0a 00 00                               	mov    DWORD PTR [esi+0xad4],ebx
  8afce3:	c7 86 d8 0a 00 00 01 00 00 00                   	mov    DWORD PTR [esi+0xad8],0x1
  8afced:	89 9e dc 0a 00 00                               	mov    DWORD PTR [esi+0xadc],ebx
  8afcf3:	8d 8e e0 0a 00 00                               	lea    ecx,[esi+0xae0]
  8afcf9:	e8 32 a7 ff ff                                  	call   0x8aa430
  8afcfe:	8d 8e 40 0e 00 00                               	lea    ecx,[esi+0xe40]
  8afd04:	e8 27 a7 ff ff                                  	call   0x8aa430
  8afd09:	8d 8e a0 11 00 00                               	lea    ecx,[esi+0x11a0]
  8afd0f:	e8 1c a7 ff ff                                  	call   0x8aa430
  8afd14:	8d 8e 00 15 00 00                               	lea    ecx,[esi+0x1500]
  8afd1a:	e8 11 a7 ff ff                                  	call   0x8aa430
  8afd1f:	c7 86 6c 18 00 00 06 00 00 00                   	mov    DWORD PTR [esi+0x186c],0x6
  8afd29:	c7 86 94 18 00 00 48 ba 03 01                   	mov    DWORD PTR [esi+0x1894],0x103ba48
  8afd33:	89 ae 88 18 00 00                               	mov    DWORD PTR [esi+0x1888],ebp
  8afd39:	89 ae 8c 18 00 00                               	mov    DWORD PTR [esi+0x188c],ebp
  8afd3f:	c7 86 90 18 00 00 55 8e 1c 01                   	mov    DWORD PTR [esi+0x1890],0x11c8e55
  8afd49:	c7 86 98 18 00 00 03 00 00 00                   	mov    DWORD PTR [esi+0x1898],0x3
  8afd53:	89 9e dc 0a 00 00                               	mov    DWORD PTR [esi+0xadc],ebx
  8afd59:	8b 17                                           	mov    edx,DWORD PTR [edi]
  8afd5b:	8b 02                                           	mov    eax,DWORD PTR [edx]
  8afd5d:	8b cf                                           	mov    ecx,edi
  8afd5f:	89 5e 14                                        	mov    DWORD PTR [esi+0x14],ebx
  8afd62:	89 5e 10                                        	mov    DWORD PTR [esi+0x10],ebx
  8afd65:	ff d0                                           	call   eax
  8afd67:	5f                                              	pop    edi
  8afd68:	8b c6                                           	mov    eax,esi
  8afd6a:	5e                                              	pop    esi
  8afd6b:	5d                                              	pop    ebp
  8afd6c:	5b                                              	pop    ebx
  8afd6d:	59                                              	pop    ecx
  8afd6e:	c3                                              	ret
  8afd6f:	cc                                              	int3
