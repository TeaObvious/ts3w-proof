/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_SetParamCompositeImpl. Export ordinal(s):
   730. Entry VA: 0x10558940. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EAC. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_SetParamCompositeImpl(undefined4 param_1)

{
  wint_t wVar1;
  int *piVar2;
  int iVar3;
  wint_t *pwVar4;
  wint_t *pwVar5;
  void *unaff_EBX;
  uint uVar6;
  
                    /* 0x558940  730  SACS_SetParamCompositeImpl */
  piVar2 = (int *)FUN_1055b120();
  iVar3 = (**(code **)(*piVar2 + 0xcc))(param_1);
  if (iVar3 != 0) {
    pwVar4 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    pwVar5 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    uVar6 = 0x811c9dc5;
    if (pwVar4 != (wint_t *)0x0) {
      wVar1 = *pwVar4;
      while (wVar1 != 0) {
        wVar1 = towlower(wVar1);
        pwVar4 = pwVar4 + 1;
        uVar6 = uVar6 * 0x1000193 ^ (uint)wVar1;
        wVar1 = *pwVar4;
      }
      uVar6 = uVar6 * 0x1000193 ^ 0x3a;
    }
    if (pwVar5 != (wint_t *)0x0) {
      wVar1 = *pwVar5;
      while (wVar1 != 0) {
        wVar1 = towlower(wVar1);
        pwVar5 = pwVar5 + 1;
        uVar6 = uVar6 * 0x1000193 ^ (uint)wVar1;
        wVar1 = *pwVar5;
      }
    }
    FUN_105f37c0(unaff_EBX,uVar6,param_1);
  }
  return;
}

