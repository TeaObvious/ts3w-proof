# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed envelope [0x00947c40,0x00947cdb); analyst name LightingComponent_ReadSavedResourceAndControls.
# Original instructions govern paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00947c40 <.text+0x546c40>:
  947c40:	53                   	push   ebx
  947c41:	55                   	push   ebp
  947c42:	8b 6c 24 10          	mov    ebp,DWORD PTR [esp+0x10]
  947c46:	66 83 7d 06 0e       	cmp    WORD PTR [ebp+0x6],0xe
  947c4b:	8b 5d 10             	mov    ebx,DWORD PTR [ebp+0x10]
  947c4e:	56                   	push   esi
  947c4f:	8b 74 24 10          	mov    esi,DWORD PTR [esp+0x10]
  947c53:	57                   	push   edi
  947c54:	8b f9                	mov    edi,ecx
  947c56:	72 2f                	jb     0x947c87
  947c58:	8b 46 10             	mov    eax,DWORD PTR [esi+0x10]
  947c5b:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  947c5e:	50                   	push   eax
  947c5f:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  947c63:	51                   	push   ecx
  947c64:	52                   	push   edx
  947c65:	e8 76 5c b9 ff       	call   0x4dd8e0
  947c6a:	83 c4 0c             	add    esp,0xc
  947c6d:	8b ce                	mov    ecx,esi
  947c6f:	50                   	push   eax
  947c70:	e8 7b fd e8 ff       	call   0x7d79f0
  947c75:	8d 47 08             	lea    eax,[edi+0x8]
  947c78:	50                   	push   eax
  947c79:	8d 4c 24 18          	lea    ecx,[esp+0x18]
  947c7d:	51                   	push   ecx
  947c7e:	8b cb                	mov    ecx,ebx
  947c80:	e8 0b f5 e8 ff       	call   0x7d7190
  947c85:	eb 1c                	jmp    0x947ca3
  947c87:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  947c8a:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  947c8d:	52                   	push   edx
  947c8e:	8d 47 08             	lea    eax,[edi+0x8]
  947c91:	50                   	push   eax
  947c92:	51                   	push   ecx
  947c93:	e8 c8 fa e8 ff       	call   0x7d7760
  947c98:	83 c4 0c             	add    esp,0xc
  947c9b:	8b ce                	mov    ecx,esi
  947c9d:	50                   	push   eax
  947c9e:	e8 4d fd e8 ff       	call   0x7d79f0
  947ca3:	66 83 7d 04 02       	cmp    WORD PTR [ebp+0x4],0x2
  947ca8:	72 27                	jb     0x947cd1
  947caa:	8b 56 10             	mov    edx,DWORD PTR [esi+0x10]
  947cad:	8b 4e 08             	mov    ecx,DWORD PTR [esi+0x8]
  947cb0:	52                   	push   edx
  947cb1:	8d 47 18             	lea    eax,[edi+0x18]
  947cb4:	50                   	push   eax
  947cb5:	51                   	push   ecx
  947cb6:	e8 c5 5c b9 ff       	call   0x4dd980
  947cbb:	83 c4 0c             	add    esp,0xc
  947cbe:	8b ce                	mov    ecx,esi
  947cc0:	50                   	push   eax
  947cc1:	e8 2a fd e8 ff       	call   0x7d79f0
  947cc6:	83 c7 1c             	add    edi,0x1c
  947cc9:	57                   	push   edi
  947cca:	8b ce                	mov    ecx,esi
  947ccc:	e8 8f fe e8 ff       	call   0x7d7b60
  947cd1:	8a 46 14             	mov    al,BYTE PTR [esi+0x14]
  947cd4:	5f                   	pop    edi
  947cd5:	5e                   	pop    esi
  947cd6:	5d                   	pop    ebp
  947cd7:	5b                   	pop    ebx
  947cd8:	c2 08 00             	ret    0x8
