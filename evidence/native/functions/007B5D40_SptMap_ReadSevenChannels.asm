# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

007b5d40 <.text+0x3b4d40>:
  7b5d40:	53                   	push   ebx
  7b5d41:	56                   	push   esi
  7b5d42:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  7b5d46:	57                   	push   edi
  7b5d47:	8b ce                	mov    ecx,esi
  7b5d49:	e8 e2 3d ff ff       	call   0x7a9b30
  7b5d4e:	8b 7c 24 10          	mov    edi,DWORD PTR [esp+0x10]
  7b5d52:	8b ce                	mov    ecx,esi
  7b5d54:	e8 d7 3d ff ff       	call   0x7a9b30
  7b5d59:	8b d8                	mov    ebx,eax
  7b5d5b:	8d 83 8f ee fe ff    	lea    eax,[ebx-0x11171]
  7b5d61:	83 f8 07             	cmp    eax,0x7
  7b5d64:	77 32                	ja     0x7b5d98
  7b5d66:	ff 24 85 a8 5d 7b 00 	jmp    DWORD PTR [eax*4+0x7b5da8]
  7b5d6d:	57                   	push   edi
  7b5d6e:	eb 21                	jmp    0x7b5d91
  7b5d70:	8d 47 10             	lea    eax,[edi+0x10]
  7b5d73:	50                   	push   eax
  7b5d74:	eb 1b                	jmp    0x7b5d91
  7b5d76:	8d 4f 20             	lea    ecx,[edi+0x20]
  7b5d79:	51                   	push   ecx
  7b5d7a:	eb 15                	jmp    0x7b5d91
  7b5d7c:	8d 57 30             	lea    edx,[edi+0x30]
  7b5d7f:	eb 0f                	jmp    0x7b5d90
  7b5d81:	8d 47 40             	lea    eax,[edi+0x40]
  7b5d84:	50                   	push   eax
  7b5d85:	eb 0a                	jmp    0x7b5d91
  7b5d87:	8d 4f 50             	lea    ecx,[edi+0x50]
  7b5d8a:	51                   	push   ecx
  7b5d8b:	eb 04                	jmp    0x7b5d91
  7b5d8d:	8d 57 60             	lea    edx,[edi+0x60]
  7b5d90:	52                   	push   edx
  7b5d91:	8b ce                	mov    ecx,esi
  7b5d93:	e8 18 3f ff ff       	call   0x7a9cb0
  7b5d98:	81 fb 71 11 01 00    	cmp    ebx,0x11171
  7b5d9e:	75 b2                	jne    0x7b5d52
  7b5da0:	5f                   	pop    edi
  7b5da1:	5e                   	pop    esi
  7b5da2:	5b                   	pop    ebx
  7b5da3:	c2 08 00             	ret    0x8
