# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00566a10, 0x00566ac6); analyst name Animation_RetireSequenceEntry.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00566a10 <.text+0x165a10>:
  566a10:	56                   	push   esi
  566a11:	57                   	push   edi
  566a12:	8b f9                	mov    edi,ecx
  566a14:	f6 47 08 02          	test   BYTE PTR [edi+0x8],0x2
  566a18:	75 0c                	jne    0x566a26
  566a1a:	8b 47 04             	mov    eax,DWORD PTR [edi+0x4]
  566a1d:	50                   	push   eax
  566a1e:	e8 1d 07 01 00       	call   0x577140
  566a23:	83 c4 04             	add    esp,0x4
  566a26:	8b 44 24 0c          	mov    eax,DWORD PTR [esp+0xc]
  566a2a:	85 c0                	test   eax,eax
  566a2c:	74 05                	je     0x566a33
  566a2e:	83 c0 28             	add    eax,0x28
  566a31:	eb 02                	jmp    0x566a35
  566a33:	33 c0                	xor    eax,eax
  566a35:	8b 4f 04             	mov    ecx,DWORD PTR [edi+0x4]
  566a38:	51                   	push   ecx
  566a39:	50                   	push   eax
  566a3a:	e8 41 07 01 00       	call   0x577180
  566a3f:	8b 37                	mov    esi,DWORD PTR [edi]
  566a41:	83 c4 08             	add    esp,0x8
  566a44:	85 f6                	test   esi,esi
  566a46:	74 04                	je     0x566a4c
  566a48:	83 46 04 01          	add    DWORD PTR [esi+0x4],0x1
  566a4c:	8b 0f                	mov    ecx,DWORD PTR [edi]
  566a4e:	85 c9                	test   ecx,ecx
  566a50:	0f 57 c0             	xorps  xmm0,xmm0
  566a53:	c7 47 04 00 00 00 00 	mov    DWORD PTR [edi+0x4],0x0
  566a5a:	c7 47 08 00 00 00 00 	mov    DWORD PTR [edi+0x8],0x0
  566a61:	f3 0f 11 47 0c       	movss  DWORD PTR [edi+0xc],xmm0
  566a66:	f3 0f 11 47 10       	movss  DWORD PTR [edi+0x10],xmm0
  566a6b:	c7 07 00 00 00 00    	mov    DWORD PTR [edi],0x0
  566a71:	74 1a                	je     0x566a8d
  566a73:	8b 41 04             	mov    eax,DWORD PTR [ecx+0x4]
  566a76:	83 c0 ff             	add    eax,0xffffffff
  566a79:	89 41 04             	mov    DWORD PTR [ecx+0x4],eax
  566a7c:	75 0f                	jne    0x566a8d
  566a7e:	c7 41 04 01 00 00 00 	mov    DWORD PTR [ecx+0x4],0x1
  566a85:	8b 11                	mov    edx,DWORD PTR [ecx]
  566a87:	8b 02                	mov    eax,DWORD PTR [edx]
  566a89:	6a 01                	push   0x1
  566a8b:	ff d0                	call   eax
  566a8d:	80 7c 24 10 00       	cmp    BYTE PTR [esp+0x10],0x0
  566a92:	74 0d                	je     0x566aa1
  566a94:	85 f6                	test   esi,esi
  566a96:	74 29                	je     0x566ac1
  566a98:	8b 16                	mov    edx,DWORD PTR [esi]
  566a9a:	8b 42 04             	mov    eax,DWORD PTR [edx+0x4]
  566a9d:	8b ce                	mov    ecx,esi
  566a9f:	ff d0                	call   eax
  566aa1:	85 f6                	test   esi,esi
  566aa3:	74 1c                	je     0x566ac1
  566aa5:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  566aa8:	83 c0 ff             	add    eax,0xffffffff
  566aab:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  566aae:	75 11                	jne    0x566ac1
  566ab0:	c7 46 04 01 00 00 00 	mov    DWORD PTR [esi+0x4],0x1
  566ab7:	8b 16                	mov    edx,DWORD PTR [esi]
  566ab9:	8b 02                	mov    eax,DWORD PTR [edx]
  566abb:	6a 01                	push   0x1
  566abd:	8b ce                	mov    ecx,esi
  566abf:	ff d0                	call   eax
  566ac1:	5f                   	pop    edi
  566ac2:	5e                   	pop    esi
  566ac3:	c2 08 00             	ret    0x8
