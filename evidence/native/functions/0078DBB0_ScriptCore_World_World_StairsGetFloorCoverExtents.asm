# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078dbb0 (ScriptCore.World::World_StairsGetFloorCoverExtents)
Paired Ghidra pseudocode: 0078DBB0_ScriptCore_World_World_StairsGetFloorCoverExtents.c
Window: [0x0078dbb0, 0x0078dc50) (160 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078dc50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078dbb0: 55 8b ec 83 e4 f0 83 ec 24 53 56 57 e8 af 99 1a
0078dbc0: 00 85 c0 74 7a 8b 7d 0c 8b 5d 08 57 53 8b c8 e8
0078dbd0: ac a3 1a 00 8b f0 85 f6 74 65 a1 08 df 1e 01 50
0078dbe0: 8b ce e8 79 66 1a 00 85 c0 74 54 8b ce e8 3e 15
0078dbf0: f0 ff 85 c0 74 49 8b 10 8b c8 8b 42 0c 68 0e 6b
0078dc00: 56 90 ff d0 85 c0 74 37 8b 80 b4 02 00 00 8d 4c
0078dc10: 24 20 51 8d 54 24 14 52 57 53 8b c8 e8 bf aa 38
0078dc20: 00 84 c0 74 1a 8b 4d 10 8d 44 24 10 50 e8 ce e4
0078dc30: fd ff 8d 4c 24 20 51 8b 4d 14 e8 c1 e4 fd ff 5f
0078dc40: 5e 5b 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078dbb0 <.text+0x38cbb0>:
  78dbb0:	55                                              	push   ebp
  78dbb1:	8b ec                                           	mov    ebp,esp
  78dbb3:	83 e4 f0                                        	and    esp,0xfffffff0
  78dbb6:	83 ec 24                                        	sub    esp,0x24
  78dbb9:	53                                              	push   ebx
  78dbba:	56                                              	push   esi
  78dbbb:	57                                              	push   edi
  78dbbc:	e8 af 99 1a 00                                  	call   0x937570
  78dbc1:	85 c0                                           	test   eax,eax
  78dbc3:	74 7a                                           	je     0x78dc3f
  78dbc5:	8b 7d 0c                                        	mov    edi,DWORD PTR [ebp+0xc]
  78dbc8:	8b 5d 08                                        	mov    ebx,DWORD PTR [ebp+0x8]
  78dbcb:	57                                              	push   edi
  78dbcc:	53                                              	push   ebx
  78dbcd:	8b c8                                           	mov    ecx,eax
  78dbcf:	e8 ac a3 1a 00                                  	call   0x937f80
  78dbd4:	8b f0                                           	mov    esi,eax
  78dbd6:	85 f6                                           	test   esi,esi
  78dbd8:	74 65                                           	je     0x78dc3f
  78dbda:	a1 08 df 1e 01                                  	mov    eax,ds:0x11edf08
  78dbdf:	50                                              	push   eax
  78dbe0:	8b ce                                           	mov    ecx,esi
  78dbe2:	e8 79 66 1a 00                                  	call   0x934260
  78dbe7:	85 c0                                           	test   eax,eax
  78dbe9:	74 54                                           	je     0x78dc3f
  78dbeb:	8b ce                                           	mov    ecx,esi
  78dbed:	e8 3e 15 f0 ff                                  	call   0x68f130
  78dbf2:	85 c0                                           	test   eax,eax
  78dbf4:	74 49                                           	je     0x78dc3f
  78dbf6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78dbf8:	8b c8                                           	mov    ecx,eax
  78dbfa:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78dbfd:	68 0e 6b 56 90                                  	push   0x90566b0e
  78dc02:	ff d0                                           	call   eax
  78dc04:	85 c0                                           	test   eax,eax
  78dc06:	74 37                                           	je     0x78dc3f
  78dc08:	8b 80 b4 02 00 00                               	mov    eax,DWORD PTR [eax+0x2b4]
  78dc0e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78dc12:	51                                              	push   ecx
  78dc13:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  78dc17:	52                                              	push   edx
  78dc18:	57                                              	push   edi
  78dc19:	53                                              	push   ebx
  78dc1a:	8b c8                                           	mov    ecx,eax
  78dc1c:	e8 bf aa 38 00                                  	call   0xb186e0
  78dc21:	84 c0                                           	test   al,al
  78dc23:	74 1a                                           	je     0x78dc3f
  78dc25:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  78dc28:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  78dc2c:	50                                              	push   eax
  78dc2d:	e8 ce e4 fd ff                                  	call   0x76c100
  78dc32:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  78dc36:	51                                              	push   ecx
  78dc37:	8b 4d 14                                        	mov    ecx,DWORD PTR [ebp+0x14]
  78dc3a:	e8 c1 e4 fd ff                                  	call   0x76c100
  78dc3f:	5f                                              	pop    edi
  78dc40:	5e                                              	pop    esi
  78dc41:	5b                                              	pop    ebx
  78dc42:	8b e5                                           	mov    esp,ebp
  78dc44:	5d                                              	pop    ebp
  78dc45:	c3                                              	ret
  78dc46:	cc                                              	int3
  78dc47:	cc                                              	int3
  78dc48:	cc                                              	int3
  78dc49:	cc                                              	int3
  78dc4a:	cc                                              	int3
  78dc4b:	cc                                              	int3
  78dc4c:	cc                                              	int3
  78dc4d:	cc                                              	int3
  78dc4e:	cc                                              	int3
  78dc4f:	cc                                              	int3
