/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0115ec00 (original PC 1.67 TS3W.exe).
   ScriptCore.CacheManager::CacheManager_IsCachingAllowed [assembly=ScriptCore token=0x06000D9C;
   databaseName: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.CacheManager::CacheManager_IsCachingAllowed(int param_1)

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
  
  if (DAT_0115ebf0 == '\0') {
    return in_EAX & 0xffffff00;
  }
  piVar1 = (int *)FUN_004afe80();
  if (piVar1 != (int *)0x0) {
    piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))();
    uStack_14 = FUN_007d00c0(pwVar3);
    uStack_c = 0x82b43584;
    uStack_8 = 0;
    piVar2 = (int *)(**(code **)(*piVar1 + 0x44))(&uStack_14);
    uVar5 = 0;
    if (piVar2 != (int *)0x0) {
      (**(code **)(*piVar2 + 0x30))(&stack0xffffffd8,0);
      while( true ) {
        if (param_1 == unaff_EDI) {
          if (param_1 != 0) {
            unaff_EDI = FUN_004e44e0(param_1);
          }
          return CONCAT31((int3)((uint)unaff_EDI >> 8),1);
        }
        piVar4 = (int *)(**(code **)(*piVar1 + 0x44))(unaff_EDI + -0x10);
        if (piVar4 != piVar2) break;
        unaff_EDI = unaff_EDI + -0x10;
      }
      uVar5 = 0;
      if (param_1 != 0) {
        uVar5 = FUN_004e44e0(param_1);
      }
    }
    return uVar5 & 0xffffff00;
  }
  return 0;
}

