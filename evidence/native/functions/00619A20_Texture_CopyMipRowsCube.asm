# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00619a20 <.text+0x218a20>:
  619a20:	83 ec 0c             	sub    esp,0xc
  619a23:	55                   	push   ebp
  619a24:	57                   	push   edi
  619a25:	8b 7c 24 1c          	mov    edi,DWORD PTR [esp+0x1c]
  619a29:	6a 00                	push   0x0
  619a2b:	6a 00                	push   0x0
  619a2d:	8d 54 24 14          	lea    edx,[esp+0x14]
  619a31:	52                   	push   edx
  619a32:	8b 54 24 24          	mov    edx,DWORD PTR [esp+0x24]
  619a36:	8b e9                	mov    ebp,ecx
  619a38:	8b 45 30             	mov    eax,DWORD PTR [ebp+0x30]
  619a3b:	8b 08                	mov    ecx,DWORD PTR [eax]
  619a3d:	57                   	push   edi
  619a3e:	52                   	push   edx
  619a3f:	50                   	push   eax
  619a40:	8b 41 4c             	mov    eax,DWORD PTR [ecx+0x4c]
  619a43:	ff d0                	call   eax
  619a45:	85 c0                	test   eax,eax
  619a47:	7d 0a                	jge    0x619a53
  619a49:	5f                   	pop    edi
  619a4a:	32 c0                	xor    al,al
  619a4c:	5d                   	pop    ebp
  619a4d:	83 c4 0c             	add    esp,0xc
  619a50:	c2 10 00             	ret    0x10
  619a53:	53                   	push   ebx
  619a54:	8b 5d 18             	mov    ebx,DWORD PTR [ebp+0x18]
  619a57:	56                   	push   esi
  619a58:	8b 75 14             	mov    esi,DWORD PTR [ebp+0x14]
  619a5b:	8b cf                	mov    ecx,edi
  619a5d:	d3 ee                	shr    esi,cl
  619a5f:	d3 eb                	shr    ebx,cl
  619a61:	85 f6                	test   esi,esi
  619a63:	75 05                	jne    0x619a6a
  619a65:	be 01 00 00 00       	mov    esi,0x1
  619a6a:	85 db                	test   ebx,ebx
  619a6c:	75 05                	jne    0x619a73
  619a6e:	bb 01 00 00 00       	mov    ebx,0x1
  619a73:	8b 4d 28             	mov    ecx,DWORD PTR [ebp+0x28]
  619a76:	51                   	push   ecx
  619a77:	e8 84 e4 ff ff       	call   0x617f00
  619a7c:	83 c4 04             	add    esp,0x4
  619a7f:	8b f8                	mov    edi,eax
  619a81:	56                   	push   esi
  619a82:	8b cf                	mov    ecx,edi
  619a84:	e8 37 e5 ff ff       	call   0x617fc0
  619a89:	53                   	push   ebx
  619a8a:	8b cf                	mov    ecx,edi
  619a8c:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  619a90:	e8 2b e4 ff ff       	call   0x617ec0
  619a95:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
  619a99:	85 ff                	test   edi,edi
  619a9b:	8b 74 24 18          	mov    esi,DWORD PTR [esp+0x18]
  619a9f:	74 2b                	je     0x619acc
  619aa1:	85 f6                	test   esi,esi
  619aa3:	74 27                	je     0x619acc
  619aa5:	85 c0                	test   eax,eax
  619aa7:	76 23                	jbe    0x619acc
  619aa9:	8b d8                	mov    ebx,eax
  619aab:	eb 03                	jmp    0x619ab0
  619aad:	8d 49 00             	lea    ecx,[ecx+0x0]
  619ab0:	8b 54 24 10          	mov    edx,DWORD PTR [esp+0x10]
  619ab4:	52                   	push   edx
  619ab5:	57                   	push   edi
  619ab6:	56                   	push   esi
  619ab7:	e8 ca 57 96 00       	call   0xf7f286
  619abc:	03 74 24 20          	add    esi,DWORD PTR [esp+0x20]
  619ac0:	03 7c 24 38          	add    edi,DWORD PTR [esp+0x38]
  619ac4:	83 c4 0c             	add    esp,0xc
  619ac7:	83 eb 01             	sub    ebx,0x1
  619aca:	75 e4                	jne    0x619ab0
  619acc:	8b 4c 24 24          	mov    ecx,DWORD PTR [esp+0x24]
  619ad0:	8b 6d 30             	mov    ebp,DWORD PTR [ebp+0x30]
  619ad3:	8b 54 24 20          	mov    edx,DWORD PTR [esp+0x20]
  619ad7:	8b 45 00             	mov    eax,DWORD PTR [ebp+0x0]
  619ada:	8b 40 50             	mov    eax,DWORD PTR [eax+0x50]
  619add:	51                   	push   ecx
  619ade:	52                   	push   edx
  619adf:	55                   	push   ebp
  619ae0:	ff d0                	call   eax
  619ae2:	5e                   	pop    esi
  619ae3:	5b                   	pop    ebx
  619ae4:	5f                   	pop    edi
  619ae5:	b0 01                	mov    al,0x1
  619ae7:	5d                   	pop    ebp
  619ae8:	83 c4 0c             	add    esp,0xc
  619aeb:	c2 10 00             	ret    0x10
