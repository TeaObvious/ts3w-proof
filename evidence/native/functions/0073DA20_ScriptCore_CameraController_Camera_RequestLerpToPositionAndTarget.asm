# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0073da20 (ScriptCore.CameraController::Camera_RequestLerpToPositionAndTarget)
Paired Ghidra pseudocode: 0073DA20_ScriptCore_CameraController_Camera_RequestLerpToPositionAndTarget.c
Window: [0x0073da20, 0x0073db70) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0073db70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0073da20: 55 8b ec 83 e4 f0 83 ec 24 f3 0f 10 4d 1c f3 0f
0073da30: 10 45 14 f3 0f 11 4c 24 0c f3 0f 10 4d 18 f3 0f
0073da40: 11 4c 24 08 f3 0f 10 4d 10 f3 0f 11 44 24 10 f3
0073da50: 0f 11 44 24 04 0f 28 44 24 04 f3 0f 11 4c 24 0c
0073da60: f3 0f 10 4d 0c 53 0f 29 44 24 18 f3 0f 10 45 08
0073da70: f3 0f 11 44 24 14 f3 0f 11 4c 24 0c f3 0f 11 44
0073da80: 24 08 0f 28 44 24 08 56 57 0f 29 44 24 10 e8 3d
0073da90: c1 22 00 85 c0 0f 84 c1 00 00 00 8b c8 e8 4e 45
0073daa0: 7e 00 85 c0 0f 84 b2 00 00 00 8b c8 e8 2f 63 dd
0073dab0: ff 8b f0 85 f6 0f 84 a1 00 00 00 8b 06 8b 50 0c
0073dac0: 68 89 dd 0f 11 8b ce ff d2 8b f8 8b 06 8b 50 0c
0073dad0: 68 db 4e 39 4d 8b ce ff d2 8b d8 8b 06 8b 50 0c
0073dae0: 68 9b 61 bc 14 8b ce ff d2 85 ff 74 29 8b 45 24
0073daf0: d9 45 20 6a 01 6a 00 6a 01 50 51 d9 1c 24 8d 4c
0073db00: 24 34 51 8d 54 24 28 52 8b cf e8 f1 67 23 00 5f
0073db10: 5e 5b 8b e5 5d c3 85 db 74 26 8b cb e8 8f c2 23
0073db20: 00 d9 45 20 51 d9 1c 24 8d 44 24 24 50 8d 4c 24
0073db30: 18 51 8b cb e8 17 c4 23 00 5f 5e 5b 8b e5 5d c3
0073db40: 85 c0 74 18 d9 45 20 51 d9 1c 24 8d 54 24 24 52
0073db50: 8d 4c 24 18 51 8b c8 e8 94 9b 22 00 5f 5e 5b 8b
0073db60: e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0073da20 <.text+0x33ca20>:
  73da20:	55                                              	push   ebp
  73da21:	8b ec                                           	mov    ebp,esp
  73da23:	83 e4 f0                                        	and    esp,0xfffffff0
  73da26:	83 ec 24                                        	sub    esp,0x24
  73da29:	f3 0f 10 4d 1c                                  	movss  xmm1,DWORD PTR [ebp+0x1c]
  73da2e:	f3 0f 10 45 14                                  	movss  xmm0,DWORD PTR [ebp+0x14]
  73da33:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  73da39:	f3 0f 10 4d 18                                  	movss  xmm1,DWORD PTR [ebp+0x18]
  73da3e:	f3 0f 11 4c 24 08                               	movss  DWORD PTR [esp+0x8],xmm1
  73da44:	f3 0f 10 4d 10                                  	movss  xmm1,DWORD PTR [ebp+0x10]
  73da49:	f3 0f 11 44 24 10                               	movss  DWORD PTR [esp+0x10],xmm0
  73da4f:	f3 0f 11 44 24 04                               	movss  DWORD PTR [esp+0x4],xmm0
  73da55:	0f 28 44 24 04                                  	movaps xmm0,XMMWORD PTR [esp+0x4]
  73da5a:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  73da60:	f3 0f 10 4d 0c                                  	movss  xmm1,DWORD PTR [ebp+0xc]
  73da65:	53                                              	push   ebx
  73da66:	0f 29 44 24 18                                  	movaps XMMWORD PTR [esp+0x18],xmm0
  73da6b:	f3 0f 10 45 08                                  	movss  xmm0,DWORD PTR [ebp+0x8]
  73da70:	f3 0f 11 44 24 14                               	movss  DWORD PTR [esp+0x14],xmm0
  73da76:	f3 0f 11 4c 24 0c                               	movss  DWORD PTR [esp+0xc],xmm1
  73da7c:	f3 0f 11 44 24 08                               	movss  DWORD PTR [esp+0x8],xmm0
  73da82:	0f 28 44 24 08                                  	movaps xmm0,XMMWORD PTR [esp+0x8]
  73da87:	56                                              	push   esi
  73da88:	57                                              	push   edi
  73da89:	0f 29 44 24 10                                  	movaps XMMWORD PTR [esp+0x10],xmm0
  73da8e:	e8 3d c1 22 00                                  	call   0x969bd0
  73da93:	85 c0                                           	test   eax,eax
  73da95:	0f 84 c1 00 00 00                               	je     0x73db5c
  73da9b:	8b c8                                           	mov    ecx,eax
  73da9d:	e8 4e 45 7e 00                                  	call   0xf21ff0
  73daa2:	85 c0                                           	test   eax,eax
  73daa4:	0f 84 b2 00 00 00                               	je     0x73db5c
  73daaa:	8b c8                                           	mov    ecx,eax
  73daac:	e8 2f 63 dd ff                                  	call   0x513de0
  73dab1:	8b f0                                           	mov    esi,eax
  73dab3:	85 f6                                           	test   esi,esi
  73dab5:	0f 84 a1 00 00 00                               	je     0x73db5c
  73dabb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73dabd:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73dac0:	68 89 dd 0f 11                                  	push   0x110fdd89
  73dac5:	8b ce                                           	mov    ecx,esi
  73dac7:	ff d2                                           	call   edx
  73dac9:	8b f8                                           	mov    edi,eax
  73dacb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73dacd:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73dad0:	68 db 4e 39 4d                                  	push   0x4d394edb
  73dad5:	8b ce                                           	mov    ecx,esi
  73dad7:	ff d2                                           	call   edx
  73dad9:	8b d8                                           	mov    ebx,eax
  73dadb:	8b 06                                           	mov    eax,DWORD PTR [esi]
  73dadd:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  73dae0:	68 9b 61 bc 14                                  	push   0x14bc619b
  73dae5:	8b ce                                           	mov    ecx,esi
  73dae7:	ff d2                                           	call   edx
  73dae9:	85 ff                                           	test   edi,edi
  73daeb:	74 29                                           	je     0x73db16
  73daed:	8b 45 24                                        	mov    eax,DWORD PTR [ebp+0x24]
  73daf0:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  73daf3:	6a 01                                           	push   0x1
  73daf5:	6a 00                                           	push   0x0
  73daf7:	6a 01                                           	push   0x1
  73daf9:	50                                              	push   eax
  73dafa:	51                                              	push   ecx
  73dafb:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73dafe:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  73db02:	51                                              	push   ecx
  73db03:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  73db07:	52                                              	push   edx
  73db08:	8b cf                                           	mov    ecx,edi
  73db0a:	e8 f1 67 23 00                                  	call   0x974300
  73db0f:	5f                                              	pop    edi
  73db10:	5e                                              	pop    esi
  73db11:	5b                                              	pop    ebx
  73db12:	8b e5                                           	mov    esp,ebp
  73db14:	5d                                              	pop    ebp
  73db15:	c3                                              	ret
  73db16:	85 db                                           	test   ebx,ebx
  73db18:	74 26                                           	je     0x73db40
  73db1a:	8b cb                                           	mov    ecx,ebx
  73db1c:	e8 8f c2 23 00                                  	call   0x979db0
  73db21:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  73db24:	51                                              	push   ecx
  73db25:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73db28:	8d 44 24 24                                     	lea    eax,[esp+0x24]
  73db2c:	50                                              	push   eax
  73db2d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  73db31:	51                                              	push   ecx
  73db32:	8b cb                                           	mov    ecx,ebx
  73db34:	e8 17 c4 23 00                                  	call   0x979f50
  73db39:	5f                                              	pop    edi
  73db3a:	5e                                              	pop    esi
  73db3b:	5b                                              	pop    ebx
  73db3c:	8b e5                                           	mov    esp,ebp
  73db3e:	5d                                              	pop    ebp
  73db3f:	c3                                              	ret
  73db40:	85 c0                                           	test   eax,eax
  73db42:	74 18                                           	je     0x73db5c
  73db44:	d9 45 20                                        	fld    DWORD PTR [ebp+0x20]
  73db47:	51                                              	push   ecx
  73db48:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  73db4b:	8d 54 24 24                                     	lea    edx,[esp+0x24]
  73db4f:	52                                              	push   edx
  73db50:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  73db54:	51                                              	push   ecx
  73db55:	8b c8                                           	mov    ecx,eax
  73db57:	e8 94 9b 22 00                                  	call   0x9676f0
  73db5c:	5f                                              	pop    edi
  73db5d:	5e                                              	pop    esi
  73db5e:	5b                                              	pop    ebx
  73db5f:	8b e5                                           	mov    esp,ebp
  73db61:	5d                                              	pop    ebp
  73db62:	c3                                              	ret
  73db63:	cc                                              	int3
  73db64:	cc                                              	int3
  73db65:	cc                                              	int3
  73db66:	cc                                              	int3
  73db67:	cc                                              	int3
  73db68:	cc                                              	int3
  73db69:	cc                                              	int3
  73db6a:	cc                                              	int3
  73db6b:	cc                                              	int3
  73db6c:	cc                                              	int3
  73db6d:	cc                                              	int3
  73db6e:	cc                                              	int3
  73db6f:	cc                                              	int3
