# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Original PC 1.67 TS3W.exe; complete Ghidra function-body envelope [0x00744fa0, 0x00745015); analyst name Objects_GetPosition.
# Inferred boundary and analyst name; original instruction bytes govern the paired Ghidra pseudocode.


TS3W.exe:     file format pei-i386


Disassembly of section .text:

00744fa0 <.text+0x343fa0>:
  744fa0:	55                   	push   ebp
  744fa1:	8b ec                	mov    ebp,esp
  744fa3:	83 e4 f0             	and    esp,0xfffffff0
  744fa6:	83 ec 1c             	sub    esp,0x1c
  744fa9:	56                   	push   esi
  744faa:	e8 c1 25 1f 00       	call   0x937570
  744faf:	8b 4d 10             	mov    ecx,DWORD PTR [ebp+0x10]
  744fb2:	8b 55 0c             	mov    edx,DWORD PTR [ebp+0xc]
  744fb5:	51                   	push   ecx
  744fb6:	52                   	push   edx
  744fb7:	8b c8                	mov    ecx,eax
  744fb9:	e8 c2 2f 1f 00       	call   0x937f80
  744fbe:	85 c0                	test   eax,eax
  744fc0:	74 32                	je     0x744ff4
  744fc2:	8b 0d 58 a1 1e 01    	mov    ecx,DWORD PTR ds:0x11ea158
  744fc8:	51                   	push   ecx
  744fc9:	8b c8                	mov    ecx,eax
  744fcb:	e8 90 f2 1e 00       	call   0x934260
  744fd0:	85 c0                	test   eax,eax
  744fd2:	74 20                	je     0x744ff4
  744fd4:	8d 54 24 10          	lea    edx,[esp+0x10]
  744fd8:	52                   	push   edx
  744fd9:	8b c8                	mov    ecx,eax
  744fdb:	e8 50 2a 21 00       	call   0x957a30
  744fe0:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  744fe3:	50                   	push   eax
  744fe4:	56                   	push   esi
  744fe5:	e8 66 71 02 00       	call   0x76c150
  744fea:	83 c4 08             	add    esp,0x8
  744fed:	8b c6                	mov    eax,esi
  744fef:	5e                   	pop    esi
  744ff0:	8b e5                	mov    esp,ebp
  744ff2:	5d                   	pop    ebp
  744ff3:	c3                   	ret
  744ff4:	d9 ee                	fldz
  744ff6:	8b 75 08             	mov    esi,DWORD PTR [ebp+0x8]
  744ff9:	83 ec 0c             	sub    esp,0xc
  744ffc:	d9 54 24 08          	fst    DWORD PTR [esp+0x8]
  745000:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  745004:	8b ce                	mov    ecx,esi
  745006:	d9 1c 24             	fstp   DWORD PTR [esp]
  745009:	e8 62 6f 02 00       	call   0x76bf70
  74500e:	8b c6                	mov    eax,esi
  745010:	5e                   	pop    esi
  745011:	8b e5                	mov    esp,ebp
  745013:	5d                   	pop    ebp
  745014:	c3                   	ret
