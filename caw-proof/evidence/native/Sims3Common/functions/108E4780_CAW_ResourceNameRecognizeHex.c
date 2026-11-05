/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Optionally starts after the last underscore; validates
   original numeric naming syntax including optional0x, eight digits or permitted sixteen instance
   digits. Do not replace it with unrestricted parsing of every hex-like ordinary name.
   Analyst-assigned helper names are not recovered original symbols. Original instructions govern
   decompiler ABI/register artifacts. */

wint_t * __cdecl
CAW_ResourceNameRecognizeHex(wint_t *param_1,wint_t *param_2,char param_3,char param_4)

{
  int iVar1;
  int iVar2;
  wint_t *pwVar3;
  
  pwVar3 = param_1;
  if (param_3 != '\0') {
    for (; pwVar3 != param_2; pwVar3 = pwVar3 + 1) {
      if (*pwVar3 == 0x5f) {
        param_1 = pwVar3 + 1;
      }
    }
  }
  if ((int)((int)param_2 - (int)param_1 & 0xfffffffeU) < 0x10) {
    return (wint_t *)0x0;
  }
  if ((*param_1 == 0x30) && ((param_1[1] == 0x78 || (param_1[1] == 0x58)))) {
    param_1 = param_1 + 2;
  }
  else {
    iVar2 = iswdigit(*param_1);
    if (iVar2 == 0) {
      return (wint_t *)0x0;
    }
  }
  iVar2 = 0;
  pwVar3 = param_1;
  if (param_1 != param_2) {
    do {
      iVar1 = iswxdigit(*pwVar3);
      if (iVar1 == 0) {
        return (wint_t *)0x0;
      }
      pwVar3 = pwVar3 + 1;
      iVar2 = iVar2 + 1;
    } while (pwVar3 != param_2);
    if ((iVar2 == 8) || ((iVar2 == 0x10 && (param_4 != '\0')))) {
      return param_1;
    }
  }
  return (wint_t *)0x0;
}

