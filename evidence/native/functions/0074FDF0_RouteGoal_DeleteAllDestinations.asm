# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x0074fdf0, 0x0074fe2e); analyst name RouteGoal_DeleteAllDestinations.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

0074fdf0 <.text+0x34edf0>:
  74fdf0:	56                   	push   esi
  74fdf1:	57                   	push   edi
  74fdf2:	8b f9                	mov    edi,ecx
  74fdf4:	8b 37                	mov    esi,DWORD PTR [edi]
  74fdf6:	3b f7                	cmp    esi,edi
  74fdf8:	74 2c                	je     0x74fe26
  74fdfa:	8d 9b 00 00 00 00    	lea    ebx,[ebx+0x0]
  74fe00:	85 f6                	test   esi,esi
  74fe02:	74 05                	je     0x74fe09
  74fe04:	8d 4e fc             	lea    ecx,[esi-0x4]
  74fe07:	eb 02                	jmp    0x74fe0b
  74fe09:	33 c9                	xor    ecx,ecx
  74fe0b:	85 c9                	test   ecx,ecx
  74fe0d:	8b 46 04             	mov    eax,DWORD PTR [esi+0x4]
  74fe10:	8b 36                	mov    esi,DWORD PTR [esi]
  74fe12:	89 30                	mov    DWORD PTR [eax],esi
  74fe14:	89 46 04             	mov    DWORD PTR [esi+0x4],eax
  74fe17:	74 09                	je     0x74fe22
  74fe19:	8b 01                	mov    eax,DWORD PTR [ecx]
  74fe1b:	8b 50 08             	mov    edx,DWORD PTR [eax+0x8]
  74fe1e:	6a 01                	push   0x1
  74fe20:	ff d2                	call   edx
  74fe22:	3b f7                	cmp    esi,edi
  74fe24:	75 da                	jne    0x74fe00
  74fe26:	89 3f                	mov    DWORD PTR [edi],edi
  74fe28:	89 7f 04             	mov    DWORD PTR [edi+0x4],edi
  74fe2b:	5f                   	pop    edi
  74fe2c:	5e                   	pop    esi
  74fe2d:	c3                   	ret
