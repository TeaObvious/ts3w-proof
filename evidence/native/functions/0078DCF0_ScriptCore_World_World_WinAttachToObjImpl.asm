# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078dcf0 (ScriptCore.World::World_WinAttachToObjImpl)
Paired Ghidra pseudocode: 0078DCF0_ScriptCore_World_World_WinAttachToObjImpl.c
Window: [0x0078dcf0, 0x0078df10) (544 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078df10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078dcf0: e8 9b b6 fd ff 8b 4c 24 04 8b 10 8b 92 cc 00 00
0078dd00: 00 51 8b c8 ff d2 85 c0 0f 84 f2 01 00 00 8b 10
0078dd10: 57 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 85
0078dd20: ff 0f 84 d8 01 00 00 80 7c 24 2c 00 56 6a 00 0f
0078dd30: 84 22 01 00 00 8b 17 8b 82 10 01 00 00 8b cf ff
0078dd40: d0 8b f0 85 f6 74 40 53 33 db 85 f6 74 14 8b 16
0078dd50: 8b 42 0c 68 6a 52 86 04 8b ce ff d0 85 c0 74 02
0078dd60: 8b de 8b 17 8b 82 10 01 00 00 56 8b cf ff d0 85
0078dd70: db 8b f0 74 0d 8b 17 8b 82 0c 01 00 00 53 8b cf
0078dd80: ff d0 85 f6 75 c2 5b 6a 00 68 f8 19 01 01 6a 10
0078dd90: 68 a0 00 00 00 e8 16 73 d7 ff 83 c4 10 85 c0 0f
0078dda0: 84 ab 00 00 00 8b c8 e8 74 ea 04 00 8b f0 85 f6
0078ddb0: 74 08 8b 16 8b 02 8b ce ff d0 8b 44 24 14 8b 4c
0078ddc0: 24 10 8b 16 8b 92 9c 00 00 00 50 51 8b ce ff d2
0078ddd0: d9 44 24 20 8b 06 8b 90 a4 00 00 00 83 ec 0c d9
0078dde0: 5c 24 08 8b ce d9 44 24 28 d9 5c 24 04 d9 44 24
0078ddf0: 24 d9 1c 24 ff d2 d9 44 24 28 8b 06 8b 90 a8 00
0078de00: 00 00 83 ec 08 d9 5c 24 04 8b ce d9 44 24 2c d9
0078de10: 1c 24 ff d2 8b 44 24 2c 50 8b ce e8 70 e2 04 00
0078de20: 8b 4c 24 34 6a 00 51 8b ce e8 b2 e2 04 00 8b 17
0078de30: 8b 82 08 01 00 00 56 8b cf ff d0 8b 16 8b 42 60
0078de40: 57 8b ce ff d0 8b 16 8b 42 04 8b ce 5e 5f ff e0
0078de50: 33 f6 e9 63 ff ff ff 68 e0 19 01 01 6a 10 6a 60
0078de60: e8 4b 72 d7 ff 83 c4 10 85 c0 0f 84 8b 00 00 00
0078de70: 8b c8 e8 09 ec 04 00 8b f0 85 f6 74 08 8b 16 8b
0078de80: 02 8b ce ff d0 8b 4c 24 14 8b 54 24 10 51 52 8b
0078de90: ce e8 da ea 04 00 d9 44 24 20 83 ec 0c d9 5c 24
0078dea0: 08 8b ce d9 44 24 28 d9 5c 24 04 d9 44 24 24 d9
0078deb0: 1c 24 e8 19 eb 04 00 d9 44 24 28 83 ec 08 d9 5c
0078dec0: 24 04 8b ce d9 44 24 2c d9 1c 24 e8 60 eb 04 00
0078ded0: 8b 44 24 2c 50 8b ce e8 d4 ea 04 00 8a 4c 24 34
0078dee0: 88 4e 33 8b 17 8b 82 88 00 00 00 56 8b cf ff d0
0078def0: 8b 16 8b 42 04 8b ce 5e 5f ff e0 33 f6 eb 86 5f
0078df00: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078dcf0 <.text+0x38ccf0>:
  78dcf0:	e8 9b b6 fd ff                                  	call   0x769390
  78dcf5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  78dcf9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78dcfb:	8b 92 cc 00 00 00                               	mov    edx,DWORD PTR [edx+0xcc]
  78dd01:	51                                              	push   ecx
  78dd02:	8b c8                                           	mov    ecx,eax
  78dd04:	ff d2                                           	call   edx
  78dd06:	85 c0                                           	test   eax,eax
  78dd08:	0f 84 f2 01 00 00                               	je     0x78df00
  78dd0e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  78dd10:	57                                              	push   edi
  78dd11:	8b c8                                           	mov    ecx,eax
  78dd13:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78dd16:	68 18 82 ee ee                                  	push   0xeeee8218
  78dd1b:	ff d0                                           	call   eax
  78dd1d:	8b f8                                           	mov    edi,eax
  78dd1f:	85 ff                                           	test   edi,edi
  78dd21:	0f 84 d8 01 00 00                               	je     0x78deff
  78dd27:	80 7c 24 2c 00                                  	cmp    BYTE PTR [esp+0x2c],0x0
  78dd2c:	56                                              	push   esi
  78dd2d:	6a 00                                           	push   0x0
  78dd2f:	0f 84 22 01 00 00                               	je     0x78de57
  78dd35:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78dd37:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78dd3d:	8b cf                                           	mov    ecx,edi
  78dd3f:	ff d0                                           	call   eax
  78dd41:	8b f0                                           	mov    esi,eax
  78dd43:	85 f6                                           	test   esi,esi
  78dd45:	74 40                                           	je     0x78dd87
  78dd47:	53                                              	push   ebx
  78dd48:	33 db                                           	xor    ebx,ebx
  78dd4a:	85 f6                                           	test   esi,esi
  78dd4c:	74 14                                           	je     0x78dd62
  78dd4e:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78dd50:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  78dd53:	68 6a 52 86 04                                  	push   0x486526a
  78dd58:	8b ce                                           	mov    ecx,esi
  78dd5a:	ff d0                                           	call   eax
  78dd5c:	85 c0                                           	test   eax,eax
  78dd5e:	74 02                                           	je     0x78dd62
  78dd60:	8b de                                           	mov    ebx,esi
  78dd62:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78dd64:	8b 82 10 01 00 00                               	mov    eax,DWORD PTR [edx+0x110]
  78dd6a:	56                                              	push   esi
  78dd6b:	8b cf                                           	mov    ecx,edi
  78dd6d:	ff d0                                           	call   eax
  78dd6f:	85 db                                           	test   ebx,ebx
  78dd71:	8b f0                                           	mov    esi,eax
  78dd73:	74 0d                                           	je     0x78dd82
  78dd75:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78dd77:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  78dd7d:	53                                              	push   ebx
  78dd7e:	8b cf                                           	mov    ecx,edi
  78dd80:	ff d0                                           	call   eax
  78dd82:	85 f6                                           	test   esi,esi
  78dd84:	75 c2                                           	jne    0x78dd48
  78dd86:	5b                                              	pop    ebx
  78dd87:	6a 00                                           	push   0x0
  78dd89:	68 f8 19 01 01                                  	push   0x10119f8
  78dd8e:	6a 10                                           	push   0x10
  78dd90:	68 a0 00 00 00                                  	push   0xa0
  78dd95:	e8 16 73 d7 ff                                  	call   0x5050b0
  78dd9a:	83 c4 10                                        	add    esp,0x10
  78dd9d:	85 c0                                           	test   eax,eax
  78dd9f:	0f 84 ab 00 00 00                               	je     0x78de50
  78dda5:	8b c8                                           	mov    ecx,eax
  78dda7:	e8 74 ea 04 00                                  	call   0x7dc820
  78ddac:	8b f0                                           	mov    esi,eax
  78ddae:	85 f6                                           	test   esi,esi
  78ddb0:	74 08                                           	je     0x78ddba
  78ddb2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78ddb4:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78ddb6:	8b ce                                           	mov    ecx,esi
  78ddb8:	ff d0                                           	call   eax
  78ddba:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  78ddbe:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  78ddc2:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78ddc4:	8b 92 9c 00 00 00                               	mov    edx,DWORD PTR [edx+0x9c]
  78ddca:	50                                              	push   eax
  78ddcb:	51                                              	push   ecx
  78ddcc:	8b ce                                           	mov    ecx,esi
  78ddce:	ff d2                                           	call   edx
  78ddd0:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78ddd4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78ddd6:	8b 90 a4 00 00 00                               	mov    edx,DWORD PTR [eax+0xa4]
  78dddc:	83 ec 0c                                        	sub    esp,0xc
  78dddf:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78dde3:	8b ce                                           	mov    ecx,esi
  78dde5:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78dde9:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78dded:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78ddf1:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78ddf4:	ff d2                                           	call   edx
  78ddf6:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78ddfa:	8b 06                                           	mov    eax,DWORD PTR [esi]
  78ddfc:	8b 90 a8 00 00 00                               	mov    edx,DWORD PTR [eax+0xa8]
  78de02:	83 ec 08                                        	sub    esp,0x8
  78de05:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78de09:	8b ce                                           	mov    ecx,esi
  78de0b:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  78de0f:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78de12:	ff d2                                           	call   edx
  78de14:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78de18:	50                                              	push   eax
  78de19:	8b ce                                           	mov    ecx,esi
  78de1b:	e8 70 e2 04 00                                  	call   0x7dc090
  78de20:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  78de24:	6a 00                                           	push   0x0
  78de26:	51                                              	push   ecx
  78de27:	8b ce                                           	mov    ecx,esi
  78de29:	e8 b2 e2 04 00                                  	call   0x7dc0e0
  78de2e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78de30:	8b 82 08 01 00 00                               	mov    eax,DWORD PTR [edx+0x108]
  78de36:	56                                              	push   esi
  78de37:	8b cf                                           	mov    ecx,edi
  78de39:	ff d0                                           	call   eax
  78de3b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78de3d:	8b 42 60                                        	mov    eax,DWORD PTR [edx+0x60]
  78de40:	57                                              	push   edi
  78de41:	8b ce                                           	mov    ecx,esi
  78de43:	ff d0                                           	call   eax
  78de45:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78de47:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78de4a:	8b ce                                           	mov    ecx,esi
  78de4c:	5e                                              	pop    esi
  78de4d:	5f                                              	pop    edi
  78de4e:	ff e0                                           	jmp    eax
  78de50:	33 f6                                           	xor    esi,esi
  78de52:	e9 63 ff ff ff                                  	jmp    0x78ddba
  78de57:	68 e0 19 01 01                                  	push   0x10119e0
  78de5c:	6a 10                                           	push   0x10
  78de5e:	6a 60                                           	push   0x60
  78de60:	e8 4b 72 d7 ff                                  	call   0x5050b0
  78de65:	83 c4 10                                        	add    esp,0x10
  78de68:	85 c0                                           	test   eax,eax
  78de6a:	0f 84 8b 00 00 00                               	je     0x78defb
  78de70:	8b c8                                           	mov    ecx,eax
  78de72:	e8 09 ec 04 00                                  	call   0x7dca80
  78de77:	8b f0                                           	mov    esi,eax
  78de79:	85 f6                                           	test   esi,esi
  78de7b:	74 08                                           	je     0x78de85
  78de7d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78de7f:	8b 02                                           	mov    eax,DWORD PTR [edx]
  78de81:	8b ce                                           	mov    ecx,esi
  78de83:	ff d0                                           	call   eax
  78de85:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  78de89:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  78de8d:	51                                              	push   ecx
  78de8e:	52                                              	push   edx
  78de8f:	8b ce                                           	mov    ecx,esi
  78de91:	e8 da ea 04 00                                  	call   0x7dc970
  78de96:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  78de9a:	83 ec 0c                                        	sub    esp,0xc
  78de9d:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78dea1:	8b ce                                           	mov    ecx,esi
  78dea3:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78dea7:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78deab:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  78deaf:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78deb2:	e8 19 eb 04 00                                  	call   0x7dc9d0
  78deb7:	d9 44 24 28                                     	fld    DWORD PTR [esp+0x28]
  78debb:	83 ec 08                                        	sub    esp,0x8
  78debe:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  78dec2:	8b ce                                           	mov    ecx,esi
  78dec4:	d9 44 24 2c                                     	fld    DWORD PTR [esp+0x2c]
  78dec8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78decb:	e8 60 eb 04 00                                  	call   0x7dca30
  78ded0:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
  78ded4:	50                                              	push   eax
  78ded5:	8b ce                                           	mov    ecx,esi
  78ded7:	e8 d4 ea 04 00                                  	call   0x7dc9b0
  78dedc:	8a 4c 24 34                                     	mov    cl,BYTE PTR [esp+0x34]
  78dee0:	88 4e 33                                        	mov    BYTE PTR [esi+0x33],cl
  78dee3:	8b 17                                           	mov    edx,DWORD PTR [edi]
  78dee5:	8b 82 88 00 00 00                               	mov    eax,DWORD PTR [edx+0x88]
  78deeb:	56                                              	push   esi
  78deec:	8b cf                                           	mov    ecx,edi
  78deee:	ff d0                                           	call   eax
  78def0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  78def2:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  78def5:	8b ce                                           	mov    ecx,esi
  78def7:	5e                                              	pop    esi
  78def8:	5f                                              	pop    edi
  78def9:	ff e0                                           	jmp    eax
  78defb:	33 f6                                           	xor    esi,esi
  78defd:	eb 86                                           	jmp    0x78de85
  78deff:	5f                                              	pop    edi
  78df00:	c3                                              	ret
  78df01:	cc                                              	int3
  78df02:	cc                                              	int3
  78df03:	cc                                              	int3
  78df04:	cc                                              	int3
  78df05:	cc                                              	int3
  78df06:	cc                                              	int3
  78df07:	cc                                              	int3
  78df08:	cc                                              	int3
  78df09:	cc                                              	int3
  78df0a:	cc                                              	int3
  78df0b:	cc                                              	int3
  78df0c:	cc                                              	int3
  78df0d:	cc                                              	int3
  78df0e:	cc                                              	int3
  78df0f:	cc                                              	int3
