/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 cdecl two fixed UTF16 pointers followed by output pointers; plain RET/full EAX
   count. Format e/f/g branch4FD94C calls imported wcstod throughF964E0 with end pointer then FSTP
   binary32 to requested output. It increments count regardless of whether wcstod consumed a digit;
   this body has no finite/nonnegative or complete-string gate. Other specifiers have independent
   integer/character/string logic, not standard sscanf parity. Two owned ranges exclude seven
   nonowned bytes4FDA59..5F. Lower CRT numeric grammar/locale behavior belongs to the imported
   implementation. */

int __cdecl Utf16Scan_ConvertFormattedFields(ushort *inputUtf16,ushort *formatUtf16,...)

{
  wchar_t *pwVar1;
  wchar_t wVar2;
  uint uVar3;
  int iVar4;
  int iVar5;
  ushort **ppuVar6;
  wchar_t *pwVar7;
  longlong lVar8;
  double dVar9;
  
  iVar5 = 0;
  if (*formatUtf16 == 0) {
    return 0;
  }
  ppuVar6 = &formatUtf16;
  pwVar1 = (wchar_t *)inputUtf16;
  pwVar7 = (wchar_t *)formatUtf16;
LAB_004fd880:
  wVar2 = *pwVar7;
  if (wVar2 == L'\0') {
    return iVar5;
  }
  do {
    if ((0xff < (ushort)wVar2) ||
       ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                  (uint)(ushort)wVar2) & 6) == 0)) {
      if (wVar2 == L'%') break;
      if (wVar2 != *pwVar1) {
        return iVar5;
      }
      if (*pwVar1 != L'\0') {
        pwVar1 = pwVar1 + 1;
        inputUtf16 = (ushort *)pwVar1;
      }
    }
    wVar2 = pwVar7[1];
    pwVar7 = pwVar7 + 1;
    if (wVar2 == L'\0') {
      return iVar5;
    }
  } while( true );
  wVar2 = *pwVar1;
  pwVar7 = pwVar7 + 1;
  while (((wVar2 != L'\0' && ((ushort)wVar2 < 0x100)) &&
         ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                    (uint)(ushort)wVar2) & 6) != 0))) {
    pwVar1 = pwVar1 + 1;
    wVar2 = *pwVar1;
    inputUtf16 = (ushort *)pwVar1;
  }
  wVar2 = *pwVar7;
  if (wVar2 == L'%') {
    if (*pwVar1 != L'%') {
      return iVar5;
    }
    goto LAB_004fda8a;
  }
joined_r0x004fd91c:
  if (wVar2 == L'\0') goto LAB_004fda8a;
  switch(wVar2) {
  case L'C':
  case L'c':
    *ppuVar6[1] = *pwVar1;
    inputUtf16 = inputUtf16 + 1;
    wVar2 = *inputUtf16;
    while ((wVar2 != L'\0' &&
           ((0xff < (ushort)wVar2 ||
            ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                       (uint)(ushort)wVar2) & 6) == 0))))) {
      inputUtf16 = inputUtf16 + 1;
      wVar2 = *inputUtf16;
    }
    break;
  default:
    goto switchD_004fd934_caseD_44;
  case L'S':
  case L's':
    wVar2 = *pwVar1;
    pwVar1 = (wchar_t *)ppuVar6[1];
    while ((wVar2 != L'\0' &&
           ((0xff < (ushort)wVar2 ||
            ((*(byte *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0114da30 +
                       (uint)(ushort)wVar2) & 6) == 0))))) {
      *pwVar1 = wVar2;
      inputUtf16 = inputUtf16 + 1;
      wVar2 = *inputUtf16;
      pwVar1 = pwVar1 + 1;
    }
    *pwVar1 = L'\0';
    break;
  case L'd':
  case L'i':
    lVar8 = FUN_004fef20((ushort *)pwVar1,(int *)&inputUtf16,10);
    *(int *)ppuVar6[1] = (int)lVar8;
    break;
  case L'e':
  case L'f':
  case L'g':
    dVar9 = wcstod(pwVar1,(wchar_t **)&inputUtf16);
    *(float *)ppuVar6[1] = (float)dVar9;
    break;
  case L'x':
    wVar2 = *pwVar1;
    iVar4 = 0;
    goto joined_r0x004fd973;
  }
LAB_004fda87:
  ppuVar6 = ppuVar6 + 1;
  iVar5 = iVar5 + 1;
  pwVar1 = (wchar_t *)inputUtf16;
LAB_004fda8a:
  pwVar7 = pwVar7 + 1;
  if (*pwVar7 == L'\0') {
    return iVar5;
  }
  goto LAB_004fd880;
joined_r0x004fd973:
  if (wVar2 == L'\0') goto LAB_004fd9b9;
  uVar3 = (uint)(ushort)wVar2;
  if (uVar3 - 0x61 < 6) {
    iVar4 = iVar4 * 0x10 + -0x57 + uVar3;
  }
  else if (uVar3 - 0x41 < 6) {
    iVar4 = iVar4 * 0x10 + -0x37 + uVar3;
  }
  else {
    if (9 < uVar3 - 0x30) goto LAB_004fd9b9;
    iVar4 = (iVar4 + -3) * 0x10 + uVar3;
  }
  pwVar1 = pwVar1 + 1;
  wVar2 = *pwVar1;
  inputUtf16 = (ushort *)pwVar1;
  goto joined_r0x004fd973;
LAB_004fd9b9:
  *(int *)ppuVar6[1] = iVar4;
  goto LAB_004fda87;
switchD_004fd934_caseD_44:
  wVar2 = pwVar7[1];
  pwVar7 = pwVar7 + 1;
  goto joined_r0x004fd91c;
}

