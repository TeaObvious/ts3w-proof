/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_GetParamStringImpl. Export ordinal(s): 721.
   Entry VA: 0x1055a9b0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EAF. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined1 * __cdecl SACS_GetParamStringImpl(int param_1)

{
  wchar_t wVar1;
  int *piVar2;
  void *this;
  wchar_t *pwVar3;
  wchar_t *pwVar4;
  undefined1 *puVar5;
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
    pwVar4 = L"<State Machine Driver Not Found>";
    do {
      pwVar3 = pwVar4;
      pwVar4 = pwVar3 + 1;
    } while (*pwVar4 != L'\0');
    pwVar4 = L"<State Machine Driver Not Found>" + ((int)(pwVar3 + -0x858f24b) >> 1);
    pwVar3 = L"<State Machine Driver Not Found>";
  }
  else {
    pwVar3 = (wchar_t *)FUN_105f1bd0(this,param_1,'\0');
    if (pwVar3 == (wchar_t *)0x0) {
      if ((2 < (int)((int)ppuStack_2c - (int)puStack_34 & 0xfffffffeU)) &&
         (puStack_34 != (undefined *)0x0)) {
        FUN_10918e90((int)puStack_34);
      }
      return (undefined1 *)0x0;
    }
    wVar1 = *pwVar3;
    pwVar4 = pwVar3;
    while (wVar1 != L'\0') {
      pwVar4 = pwVar4 + 1;
      wVar1 = *pwVar4;
    }
    pwVar4 = pwVar3 + ((int)pwVar4 - (int)pwVar3 >> 1);
  }
  FUN_1001f8c0(&puStack_34,pwVar3,(int *)pwVar4);
  appuStack_24[0] = &PTR_FUN_10aca5b4;
  uStack_1a = 0x13;
  uStack_1c = 0xb;
  FUN_10928b90(appuStack_24,0x13,9,&puStack_34,0x10,1);
  puVar5 = &stack0xffffffc8;
  (**(code **)(*piVar2 + 0x50))(appuStack_24);
  ppuStack_2c = &PTR_FUN_10aca5b4;
  if (((uint)appuStack_24[0] & 4) != 0) {
    FUN_10928a90(&ppuStack_2c,'\0');
  }
  if ((2 < (int)((int)puStack_34 - param_1 & 0xfffffffeU)) && (param_1 != 0)) {
    FUN_10918e90(param_1);
  }
  return puVar5;
}

