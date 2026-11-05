/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011564f0 (original PC 1.67 TS3W.exe).
   ScriptCore.CASUtils::CASUtils_AddObjectToBabyMakerSceneWindowImpl [assembly=ScriptCore
   token=0x0600033B; winHandle: System.UInt32, scriptHandle: System.UInt64, callback:
   System.Delegate; return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void __cdecl ScriptCore.CASUtils::CASUtils_AddObjectToBabyMakerSceneWindowImpl(uint param_1)

{
  int *piVar1;
  void *pvVar2;
  int iVar3;
  undefined4 *this;
  float afStack_28 [9];
  
  if ((param_1 & 0xff000000) == 0x30000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar1 != (int *)0x0) {
      pvVar2 = (void *)(**(code **)(*piVar1 + 0xc))(0x39a436f);
      if (pvVar2 != (void *)0x0) {
        iVar3 = FUN_00937570();
        this = (undefined4 *)FUN_00937f80(iVar3);
        if (this != (undefined4 *)0x0) {
          piVar1 = this + 1;
          LOCK();
          *piVar1 = *piVar1 + 1;
          UNLOCK();
          iVar3 = FUN_007eb3e0(pvVar2,'\0');
          if (iVar3 != 0) {
            FUN_009356c0(0xb,this,&stack0xffffffc8);
            pvVar2 = (void *)FUN_00934260(this,DAT_011ea158);
            if (pvVar2 != (void *)0x0) {
              afStack_28[0] = 0.0;
              afStack_28[1] = 0.0;
              afStack_28[2] = 0.0;
              afStack_28[3] = 0.0;
              FUN_00958330(pvVar2,afStack_28);
            }
          }
          LOCK();
          iVar3 = *piVar1;
          *piVar1 = *piVar1 + -1;
          UNLOCK();
          if (iVar3 == 1) {
            LOCK();
            *piVar1 = 1;
            UNLOCK();
            (**(code **)*this)(1);
          }
        }
      }
    }
  }
  return;
}

