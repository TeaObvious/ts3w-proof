/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CacheManager_IsCachingAllowed. Export ordinal(s):
   262. Entry VA: 0x1052ebe0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000B81. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl CacheManager_IsCachingAllowed(int param_1)

{
  uint in_EAX;
  int *piVar1;
  int *piVar2;
  wint_t *pwVar3;
  int *piVar4;
  uint uVar5;
  int unaff_EDI;
  undefined8 uStack_14;
  undefined4 uStack_c;
  undefined4 uStack_8;
  
                    /* 0x52ebe0  262  CacheManager_IsCachingAllowed */
  if (DAT_10c2d108 == '\0') {
    return in_EAX & 0xffffff00;
  }
  piVar1 = (int *)FUN_108e50d0();
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)FUN_1055b120();
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))();
    uStack_14 = FUN_105c3980(pwVar3);
    uStack_c = 0x82b43584;
    uStack_8 = 0;
    piVar2 = (int *)(**(code **)(*piVar1 + 0x44))(&uStack_14);
    uVar5 = 0;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x30))(&stack0xffffffd8,0);
      while( true ) {
        if (param_1 == unaff_EDI) {
          if (param_1 != 0) {
            unaff_EDI = FUN_10918e90(param_1);
          }
          return CONCAT31((int3)((uint)unaff_EDI >> 8),1);
        }
        piVar4 = (int *)(**(code **)(*piVar1 + 0x44))(unaff_EDI + -0x10);
        if (piVar4 != piVar2) break;
        unaff_EDI = unaff_EDI + -0x10;
      }
      uVar5 = 0;
      if (param_1 != 0) {
        uVar5 = FUN_10918e90(param_1);
      }
    }
    return uVar5 & 0xffffff00;
  }
  return 0;
}

