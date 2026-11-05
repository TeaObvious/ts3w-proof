# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00567ac0, 0x00567c22); analyst name AnimationSequenceController_StopAll.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00567ac0 <.text+0x166ac0>:
  567ac0:	83 ec 28             	sub    esp,0x28
  567ac3:	53                   	push   ebx
  567ac4:	56                   	push   esi
  567ac5:	57                   	push   edi
  567ac6:	8b f1                	mov    esi,ecx
  567ac8:	33 ff                	xor    edi,edi
  567aca:	3b f7                	cmp    esi,edi
  567acc:	74 05                	je     0x567ad3
  567ace:	8d 46 28             	lea    eax,[esi+0x28]
  567ad1:	eb 02                	jmp    0x567ad5
  567ad3:	33 c0                	xor    eax,eax
  567ad5:	50                   	push   eax
  567ad6:	e8 a5 f5 00 00       	call   0x577080
  567adb:	8b 4e 2c             	mov    ecx,DWORD PTR [esi+0x2c]
  567ade:	83 c4 04             	add    esp,0x4
  567ae1:	e8 5a 47 00 00       	call   0x56c240
  567ae6:	bb 01 00 00 00       	mov    ebx,0x1
  567aeb:	53                   	push   ebx
  567aec:	8b ce                	mov    ecx,esi
  567aee:	e8 3d f8 ff ff       	call   0x567330
  567af3:	8b 46 3c             	mov    eax,DWORD PTR [esi+0x3c]
  567af6:	3b c7                	cmp    eax,edi
  567af8:	89 44 24 20          	mov    DWORD PTR [esp+0x20],eax
  567afc:	74 03                	je     0x567b01
  567afe:	01 58 04             	add    DWORD PTR [eax+0x4],ebx
  567b01:	8b 46 40             	mov    eax,DWORD PTR [esi+0x40]
  567b04:	f3 0f 10 46 48       	movss  xmm0,DWORD PTR [esi+0x48]
  567b09:	8b 4e 44             	mov    ecx,DWORD PTR [esi+0x44]
  567b0c:	89 44 24 24          	mov    DWORD PTR [esp+0x24],eax
  567b10:	8b 46 50             	mov    eax,DWORD PTR [esi+0x50]
  567b13:	3b c7                	cmp    eax,edi
  567b15:	f3 0f 11 44 24 2c    	movss  DWORD PTR [esp+0x2c],xmm0
  567b1b:	f3 0f 10 46 4c       	movss  xmm0,DWORD PTR [esi+0x4c]
  567b20:	89 4c 24 28          	mov    DWORD PTR [esp+0x28],ecx
  567b24:	f3 0f 11 44 24 30    	movss  DWORD PTR [esp+0x30],xmm0
  567b2a:	89 44 24 0c          	mov    DWORD PTR [esp+0xc],eax
  567b2e:	74 03                	je     0x567b33
  567b30:	01 58 04             	add    DWORD PTR [eax+0x4],ebx
  567b33:	f3 0f 10 46 5c       	movss  xmm0,DWORD PTR [esi+0x5c]
  567b38:	8b 56 54             	mov    edx,DWORD PTR [esi+0x54]
  567b3b:	8b 46 58             	mov    eax,DWORD PTR [esi+0x58]
  567b3e:	8b 4e 3c             	mov    ecx,DWORD PTR [esi+0x3c]
  567b41:	3b cf                	cmp    ecx,edi
  567b43:	f3 0f 11 44 24 18    	movss  DWORD PTR [esp+0x18],xmm0
  567b49:	f3 0f 10 46 60       	movss  xmm0,DWORD PTR [esi+0x60]
  567b4e:	f3 0f 11 44 24 1c    	movss  DWORD PTR [esp+0x1c],xmm0
  567b54:	0f 57 c0             	xorps  xmm0,xmm0
  567b57:	89 54 24 10          	mov    DWORD PTR [esp+0x10],edx
  567b5b:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  567b5f:	89 7e 40             	mov    DWORD PTR [esi+0x40],edi
  567b62:	89 7e 44             	mov    DWORD PTR [esi+0x44],edi
  567b65:	f3 0f 11 46 48       	movss  DWORD PTR [esi+0x48],xmm0
  567b6a:	f3 0f 11 46 4c       	movss  DWORD PTR [esi+0x4c],xmm0
  567b6f:	89 7e 3c             	mov    DWORD PTR [esi+0x3c],edi
  567b72:	74 1a                	je     0x567b8e
  567b74:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  567b77:	83 c0 ff             	add    eax,0xffffffff
  567b7a:	3b c7                	cmp    eax,edi
  567b7c:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567b7f:	75 0d                	jne    0x567b8e
  567b81:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567b84:	8b 11                	mov    edx,DWORD PTR [ecx]
  567b86:	8b 02                	mov    eax,DWORD PTR [edx]
  567b88:	53                   	push   ebx
  567b89:	ff d0                	call   eax
  567b8b:	0f 57 c0             	xorps  xmm0,xmm0
  567b8e:	8b 4e 50             	mov    ecx,DWORD PTR [esi+0x50]
  567b91:	3b cf                	cmp    ecx,edi
  567b93:	89 7e 54             	mov    DWORD PTR [esi+0x54],edi
  567b96:	89 7e 58             	mov    DWORD PTR [esi+0x58],edi
  567b99:	f3 0f 11 46 5c       	movss  DWORD PTR [esi+0x5c],xmm0
  567b9e:	f3 0f 11 46 60       	movss  DWORD PTR [esi+0x60],xmm0
  567ba3:	89 7e 50             	mov    DWORD PTR [esi+0x50],edi
  567ba6:	74 17                	je     0x567bbf
  567ba8:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  567bab:	83 c0 ff             	add    eax,0xffffffff
  567bae:	3b c7                	cmp    eax,edi
  567bb0:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567bb3:	75 0a                	jne    0x567bbf
  567bb5:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567bb8:	8b 11                	mov    edx,DWORD PTR [ecx]
  567bba:	8b 02                	mov    eax,DWORD PTR [edx]
  567bbc:	53                   	push   ebx
  567bbd:	ff d0                	call   eax
  567bbf:	53                   	push   ebx
  567bc0:	56                   	push   esi
  567bc1:	8d 4c 24 28          	lea    ecx,[esp+0x28]
  567bc5:	e8 46 ee ff ff       	call   0x566a10
  567bca:	53                   	push   ebx
  567bcb:	56                   	push   esi
  567bcc:	8d 4c 24 14          	lea    ecx,[esp+0x14]
  567bd0:	e8 3b ee ff ff       	call   0x566a10
  567bd5:	8b 4c 24 0c          	mov    ecx,DWORD PTR [esp+0xc]
  567bd9:	3b cf                	cmp    ecx,edi
  567bdb:	0f 57 c0             	xorps  xmm0,xmm0
  567bde:	f3 0f 11 46 64       	movss  DWORD PTR [esi+0x64],xmm0
  567be3:	74 17                	je     0x567bfc
  567be5:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  567be8:	83 c0 ff             	add    eax,0xffffffff
  567beb:	3b c7                	cmp    eax,edi
  567bed:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567bf0:	75 0a                	jne    0x567bfc
  567bf2:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567bf5:	8b 11                	mov    edx,DWORD PTR [ecx]
  567bf7:	8b 02                	mov    eax,DWORD PTR [edx]
  567bf9:	53                   	push   ebx
  567bfa:	ff d0                	call   eax
  567bfc:	8b 4c 24 20          	mov    ecx,DWORD PTR [esp+0x20]
  567c00:	3b cf                	cmp    ecx,edi
  567c02:	74 17                	je     0x567c1b
  567c04:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  567c07:	83 c0 ff             	add    eax,0xffffffff
  567c0a:	3b c7                	cmp    eax,edi
  567c0c:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  567c0f:	75 0a                	jne    0x567c1b
  567c11:	89 59 04             	mov    DWORD PTR [ecx+0x4],ebx
  567c14:	8b 11                	mov    edx,DWORD PTR [ecx]
  567c16:	8b 02                	mov    eax,DWORD PTR [edx]
  567c18:	53                   	push   ebx
  567c19:	ff d0                	call   eax
  567c1b:	5f                   	pop    edi
  567c1c:	5e                   	pop    esi
  567c1d:	5b                   	pop    ebx
  567c1e:	83 c4 28             	add    esp,0x28
  567c21:	c3                   	ret
