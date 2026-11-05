# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0093ca90, 0x0093cac2); analyst name AnimationComponentInterface_StopAll.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0093ca90 <.text+0x53ba90>:
  93ca90:	56                   	push   esi
  93ca91:	8b f1                	mov    esi,ecx
  93ca93:	8b 46 1c             	mov    eax,DWORD PTR [esi+0x1c]
  93ca96:	85 c0                	test   eax,eax
  93ca98:	74 1e                	je     0x93cab8
  93ca9a:	83 b8 b0 00 00 00 00 	cmp    DWORD PTR [eax+0xb0],0x0
  93caa1:	74 15                	je     0x93cab8
  93caa3:	85 c0                	test   eax,eax
  93caa5:	74 08                	je     0x93caaf
  93caa7:	8b 80 b0 00 00 00    	mov    eax,DWORD PTR [eax+0xb0]
  93caad:	eb 02                	jmp    0x93cab1
  93caaf:	33 c0                	xor    eax,eax
  93cab1:	8b c8                	mov    ecx,eax
  93cab3:	e8 08 61 c4 ff       	call   0x582bc0
  93cab8:	8b 06                	mov    eax,DWORD PTR [esi]
  93caba:	8b 50 28             	mov    edx,DWORD PTR [eax+0x28]
  93cabd:	8b ce                	mov    ecx,esi
  93cabf:	5e                   	pop    esi
  93cac0:	ff e2                	jmp    edx
