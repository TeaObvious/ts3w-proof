# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function envelope 006e1d40..006e1dd2; WorldContext_ReleaseFrontJob
  6e1d40:	53                   	push   ebx
  6e1d41:	56                   	push   esi
  6e1d42:	8b f1                	mov    esi,ecx
  6e1d44:	57                   	push   edi
  6e1d45:	8d be 90 01 00 00    	lea    edi,[esi+0x190]
  6e1d4b:	68 58 87 ff 00       	push   0xff8758
  6e1d50:	8b cf                	mov    ecx,edi
  6e1d52:	e8 a9 fe df ff       	call   0x4e1c00
  6e1d57:	8b 86 c8 01 00 00    	mov    eax,DWORD PTR [esi+0x1c8]
  6e1d5d:	8b 18                	mov    ebx,DWORD PTR [eax]
  6e1d5f:	83 c0 04             	add    eax,0x4
  6e1d62:	3b 86 d0 01 00 00    	cmp    eax,DWORD PTR [esi+0x1d0]
  6e1d68:	74 17                	je     0x6e1d81
  6e1d6a:	8b cf                	mov    ecx,edi
  6e1d6c:	89 86 c8 01 00 00    	mov    DWORD PTR [esi+0x1c8],eax
  6e1d72:	e8 49 ff df ff       	call   0x4e1cc0
  6e1d77:	5f                   	pop    edi
  6e1d78:	5e                   	pop    esi
  6e1d79:	8b cb                	mov    ecx,ebx
  6e1d7b:	5b                   	pop    ebx
  6e1d7c:	e9 cf 95 eb ff       	jmp    0x59b350
  6e1d81:	8b 86 cc 01 00 00    	mov    eax,DWORD PTR [esi+0x1cc]
  6e1d87:	85 c0                	test   eax,eax
  6e1d89:	74 09                	je     0x6e1d94
  6e1d8b:	50                   	push   eax
  6e1d8c:	e8 4f 27 e0 ff       	call   0x4e44e0
  6e1d91:	83 c4 04             	add    esp,0x4
  6e1d94:	8b 86 d4 01 00 00    	mov    eax,DWORD PTR [esi+0x1d4]
  6e1d9a:	83 c0 04             	add    eax,0x4
  6e1d9d:	89 86 d4 01 00 00    	mov    DWORD PTR [esi+0x1d4],eax
  6e1da3:	8b 00                	mov    eax,DWORD PTR [eax]
  6e1da5:	89 86 cc 01 00 00    	mov    DWORD PTR [esi+0x1cc],eax
  6e1dab:	05 00 01 00 00       	add    eax,0x100
  6e1db0:	89 86 d0 01 00 00    	mov    DWORD PTR [esi+0x1d0],eax
  6e1db6:	8b 8e cc 01 00 00    	mov    ecx,DWORD PTR [esi+0x1cc]
  6e1dbc:	89 8e c8 01 00 00    	mov    DWORD PTR [esi+0x1c8],ecx
  6e1dc2:	8b cf                	mov    ecx,edi
  6e1dc4:	e8 f7 fe df ff       	call   0x4e1cc0
  6e1dc9:	5f                   	pop    edi
  6e1dca:	5e                   	pop    esi
  6e1dcb:	8b cb                	mov    ecx,ebx
  6e1dcd:	5b                   	pop    ebx
  6e1dce:	e9 7d 95 eb ff       	jmp    0x59b350
