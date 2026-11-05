# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00565d50, 0x00565d88); analyst name AnimationController_FinishListenerDispatch.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00565d50 <.text+0x164d50>:
  565d50:	83 41 0c ff          	add    DWORD PTR [ecx+0xc],0xffffffff
  565d54:	75 31                	jne    0x565d87
  565d56:	56                   	push   esi
  565d57:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  565d5a:	57                   	push   edi
  565d5b:	8d 79 04             	lea    edi,[ecx+0x4]
  565d5e:	3b f7                	cmp    esi,edi
  565d60:	74 23                	je     0x565d85
  565d62:	83 7e 08 00          	cmp    DWORD PTR [esi+0x8],0x0
  565d66:	8b ce                	mov    ecx,esi
  565d68:	75 15                	jne    0x565d7f
  565d6a:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  565d6d:	8b 36                	mov    esi,DWORD PTR [esi]
  565d6f:	89 30                	mov    DWORD PTR [eax],esi
  565d71:	51                   	push   ecx
  565d72:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  565d75:	e8 66 e7 f7 ff       	call   0x4e44e0
  565d7a:	83 c4 04             	add    esp,0x4
  565d7d:	eb 02                	jmp    0x565d81
  565d7f:	8b 36                	mov    esi,DWORD PTR [esi]
  565d81:	3b f7                	cmp    esi,edi
  565d83:	75 dd                	jne    0x565d62
  565d85:	5f                   	pop    edi
  565d86:	5e                   	pop    esi
  565d87:	c3                   	ret
