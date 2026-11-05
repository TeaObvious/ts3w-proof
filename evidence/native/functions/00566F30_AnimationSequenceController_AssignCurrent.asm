# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00566f30, 0x0056706d); analyst name AnimationSequenceController_AssignCurrent.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00566f30 <.text+0x165f30>:
  566f30:	83 ec 14             	sub    esp,0x14
  566f33:	53                   	push   ebx
  566f34:	55                   	push   ebp
  566f35:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
  566f39:	f3 0f 10 45 0c       	movss  xmm0,DWORD PTR [ebp+0xc]
  566f3e:	0f 2f 05 cc 4c 0f 01 	comiss xmm0,DWORD PTR ds:0x10f4ccc
  566f45:	56                   	push   esi
  566f46:	57                   	push   edi
  566f47:	8b f1                	mov    esi,ecx
  566f49:	0f 86 d7 00 00 00    	jbe    0x567026
  566f4f:	8d 7e 50             	lea    edi,[esi+0x50]
  566f52:	33 db                	xor    ebx,ebx
  566f54:	39 1f                	cmp    DWORD PTR [edi],ebx
  566f56:	75 0f                	jne    0x566f67
  566f58:	39 5e 3c             	cmp    DWORD PTR [esi+0x3c],ebx
  566f5b:	75 0a                	jne    0x566f67
  566f5d:	f6 45 08 10          	test   BYTE PTR [ebp+0x8],0x10
  566f61:	0f 84 bf 00 00 00    	je     0x567026
  566f67:	8d 44 24 28          	lea    eax,[esp+0x28]
  566f6b:	50                   	push   eax
  566f6c:	e8 5f fb ff ff       	call   0x566ad0
  566f71:	55                   	push   ebp
  566f72:	8b cf                	mov    ecx,edi
  566f74:	e8 87 fc ff ff       	call   0x566c00
  566f79:	0f 57 c0             	xorps  xmm0,xmm0
  566f7c:	89 5c 24 14          	mov    DWORD PTR [esp+0x14],ebx
  566f80:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  566f84:	8b 5c 24 28          	mov    ebx,DWORD PTR [esp+0x28]
  566f88:	33 ff                	xor    edi,edi
  566f8a:	85 db                	test   ebx,ebx
  566f8c:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  566f90:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  566f96:	74 0a                	je     0x566fa2
  566f98:	83 43 04 01          	add    DWORD PTR [ebx+0x4],0x1
  566f9c:	8b fb                	mov    edi,ebx
  566f9e:	89 7c 24 10          	mov    DWORD PTR [esp+0x10],edi
  566fa2:	f3 0f 10 05 58 2a fc 00 	movss  xmm0,DWORD PTR ds:0xfc2a58
  566faa:	8d 54 24 10          	lea    edx,[esp+0x10]
  566fae:	8d 4e 3c             	lea    ecx,[esi+0x3c]
  566fb1:	52                   	push   edx
  566fb2:	f3 0f 11 44 24 24    	movss  DWORD PTR [esp+0x24],xmm0
  566fb8:	e8 43 fc ff ff       	call   0x566c00
  566fbd:	d9 ee                	fldz
  566fbf:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  566fc2:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  566fc5:	83 ec 08             	sub    esp,0x8
  566fc8:	d9 5c 24 04          	fstp   DWORD PTR [esp+0x4]
  566fcc:	d9 45 0c             	fld    DWORD PTR [ebp+0xc]
  566fcf:	d9 1c 24             	fstp   DWORD PTR [esp]
  566fd2:	50                   	push   eax
  566fd3:	51                   	push   ecx
  566fd4:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  566fd7:	e8 d4 52 00 00       	call   0x56c2b0
  566fdc:	85 ff                	test   edi,edi
  566fde:	74 1c                	je     0x566ffc
  566fe0:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  566fe3:	83 c0 ff             	add    eax,0xffffffff
  566fe6:	89 47 04             	mov    DWORD PTR [edi+0x4],eax
  566fe9:	75 11                	jne    0x566ffc
  566feb:	c7 47 04 01 00 00 00 	mov    DWORD PTR [edi+0x4],0x1
  566ff2:	8b 17                	mov    edx,DWORD PTR [edi]
  566ff4:	8b 02                	mov    eax,DWORD PTR [edx]
  566ff6:	6a 01                	push   0x1
  566ff8:	8b cf                	mov    ecx,edi
  566ffa:	ff d0                	call   eax
  566ffc:	85 db                	test   ebx,ebx
  566ffe:	74 63                	je     0x567063
  567000:	8b 43 04             	mov    eax,DWORD PTR [ebx+0x4]
  567003:	83 c0 ff             	add    eax,0xffffffff
  567006:	89 43 04             	mov    DWORD PTR [ebx+0x4],eax
  567009:	75 58                	jne    0x567063
  56700b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [ebx+0x4],0x1
  567012:	8b 13                	mov    edx,DWORD PTR [ebx]
  567014:	8b 02                	mov    eax,DWORD PTR [edx]
  567016:	6a 01                	push   0x1
  567018:	8b cb                	mov    ecx,ebx
  56701a:	ff d0                	call   eax
  56701c:	5f                   	pop    edi
  56701d:	5e                   	pop    esi
  56701e:	5d                   	pop    ebp
  56701f:	5b                   	pop    ebx
  567020:	83 c4 14             	add    esp,0x14
  567023:	c2 04 00             	ret    0x4
  567026:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  567029:	e8 12 52 00 00       	call   0x56c240
  56702e:	6a 01                	push   0x1
  567030:	56                   	push   esi
  567031:	8d 4e 3c             	lea    ecx,[esi+0x3c]
  567034:	e8 d7 f9 ff ff       	call   0x566a10
  567039:	6a 01                	push   0x1
  56703b:	8d 7e 50             	lea    edi,[esi+0x50]
  56703e:	56                   	push   esi
  56703f:	8b cf                	mov    ecx,edi
  567041:	e8 ca f9 ff ff       	call   0x566a10
  567046:	55                   	push   ebp
  567047:	8b cf                	mov    ecx,edi
  567049:	e8 b2 fb ff ff       	call   0x566c00
  56704e:	8b 3f                	mov    edi,DWORD PTR [edi]
  567050:	85 ff                	test   edi,edi
  567052:	74 0f                	je     0x567063
  567054:	8b 17                	mov    edx,DWORD PTR [edi]
  567056:	d9 ee                	fldz
  567058:	8b 42 08             	mov    eax,DWORD PTR [edx+0x8]
  56705b:	51                   	push   ecx
  56705c:	8b cf                	mov    ecx,edi
  56705e:	d9 1c 24             	fstp   DWORD PTR [esp]
  567061:	ff d0                	call   eax
  567063:	5f                   	pop    edi
  567064:	5e                   	pop    esi
  567065:	5d                   	pop    ebp
  567066:	5b                   	pop    ebx
  567067:	83 c4 14             	add    esp,0x14
  56706a:	c2 04 00             	ret    0x4
