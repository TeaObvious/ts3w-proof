/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_GetParamNameImpl. Export ordinal(s): 720.
   Entry VA: 0x1055a9c0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EB1. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 * __cdecl SACS_GetParamNameImpl(uint param_1)

{
  wchar_t wVar1;
  int *piVar2;
  void *this;
  int *piVar3;
  wchar_t *pwVar4;
  wchar_t *pwVar5;
  undefined1 *puVar6;
  undefined *puStack_34;
  undefined *puStack_30;
  undefined **ppuStack_2c;
  char *pcStack_28;
  undefined **appuStack_24 [2];
  undefined2 uStack_1c;
  undefined2 uStack_1a;
  
  piVar2 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar2 + 0xcc))();
  pcStack_28 = "Scripting/SacsHost";
  puStack_34 = &_Dst_10ca8244;
  puStack_30 = &_Dst_10ca8244;
  ppuStack_2c = (undefined **)&DAT_10ca8246;
  if (this == (void *)0x0) {
    pwVar5 = L"<State Machine Driver Not Found>";
    do {
      pwVar4 = pwVar5;
      pwVar5 = pwVar4 + 1;
    } while (*pwVar5 != L'\0');
    pwVar5 = L"<State Machine Driver Not Found>" + ((int)(pwVar4 + -0x858f24b) >> 1);
    pwVar4 = L"<State Machine Driver Not Found>";
  }
  else {
    piVar3 = (int *)FUN_105f1c20(this,param_1);
    if (piVar3 == (int *)0x0) {
      pwVar5 = L"<Parameter Index Out of Bounds>";
      do {
        pwVar4 = pwVar5;
        pwVar5 = pwVar4 + 1;
      } while (*pwVar5 != L'\0');
      pwVar5 = L"<Parameter Index Out of Bounds>" + ((int)(pwVar4 + -0x858f26f) >> 1);
      pwVar4 = L"<Parameter Index Out of Bounds>";
    }
    else {
      pwVar4 = (wchar_t *)FUN_105eebb0(*piVar3);
      wVar1 = *pwVar4;
      pwVar5 = pwVar4;
      while (wVar1 != L'\0') {
        pwVar5 = pwVar5 + 1;
        wVar1 = *pwVar5;
      }
      pwVar5 = pwVar4 + ((int)pwVar5 - (int)pwVar4 >> 1);
    }
  }
  FUN_1001f8c0(&puStack_34,pwVar4,(int *)pwVar5);
  appuStack_24[0] = &PTR_FUN_10aca5b4;
  uStack_1a = 0x13;
  uStack_1c = 0xb;
  FUN_10928b90(appuStack_24,0x13,9,&puStack_34,0x10,1);
  puVar6 = &stack0xffffffc8;
  (**(code **)(*piVar2 + 0x50))(appuStack_24);
  ppuStack_2c = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_24[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_2c,'\0');
  }
  if ((2 < (int)((int)puStack_34 - param_1 & 0xfffffffe)) && (param_1 != 0)) {
    FUN_10918e90(param_1);
  }
  return puVar6;
}

