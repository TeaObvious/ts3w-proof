# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073dcf0 (ScriptCore.CameraController::Camera_EnableObjectFollow)
Paired Ghidra pseudocode: 0073DCF0_ScriptCore_CameraController_Camera_EnableObjectFollow.c
Window: [0x0073dcf0, 0x0073dda0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073dda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073dcf0: 55 8b ec 83 e4 f0 83 ec 18 56 57 e8 d0 be 22 00
0073dd00: 85 c0 0f 84 88 00 00 00 8b c8 e8 e1 42 7e 00 85
0073dd10: c0 74 7d 8b c8 e8 c6 60 dd ff 8b f0 85 f6 74 70
0073dd20: 8b 06 8b 50 0c 68 89 dd 0f 11 8b ce ff d2 8b f8
0073dd30: 8b 06 8b 50 0c 68 db 4e 39 4d 8b ce ff d2 85 ff
0073dd40: 8b f0 74 2b d9 e8 6a 01 51 d9 1c 24 8d 44 24 18
0073dd50: 50 8d 4d 10 e8 f7 e2 02 00 8b 4d 0c 8b 55 08 50
0073dd60: 51 52 8b cf e8 b7 ad 23 00 5f 5e 8b e5 5d c3 85
0073dd70: f6 74 1d 8d 44 24 10 50 8d 4d 10 e8 d0 e2 02 00
0073dd80: 8b 4d 0c 8b 55 08 50 51 52 8b ce e8 a0 c2 23 00
0073dd90: 5f 5e 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073dcf0 <.text+0x33ccf0>:
  73dcf0:	55                                              	push   ebp
  73dcf1:	8b ec                                           	mov    ebp,esp
  73dcf3:	83 e4 f0                                        	and    esp,0xfffffff0
  73dcf6:	83 ec 18                                        	sub    esp,0x18
  73dcf9:	56                                              	push   esi
  73dcfa:	57                                              	push   edi
  73dcfb:	e8 d0 be 22 00                                  	call   0x969bd0
  73dd00:	85 c0                                           	test   eax,eax
  73dd02:	0f 84 88 00 00 00                               	je     0x73dd90
  73dd08:	8b c8                                           	mov    ecx,eax
  73dd0a:	e8 e1 42 7e 00                                  	call   0xf21ff0
  73dd0f:	85 c0                                           	test   eax,eax
  73dd11:	74 7d                                           	je     0x73dd90
  73dd13:	8b c8                                           	mov    ecx,eax
  73dd15:	e8 c6 60 dd ff                                  	call   0x513de0
  73dd1a:	8b f0                                           	mov    esi,eax
  73dd1c:	85 f6                                           	test   esi,esi
  73dd1e:	74 70                                           	je     0x73dd90
  73dd20:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73dd22:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73dd25:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dd2a:	8b ce                                           	mov    ecx,esi
  73dd2c:	ff d2                                           	call   edx
  73dd2e:	8b f8                                           	mov    edi,eax
  73dd30:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73dd32:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73dd35:	68 db 4e 39 4d                                  	push   0x4d394edb
  73dd3a:	8b ce                                           	mov    ecx,esi
  73dd3c:	ff d2                                           	call   edx
  73dd3e:	85 ff                                           	test   edi,edi
  73dd40:	8b f0                                           	mov    esi,eax
  73dd42:	74 2b                                           	je     0x73dd6f
  73dd44:	d9 e8                                           	fld1
  73dd46:	6a 01                                           	push   0x1
  73dd48:	51                                              	push   ecx
  73dd49:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73dd4c:	8d 44 24 18                                     	lea    eax,[esp+0x18]
  73dd50:	50                                              	push   eax
  73dd51:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  73dd54:	e8 f7 e2 02 00                                  	call   0x76c050
  73dd59:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  73dd5c:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  73dd5f:	50                                              	push   eax
  73dd60:	51                                              	push   ecx
  73dd61:	52                                              	push   edx
  73dd62:	8b cf                                           	mov    ecx,edi
  73dd64:	e8 b7 ad 23 00                                  	call   0x978b20
  73dd69:	5f                                              	pop    edi
  73dd6a:	5e                                              	pop    esi
  73dd6b:	8b e5                                           	mov    esp,ebp
  73dd6d:	5d                                              	pop    ebp
  73dd6e:	c3                                              	ret
  73dd6f:	85 f6                                           	test   esi,esi
  73dd71:	74 1d                                           	je     0x73dd90
  73dd73:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  73dd77:	50                                              	push   eax
  73dd78:	8d 4d 10                                        	lea    ecx,[ebp+0x10]
  73dd7b:	e8 d0 e2 02 00                                  	call   0x76c050
  73dd80:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  73dd83:	8b 55 08                                        	mov    edx,DWORD PTR [ebp+0x8]
  73dd86:	50                                              	push   eax
  73dd87:	51                                              	push   ecx
  73dd88:	52                                              	push   edx
  73dd89:	8b ce                                           	mov    ecx,esi
  73dd8b:	e8 a0 c2 23 00                                  	call   0x97a030
  73dd90:	5f                                              	pop    edi
  73dd91:	5e                                              	pop    esi
  73dd92:	8b e5                                           	mov    esp,ebp
  73dd94:	5d                                              	pop    ebp
  73dd95:	c3                                              	ret
  73dd96:	cc                                              	int3
  73dd97:	cc                                              	int3
  73dd98:	cc                                              	int3
  73dd99:	cc                                              	int3
  73dd9a:	cc                                              	int3
  73dd9b:	cc                                              	int3
  73dd9c:	cc                                              	int3
  73dd9d:	cc                                              	int3
  73dd9e:	cc                                              	int3
  73dd9f:	cc                                              	int3
