# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078cbb0 (ScriptCore.World::World_ObjectSetModel)
Paired Ghidra pseudocode: 0078CBB0_ScriptCore_World_World_ObjectSetModel.c
Window: [0x0078cbb0, 0x0078cce0) (304 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078cce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078cbb0: 83 ec 30 56 57 e8 d6 c7 fd ff 8b 4c 24 44 33 ff
0078cbc0: 3b cf 74 15 8b 10 51 8b c8 8b 42 58 ff d0 50 e8
0078cbd0: 7c 34 04 00 83 c4 04 eb 02 33 c0 8b 74 24 48 3b
0078cbe0: f7 89 44 24 08 b8 01 00 00 00 89 7c 24 0c c7 44
0078cbf0: 24 10 33 12 66 01 89 44 24 14 75 29 8d 4c 24 08
0078cc00: 51 8d 54 24 2c 52 e8 05 b7 04 00 8b 08 89 4c 24
0078cc10: 10 8b 50 04 89 54 24 14 8b 48 08 89 4c 24 18 8b
0078cc20: 40 0c 83 c4 08 31 74 24 08 33 c6 89 44 24 14 e8
0078cc30: 3c a9 1a 00 3b c7 0f 84 90 00 00 00 8b 54 24 40
0078cc40: 8b 4c 24 3c 52 51 8b c8 e8 33 b3 1a 00 3b c7 74
0078cc50: 7b 8b 15 c4 9f 1e 01 52 8b c8 e8 01 76 1a 00 8b
0078cc60: f0 3b f7 74 67 8b ce e8 84 89 db ff 8b 08 3b 4c
0078cc70: 24 08 75 1b 8b 50 08 3b 54 24 10 75 12 8b 48 0c
0078cc80: 3b 4c 24 14 75 09 8b 50 04 3b 54 24 0c 74 3d 8d
0078cc90: 44 24 18 50 8d 4c 24 2c 51 8b ce 89 7c 24 20 89
0078cca0: 7c 24 24 89 7c 24 28 89 7c 24 2c 89 7c 24 30 89
0078ccb0: 7c 24 34 89 7c 24 38 89 7c 24 3c e8 90 e4 1b 00
0078ccc0: 8d 54 24 08 52 8b ce e8 04 cb 1b 00 5f 5e 83 c4
0078ccd0: 30 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078cbb0 <.text+0x38bbb0>:
  78cbb0:	83 ec 30                                        	sub    esp,0x30
  78cbb3:	56                                              	push   esi
  78cbb4:	57                                              	push   edi
  78cbb5:	e8 d6 c7 fd ff                                  	call   0x769390
  78cbba:	8b 4c 24 44                                     	mov    ecx,DWORD PTR [esp+0x44]
  78cbbe:	33 ff                                           	xor    edi,edi
  78cbc0:	3b cf                                           	cmp    ecx,edi
  78cbc2:	74 15                                           	je     0x78cbd9
  78cbc4:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78cbc6:	51                                              	push   ecx
  78cbc7:	8b c8                                           	mov    ecx,eax
  78cbc9:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  78cbcc:	ff d0                                           	call   eax
  78cbce:	50                                              	push   eax
  78cbcf:	e8 7c 34 04 00                                  	call   0x7d0050
  78cbd4:	83 c4 04                                        	add    esp,0x4
  78cbd7:	eb 02                                           	jmp    0x78cbdb
  78cbd9:	33 c0                                           	xor    eax,eax
  78cbdb:	8b 74 24 48                                     	mov    esi,DWORD PTR [esp+0x48]
  78cbdf:	3b f7                                           	cmp    esi,edi
  78cbe1:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
  78cbe5:	b8 01 00 00 00                                  	mov    eax,0x1
  78cbea:	89 7c 24 0c                                     	mov    DWORD PTR [esp+0xc],edi
  78cbee:	c7 44 24 10 33 12 66 01                         	mov    DWORD PTR [esp+0x10],0x1661233
  78cbf6:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  78cbfa:	75 29                                           	jne    0x78cc25
  78cbfc:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
  78cc00:	51                                              	push   ecx
  78cc01:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  78cc05:	52                                              	push   edx
  78cc06:	e8 05 b7 04 00                                  	call   0x7d8310
  78cc0b:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78cc0d:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  78cc11:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  78cc14:	89 54 24 14                                     	mov    DWORD PTR [esp+0x14],edx
  78cc18:	8b 48 08                                        	mov    ecx,DWORD PTR [eax+0x8]
  78cc1b:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
  78cc1f:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
  78cc22:	83 c4 08                                        	add    esp,0x8
  78cc25:	31 74 24 08                                     	xor    DWORD PTR [esp+0x8],esi
  78cc29:	33 c6                                           	xor    eax,esi
  78cc2b:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  78cc2f:	e8 3c a9 1a 00                                  	call   0x937570
  78cc34:	3b c7                                           	cmp    eax,edi
  78cc36:	0f 84 90 00 00 00                               	je     0x78cccc
  78cc3c:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  78cc40:	8b 4c 24 3c                                     	mov    ecx,DWORD PTR [esp+0x3c]
  78cc44:	52                                              	push   edx
  78cc45:	51                                              	push   ecx
  78cc46:	8b c8                                           	mov    ecx,eax
  78cc48:	e8 33 b3 1a 00                                  	call   0x937f80
  78cc4d:	3b c7                                           	cmp    eax,edi
  78cc4f:	74 7b                                           	je     0x78cccc
  78cc51:	8b 15 c4 9f 1e 01                               	mov    edx,DWORD PTR ds:0x11e9fc4
  78cc57:	52                                              	push   edx
  78cc58:	8b c8                                           	mov    ecx,eax
  78cc5a:	e8 01 76 1a 00                                  	call   0x934260
  78cc5f:	8b f0                                           	mov    esi,eax
  78cc61:	3b f7                                           	cmp    esi,edi
  78cc63:	74 67                                           	je     0x78cccc
  78cc65:	8b ce                                           	mov    ecx,esi
  78cc67:	e8 84 89 db ff                                  	call   0x5455f0
  78cc6c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  78cc6e:	3b 4c 24 08                                     	cmp    ecx,DWORD PTR [esp+0x8]
  78cc72:	75 1b                                           	jne    0x78cc8f
  78cc74:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  78cc77:	3b 54 24 10                                     	cmp    edx,DWORD PTR [esp+0x10]
  78cc7b:	75 12                                           	jne    0x78cc8f
  78cc7d:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  78cc80:	3b 4c 24 14                                     	cmp    ecx,DWORD PTR [esp+0x14]
  78cc84:	75 09                                           	jne    0x78cc8f
  78cc86:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  78cc89:	3b 54 24 0c                                     	cmp    edx,DWORD PTR [esp+0xc]
  78cc8d:	74 3d                                           	je     0x78cccc
  78cc8f:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  78cc93:	50                                              	push   eax
  78cc94:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  78cc98:	51                                              	push   ecx
  78cc99:	8b ce                                           	mov    ecx,esi
  78cc9b:	89 7c 24 20                                     	mov    DWORD PTR [esp+0x20],edi
  78cc9f:	89 7c 24 24                                     	mov    DWORD PTR [esp+0x24],edi
  78cca3:	89 7c 24 28                                     	mov    DWORD PTR [esp+0x28],edi
  78cca7:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  78ccab:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  78ccaf:	89 7c 24 34                                     	mov    DWORD PTR [esp+0x34],edi
  78ccb3:	89 7c 24 38                                     	mov    DWORD PTR [esp+0x38],edi
  78ccb7:	89 7c 24 3c                                     	mov    DWORD PTR [esp+0x3c],edi
  78ccbb:	e8 90 e4 1b 00                                  	call   0x94b150
  78ccc0:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  78ccc4:	52                                              	push   edx
  78ccc5:	8b ce                                           	mov    ecx,esi
  78ccc7:	e8 04 cb 1b 00                                  	call   0x9497d0
  78cccc:	5f                                              	pop    edi
  78cccd:	5e                                              	pop    esi
  78ccce:	83 c4 30                                        	add    esp,0x30
  78ccd1:	c3                                              	ret
  78ccd2:	cc                                              	int3
  78ccd3:	cc                                              	int3
  78ccd4:	cc                                              	int3
  78ccd5:	cc                                              	int3
  78ccd6:	cc                                              	int3
  78ccd7:	cc                                              	int3
  78ccd8:	cc                                              	int3
  78ccd9:	cc                                              	int3
  78ccda:	cc                                              	int3
  78ccdb:	cc                                              	int3
  78ccdc:	cc                                              	int3
  78ccdd:	cc                                              	int3
  78ccde:	cc                                              	int3
  78ccdf:	cc                                              	int3
