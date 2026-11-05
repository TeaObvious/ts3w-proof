# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x0060fb00,0x0060fc08); analyst name RenderDevice_CaptureBaselineStates.
# Original bytes govern the paired actual annotated Ghidra pseudocode. Linear decoding may include embedded data.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0060fb00 <.text+0x20eb00>:
  60fb00:	83 ec 08             	sub    esp,0x8
  60fb03:	53                   	push   ebx
  60fb04:	55                   	push   ebp
  60fb05:	56                   	push   esi
  60fb06:	57                   	push   edi
  60fb07:	8b f1                	mov    esi,ecx
  60fb09:	33 db                	xor    ebx,ebx
  60fb0b:	eb 03                	jmp    0x60fb10
  60fb0d:	8d 49 00             	lea    ecx,[ecx+0x0]
  60fb10:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  60fb13:	8b bb 50 88 fe 00    	mov    edi,DWORD PTR [ebx+0xfe8850]
  60fb19:	8b 08                	mov    ecx,DWORD PTR [eax]
  60fb1b:	8d 54 24 10          	lea    edx,[esp+0x10]
  60fb1f:	52                   	push   edx
  60fb20:	57                   	push   edi
  60fb21:	50                   	push   eax
  60fb22:	8b 81 e8 00 00 00    	mov    eax,DWORD PTR [ecx+0xe8]
  60fb28:	ff d0                	call   eax
  60fb2a:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  60fb2e:	83 c3 04             	add    ebx,0x4
  60fb31:	81 fb 98 01 00 00    	cmp    ebx,0x198
  60fb37:	89 84 be 44 01 00 00 	mov    DWORD PTR [esi+edi*4+0x144],eax
  60fb3e:	89 84 be 70 04 00 00 	mov    DWORD PTR [esi+edi*4+0x470],eax
  60fb45:	72 c9                	jb     0x60fb10
  60fb47:	33 c0                	xor    eax,eax
  60fb49:	89 86 b8 07 00 00    	mov    DWORD PTR [esi+0x7b8],eax
  60fb4f:	89 86 bc 07 00 00    	mov    DWORD PTR [esi+0x7bc],eax
  60fb55:	89 86 c0 07 00 00    	mov    DWORD PTR [esi+0x7c0],eax
  60fb5b:	89 86 c4 07 00 00    	mov    DWORD PTR [esi+0x7c4],eax
  60fb61:	89 86 c8 07 00 00    	mov    DWORD PTR [esi+0x7c8],eax
  60fb67:	89 86 cc 07 00 00    	mov    DWORD PTR [esi+0x7cc],eax
  60fb6d:	89 86 d0 07 00 00    	mov    DWORD PTR [esi+0x7d0],eax
  60fb73:	89 86 d4 07 00 00    	mov    DWORD PTR [esi+0x7d4],eax
  60fb79:	89 86 d8 07 00 00    	mov    DWORD PTR [esi+0x7d8],eax
  60fb7f:	89 86 dc 07 00 00    	mov    DWORD PTR [esi+0x7dc],eax
  60fb85:	89 86 e0 07 00 00    	mov    DWORD PTR [esi+0x7e0],eax
  60fb8b:	89 86 e4 07 00 00    	mov    DWORD PTR [esi+0x7e4],eax
  60fb91:	89 86 e8 07 00 00    	mov    DWORD PTR [esi+0x7e8],eax
  60fb97:	89 86 ec 07 00 00    	mov    DWORD PTR [esi+0x7ec],eax
  60fb9d:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  60fba1:	8d ae 10 08 00 00    	lea    ebp,[esi+0x810]
  60fba7:	eb 07                	jmp    0x60fbb0
  60fba9:	8d a4 24 00 00 00 00 	lea    esp,[esp+0x0]
  60fbb0:	33 db                	xor    ebx,ebx
  60fbb2:	8b bb 1c 88 fe 00    	mov    edi,DWORD PTR [ebx+0xfe881c]
  60fbb8:	8b 46 0c             	mov    eax,DWORD PTR [esi+0xc]
  60fbbb:	8b 08                	mov    ecx,DWORD PTR [eax]
  60fbbd:	8d 54 24 14          	lea    edx,[esp+0x14]
  60fbc1:	52                   	push   edx
  60fbc2:	8b 54 24 14          	mov    edx,DWORD PTR [esp+0x14]
  60fbc6:	57                   	push   edi
  60fbc7:	52                   	push   edx
  60fbc8:	50                   	push   eax
  60fbc9:	8b 81 10 01 00 00    	mov    eax,DWORD PTR [ecx+0x110]
  60fbcf:	ff d0                	call   eax
  60fbd1:	8b 44 24 14          	mov    eax,DWORD PTR [esp+0x14]
  60fbd5:	83 c3 04             	add    ebx,0x4
  60fbd8:	83 fb 34             	cmp    ebx,0x34
  60fbdb:	89 44 bd fc          	mov    DWORD PTR [ebp+edi*4-0x4],eax
  60fbdf:	89 44 bd 30          	mov    DWORD PTR [ebp+edi*4+0x30],eax
  60fbe3:	72 cd                	jb     0x60fbb2
  60fbe5:	33 c0                	xor    eax,eax
  60fbe7:	89 45 68             	mov    DWORD PTR [ebp+0x68],eax
  60fbea:	89 45 6c             	mov    DWORD PTR [ebp+0x6c],eax
  60fbed:	8b 44 24 10          	mov    eax,DWORD PTR [esp+0x10]
  60fbf1:	83 c0 01             	add    eax,0x1
  60fbf4:	83 c5 74             	add    ebp,0x74
  60fbf7:	83 f8 10             	cmp    eax,0x10
  60fbfa:	89 44 24 10          	mov    DWORD PTR [esp+0x10],eax
  60fbfe:	72 b0                	jb     0x60fbb0
  60fc00:	5f                   	pop    edi
  60fc01:	5e                   	pop    esi
  60fc02:	5d                   	pop    ebp
  60fc03:	5b                   	pop    ebx
  60fc04:	83 c4 08             	add    esp,0x8
  60fc07:	c3                   	ret
