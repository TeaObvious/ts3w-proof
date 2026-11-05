# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete reviewed Ghidra function-body envelope [0x00939730,0x00939798); analyst name ParameterRecords_GuardedInsertionByUnsignedHash.
# Original instructions govern the paired actual annotated Ghidra pseudocode.

TS3W.exe:     file format pei-i386


Disassembly of section .text:

00939730 <.text+0x538730>:
  939730:	8b 44 24 08          	mov    eax,DWORD PTR [esp+0x8]
  939734:	55                   	push   ebp
  939735:	8b 6c 24 08          	mov    ebp,DWORD PTR [esp+0x8]
  939739:	3b e8                	cmp    ebp,eax
  93973b:	74 59                	je     0x939796
  93973d:	8d 4d 10             	lea    ecx,[ebp+0x10]
  939740:	3b c8                	cmp    ecx,eax
  939742:	74 52                	je     0x939796
  939744:	53                   	push   ebx
  939745:	56                   	push   esi
  939746:	57                   	push   edi
  939747:	3b cd                	cmp    ecx,ebp
  939749:	8b 11                	mov    edx,DWORD PTR [ecx]
  93974b:	8b 71 04             	mov    esi,DWORD PTR [ecx+0x4]
  93974e:	8b 79 08             	mov    edi,DWORD PTR [ecx+0x8]
  939751:	8b 59 0c             	mov    ebx,DWORD PTR [ecx+0xc]
  939754:	8b c1                	mov    eax,ecx
  939756:	74 27                	je     0x93977f
  939758:	3b 50 f0             	cmp    edx,DWORD PTR [eax-0x10]
  93975b:	73 22                	jae    0x93977f
  93975d:	8b 68 f0             	mov    ebp,DWORD PTR [eax-0x10]
  939760:	89 28                	mov    DWORD PTR [eax],ebp
  939762:	8b 68 f4             	mov    ebp,DWORD PTR [eax-0xc]
  939765:	89 68 04             	mov    DWORD PTR [eax+0x4],ebp
  939768:	8b 68 f8             	mov    ebp,DWORD PTR [eax-0x8]
  93976b:	89 68 08             	mov    DWORD PTR [eax+0x8],ebp
  93976e:	8b 68 fc             	mov    ebp,DWORD PTR [eax-0x4]
  939771:	89 68 0c             	mov    DWORD PTR [eax+0xc],ebp
  939774:	8b 6c 24 14          	mov    ebp,DWORD PTR [esp+0x14]
  939778:	83 c0 f0             	add    eax,0xfffffff0
  93977b:	3b c5                	cmp    eax,ebp
  93977d:	75 d9                	jne    0x939758
  93977f:	89 10                	mov    DWORD PTR [eax],edx
  939781:	89 70 04             	mov    DWORD PTR [eax+0x4],esi
  939784:	83 c1 10             	add    ecx,0x10
  939787:	3b 4c 24 18          	cmp    ecx,DWORD PTR [esp+0x18]
  93978b:	89 78 08             	mov    DWORD PTR [eax+0x8],edi
  93978e:	89 58 0c             	mov    DWORD PTR [eax+0xc],ebx
  939791:	75 b4                	jne    0x939747
  939793:	5f                   	pop    edi
  939794:	5e                   	pop    esi
  939795:	5b                   	pop    ebx
  939796:	5d                   	pop    ebp
  939797:	c3                   	ret
