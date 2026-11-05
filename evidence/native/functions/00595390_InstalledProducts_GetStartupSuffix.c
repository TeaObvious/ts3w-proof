/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC167_STARTUP_READER_00595390. ECX product object forwarded to highest-known selector; returns
   selected UTF16 suffix pointer through EAX, plain RET. Exact flag mapping:2 EP1,4 SP1,8 EP2,10hex
   SP2,20 EP3,40 SP3,80 EP4,100 SP4,200 EP5,400 SP5,800 EP6,1000 SP6,2000 SP7,4000 EP7,8000
   EP8,10000 SP8,20000 EP9,40000 EP10,80000 SP9,100000 EP11; default empty string. Small-value
   jump/selector table and returned strings were independently matched to original PE. Analyst names
   are descriptive, not original symbols. */

wchar_t * __fastcall InstalledProducts_GetStartupSuffix(int param_1)

{
  int iVar1;
  
  iVar1 = InstalledProducts_SelectHighestKnownFlag(param_1);
  if (iVar1 < 0x801) {
    if (iVar1 == 0x800) {
      return L"EP6";
    }
    if (iVar1 < 0x41) {
      if (iVar1 == 0x40) {
        return L"SP3";
      }
      switch(iVar1) {
      case 2:
        return L"EP1";
      case 4:
        return L"SP1";
      case 8:
        return L"EP2";
      case 0x10:
        return L"SP2";
      case 0x20:
        return L"EP3";
      }
    }
    else if (iVar1 < 0x201) {
      if (iVar1 == 0x200) {
        return L"EP5";
      }
      if (iVar1 == 0x80) {
        return L"EP4";
      }
      if (iVar1 == 0x100) {
        return L"SP4";
      }
    }
    else if (iVar1 == 0x400) {
      return L"SP5";
    }
  }
  else if (iVar1 < 0x10001) {
    if (iVar1 == 0x10000) {
      return L"SP8";
    }
    if (iVar1 < 0x4001) {
      if (iVar1 == 0x4000) {
        return L"EP7";
      }
      if (iVar1 == 0x1000) {
        return L"SP6";
      }
      if (iVar1 == 0x2000) {
        return L"SP7";
      }
    }
    else if (iVar1 == 0x8000) {
      return L"EP8";
    }
  }
  else if (iVar1 < 0x80001) {
    if (iVar1 == 0x80000) {
      return L"SP9";
    }
    if (iVar1 == 0x20000) {
      return L"EP9";
    }
    if (iVar1 == 0x40000) {
      return L"EP10";
    }
  }
  else if (iVar1 == 0x100000) {
    return L"EP11";
  }
  return L"";
}

