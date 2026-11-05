# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0079bb60, 0x0079bc07); analyst name ShaderLibrary_FindDefinition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


/mnt/inthdd/sims3/patch_media/1_67/unpacked/GameBin/TS3W.exe:     file format pei-i386


Disassembly of section .text:

0079bb60 <.text+0x39ab60>:
  79bb60:	55                   	push   ebp
  79bb61:	8b ec                	mov    ebp,esp
  79bb63:	83 e4 f8             	and    esp,0xfffffff8
  79bb66:	83 ec 14             	sub    esp,0x14
  79bb69:	8b 45 0c             	mov    eax,DWORD PTR [ebp+0xc]
  79bb6c:	53                   	push   ebx
  79bb6d:	8b 5d 08             	mov    ebx,DWORD PTR [ebp+0x8]
  79bb70:	56                   	push   esi
  79bb71:	57                   	push   edi
  79bb72:	89 4c 24 0c          	mov    DWORD PTR [esp+0xc],ecx
  79bb76:	8d 71 50             	lea    esi,[ecx+0x50]
  79bb79:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  79bb80:	89 44 24 14          	mov    DWORD PTR [esp+0x14],eax
  79bb84:	8d 44 24 10          	lea    eax,[esp+0x10]
  79bb88:	50                   	push   eax
  79bb89:	8d 4c 24 1c          	lea    ecx,[esp+0x1c]
  79bb8d:	51                   	push   ecx
  79bb8e:	8b ce                	mov    ecx,esi
  79bb90:	33 ff                	xor    edi,edi
  79bb92:	89 5c 24 18          	mov    DWORD PTR [esp+0x18],ebx
  79bb96:	e8 45 fa ff ff       	call   0x79b5e0
  79bb9b:	8b 00                	mov    eax,DWORD PTR [eax]
  79bb9d:	8b 56 08             	mov    edx,DWORD PTR [esi+0x8]
  79bba0:	8b 4e 04             	mov    ecx,DWORD PTR [esi+0x4]
  79bba3:	3b 04 91             	cmp    eax,DWORD PTR [ecx+edx*4]
  79bba6:	74 07                	je     0x79bbaf
  79bba8:	8b 78 08             	mov    edi,DWORD PTR [eax+0x8]
  79bbab:	85 ff                	test   edi,edi
  79bbad:	75 1b                	jne    0x79bbca
  79bbaf:	81 fb 74 b0 a9 a2    	cmp    ebx,0xa2a9b074
  79bbb5:	74 45                	je     0x79bbfc
  79bbb7:	80 7d 10 00          	cmp    BYTE PTR [ebp+0x10],0x0
  79bbbb:	74 3f                	je     0x79bbfc
  79bbbd:	c6 45 10 00          	mov    BYTE PTR [ebp+0x10],0x0
  79bbc1:	33 c0                	xor    eax,eax
  79bbc3:	bb 74 b0 a9 a2       	mov    ebx,0xa2a9b074
  79bbc8:	eb b6                	jmp    0x79bb80
  79bbca:	8b 74 24 0c          	mov    esi,DWORD PTR [esp+0xc]
  79bbce:	80 7e 4a 00          	cmp    BYTE PTR [esi+0x4a],0x0
  79bbd2:	74 28                	je     0x79bbfc
  79bbd4:	8b cf                	mov    ecx,edi
  79bbd6:	e8 75 b8 53 00       	call   0xcd7450
  79bbdb:	84 c0                	test   al,al
  79bbdd:	75 1d                	jne    0x79bbfc
  79bbdf:	38 46 49             	cmp    BYTE PTR [esi+0x49],al
  79bbe2:	74 04                	je     0x79bbe8
  79bbe4:	33 c0                	xor    eax,eax
  79bbe6:	eb 05                	jmp    0x79bbed
  79bbe8:	8b 56 4c             	mov    edx,DWORD PTR [esi+0x4c]
  79bbeb:	8b 02                	mov    eax,DWORD PTR [edx]
  79bbed:	8b 4e 4c             	mov    ecx,DWORD PTR [esi+0x4c]
  79bbf0:	8b 51 04             	mov    edx,DWORD PTR [ecx+0x4]
  79bbf3:	52                   	push   edx
  79bbf4:	50                   	push   eax
  79bbf5:	8b cf                	mov    ecx,edi
  79bbf7:	e8 44 ed ff ff       	call   0x79a940
  79bbfc:	8b c7                	mov    eax,edi
  79bbfe:	5f                   	pop    edi
  79bbff:	5e                   	pop    esi
  79bc00:	5b                   	pop    ebx
  79bc01:	8b e5                	mov    esp,ebp
  79bc03:	5d                   	pop    ebp
  79bc04:	c2 0c 00             	ret    0xc
