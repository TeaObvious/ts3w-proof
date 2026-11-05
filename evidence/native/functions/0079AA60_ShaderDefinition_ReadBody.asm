# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079aa60, 0x0079ab6a); analyst name ShaderDefinition_ReadBody.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079aa60 <.text+0x399a60>:
  79aa60:	53                   	push   ebx
  79aa61:	56                   	push   esi
  79aa62:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  79aa66:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  79aa69:	57                   	push   edi
  79aa6a:	8b f9                	mov    edi,ecx
  79aa6c:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79aa6f:	50                   	push   eax
  79aa70:	8d 5f 18             	lea    ebx,[edi+0x18]
  79aa73:	53                   	push   ebx
  79aa74:	51                   	push   ecx
  79aa75:	e8 06 2f d4 ff       	call   0x4dd980
  79aa7a:	83 c4 0c             	add    esp,0xc
  79aa7d:	8b ce                	mov    ecx,esi
  79aa7f:	50                   	push   eax
  79aa80:	e8 6b cf 03 00       	call   0x7d79f0
  79aa85:	f7 03 00 04 00 00    	test   DWORD PTR [ebx],0x400
  79aa8b:	74 1c                	je     0x79aaa9
  79aa8d:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  79aa90:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79aa93:	52                   	push   edx
  79aa94:	8d 47 20             	lea    eax,[edi+0x20]
  79aa97:	50                   	push   eax
  79aa98:	51                   	push   ecx
  79aa99:	e8 e2 2e d4 ff       	call   0x4dd980
  79aa9e:	83 c4 0c             	add    esp,0xc
  79aaa1:	8b ce                	mov    ecx,esi
  79aaa3:	50                   	push   eax
  79aaa4:	e8 47 cf 03 00       	call   0x7d79f0
  79aaa9:	f7 03 00 08 00 00    	test   DWORD PTR [ebx],0x800
  79aaaf:	74 1c                	je     0x79aacd
  79aab1:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  79aab4:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79aab7:	52                   	push   edx
  79aab8:	8d 47 24             	lea    eax,[edi+0x24]
  79aabb:	50                   	push   eax
  79aabc:	51                   	push   ecx
  79aabd:	e8 be 2e d4 ff       	call   0x4dd980
  79aac2:	83 c4 0c             	add    esp,0xc
  79aac5:	8b ce                	mov    ecx,esi
  79aac7:	50                   	push   eax
  79aac8:	e8 23 cf 03 00       	call   0x7d79f0
  79aacd:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  79aad0:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  79aad3:	52                   	push   edx
  79aad4:	8d 44 24 14          	lea    eax,[esp+0x14]
  79aad8:	50                   	push   eax
  79aad9:	51                   	push   ecx
  79aada:	e8 a1 2e d4 ff       	call   0x4dd980
  79aadf:	83 c4 0c             	add    esp,0xc
  79aae2:	8b ce                	mov    ecx,esi
  79aae4:	50                   	push   eax
  79aae5:	e8 06 cf 03 00       	call   0x7d79f0
  79aaea:	80 7e 14 00          	cmp    BYTE PTR [esi+0x14],0x0
  79aaee:	74 74                	je     0x79ab64
  79aaf0:	8b 57 0c             	mov    edx,DWORD PTR [edi+0xc]
  79aaf3:	6a 04                	push   0x4
  79aaf5:	52                   	push   edx
  79aaf6:	8b ce                	mov    ecx,esi
  79aaf8:	e8 03 cf 03 00       	call   0x7d7a00
  79aafd:	84 c0                	test   al,al
  79aaff:	74 63                	je     0x79ab64
  79ab01:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  79ab05:	50                   	push   eax
  79ab06:	8b cf                	mov    ecx,edi
  79ab08:	e8 73 fe ff ff       	call   0x79a980
  79ab0d:	84 c0                	test   al,al
  79ab0f:	75 13                	jne    0x79ab24
  79ab11:	6a 00                	push   0x0
  79ab13:	8b ce                	mov    ecx,esi
  79ab15:	e8 d6 ce 03 00       	call   0x7d79f0
  79ab1a:	5f                   	pop    edi
  79ab1b:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  79ab1f:	5e                   	pop    esi
  79ab20:	5b                   	pop    ebx
  79ab21:	c2 08 00             	ret    0x8
  79ab24:	33 db                	xor    ebx,ebx
  79ab26:	39 5f 0c             	cmp    DWORD PTR [edi+0xc],ebx
  79ab29:	76 39                	jbe    0x79ab64
  79ab2b:	55                   	push   ebp
  79ab2c:	33 ed                	xor    ebp,ebp
  79ab2e:	8b ff                	mov    edi,edi
  79ab30:	8b 54 24 18          	mov    edx,DWORD PTR [esp+0x18]
  79ab34:	8b 4f 08             	mov    ecx,DWORD PTR [edi+0x8]
  79ab37:	52                   	push   edx
  79ab38:	03 cd                	add    ecx,ebp
  79ab3a:	56                   	push   esi
  79ab3b:	e8 e0 65 00 00       	call   0x7a1120
  79ab40:	84 c0                	test   al,al
  79ab42:	74 12                	je     0x79ab56
  79ab44:	83 c3 01             	add    ebx,0x1
  79ab47:	83 c5 10             	add    ebp,0x10
  79ab4a:	3b 5f 0c             	cmp    ebx,DWORD PTR [edi+0xc]
  79ab4d:	72 e1                	jb     0x79ab30
  79ab4f:	5d                   	pop    ebp
  79ab50:	5f                   	pop    edi
  79ab51:	5e                   	pop    esi
  79ab52:	5b                   	pop    ebx
  79ab53:	c2 08 00             	ret    0x8
  79ab56:	6a 00                	push   0x0
  79ab58:	8b ce                	mov    ecx,esi
  79ab5a:	e8 91 ce 03 00       	call   0x7d79f0
  79ab5f:	c6 46 14 00          	mov    BYTE PTR [esi+0x14],0x0
  79ab63:	5d                   	pop    ebp
  79ab64:	5f                   	pop    edi
  79ab65:	5e                   	pop    esi
  79ab66:	5b                   	pop    ebx
  79ab67:	c2 08 00             	ret    0x8
