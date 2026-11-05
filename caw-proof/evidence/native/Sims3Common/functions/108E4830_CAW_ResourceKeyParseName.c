/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: The exported caller supplies no manager and no database.
   Its global manager is acquired only for type-zero nonnumeric extension resolution after a
   database lookup is unavailable/missing; only an acquired or explicitly supplied manager triggers
   virtual+88 key-name registration of the full original input. Explicit-type, numeric-extension and
   missing-extension exported calls do not acquire a manager for this side effect. Analyst-assigned
   helper names are not recovered original symbols. Original instructions govern decompiler
   ABI/register artifacts. */

undefined4 __cdecl
CAW_ResourceKeyParseName
          (longlong *param_1,wchar_t *param_2,undefined4 param_3,undefined4 param_4,int *param_5,
          int param_6)

{
  wchar_t wVar1;
  uint in_EAX;
  wchar_t *pwVar2;
  ulong uVar3;
  wint_t *pwVar4;
  wchar_t *pwVar5;
  int *piVar6;
  wchar_t *pwVar7;
  longlong lVar8;
  wchar_t *local_4;
  
  if ((param_2 == (wchar_t *)0x0) || (*param_2 == L'\0')) {
    return in_EAX & 0xffffff00;
  }
  *(undefined4 *)(param_1 + 1) = param_3;
  local_4 = (wchar_t *)0x0;
  pwVar2 = wcschr(param_2,L'.');
  if (pwVar2 == (wchar_t *)0x0) {
    pwVar2 = param_2;
    do {
      wVar1 = *pwVar2;
      pwVar2 = pwVar2 + 1;
    } while (wVar1 != L'\0');
    pwVar2 = param_2 + ((int)pwVar2 - (int)(param_2 + 1) >> 1);
  }
  else {
    local_4 = pwVar2 + 1;
  }
  uVar3 = (int)pwVar2 - (int)param_2 >> 1;
  pwVar5 = param_2;
  do {
    if (uVar3 == 0) {
      *(undefined4 *)((int)param_1 + 0xc) = param_4;
      pwVar7 = param_2;
      pwVar5 = param_2;
LAB_108e48b5:
      if (pwVar7 == pwVar2) {
        *(undefined4 *)param_1 = 0xffffffff;
        *(undefined4 *)((int)param_1 + 4) = 0xffffffff;
      }
      else {
        pwVar4 = CAW_ResourceNameRecognizeHex((wint_t *)pwVar7,(wint_t *)pwVar2,'\x01','\x01');
        if (pwVar4 == (wint_t *)0x0) {
          lVar8 = CAW_ResourceNameHash64((wint_t *)pwVar7,(int)pwVar2 - (int)pwVar7 >> 1);
        }
        else {
          lVar8 = FUN_10931870(pwVar4,(int *)0x0,0x10);
        }
        uVar3 = (ulong)lVar8;
        *param_1 = lVar8;
      }
      if (param_2 != pwVar5) {
        pwVar2 = (wchar_t *)
                 CAW_ResourceNameRecognizeHex((wint_t *)param_2,(wint_t *)pwVar5,'\x01','\0');
        if (pwVar2 == (wchar_t *)0x0) {
          uVar3 = CAW_ResourceGroupHash24((wint_t *)param_2,(int)pwVar5 - (int)param_2 >> 1);
        }
        else {
          uVar3 = wcstoul(pwVar2,(wchar_t **)0x0,0x10);
        }
        *(ulong *)((int)param_1 + 0xc) = uVar3;
      }
      if ((((int)param_1[1] == 0) &&
          (*(undefined4 *)(param_1 + 1) = 0xffffffff, local_4 != (wchar_t *)0x0)) &&
         (*local_4 != L'\0')) {
        pwVar2 = local_4;
        do {
          wVar1 = *pwVar2;
          pwVar2 = pwVar2 + 1;
        } while (wVar1 != L'\0');
        pwVar5 = (wchar_t *)
                 CAW_ResourceNameRecognizeHex
                           ((wint_t *)local_4,
                            (wint_t *)(local_4 + ((int)pwVar2 - (int)(local_4 + 1) >> 1)),'\0','\0')
        ;
        if (pwVar5 == (wchar_t *)0x0) {
          if ((((param_6 == 0) || (piVar6 = (int *)FUN_10526a60(param_6), piVar6 == (int *)0x0)) ||
              (uVar3 = (**(code **)(*piVar6 + 0x60))(local_4), uVar3 == 0xffffffff)) &&
             (((param_5 == (int *)0x0 && (param_5 = (int *)FUN_108e50d0(), param_5 == (int *)0x0))
              || (uVar3 = (**(code **)(*param_5 + 0x90))(local_4), uVar3 == 0xffffffff)))) {
            uVar3 = CAW_ResourceNameHash32
                              ((wint_t *)local_4,
                               (int)(local_4 + ((int)pwVar2 - (int)(local_4 + 1) >> 1)) -
                               (int)local_4 >> 1);
            *(ulong *)(param_1 + 1) = uVar3;
          }
          else {
            *(ulong *)(param_1 + 1) = uVar3;
          }
        }
        else {
          uVar3 = wcstoul(pwVar5,(wchar_t **)0x0,0x10);
          *(ulong *)(param_1 + 1) = uVar3;
        }
      }
      if (param_5 != (int *)0x0) {
        uVar3 = (**(code **)(*param_5 + 0x88))(param_1,param_2);
      }
      return CONCAT31((int3)(uVar3 >> 8),1);
    }
    if (*pwVar5 == L'!') {
      pwVar7 = pwVar5 + 1;
      *(undefined4 *)((int)param_1 + 0xc) = 0xffffffff;
      goto LAB_108e48b5;
    }
    pwVar5 = pwVar5 + 1;
    uVar3 = uVar3 - 1;
  } while( true );
}

