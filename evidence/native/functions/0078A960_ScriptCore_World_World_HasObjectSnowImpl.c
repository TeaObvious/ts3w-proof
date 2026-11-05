/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011632f8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasObjectSnowImpl [assembly=ScriptCore token=0x0600075C; scriptHandle:
   System.UInt64, bCheckOnlyScript: System.Boolean; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore_World__World_HasObjectSnowImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  bool bVar1;
  int iVar2;
  void *pvVar3;
  
  iVar2 = FUN_00937570();
  if (iVar2 != 0) {
    pvVar3 = (void *)FUN_00937f80(iVar2);
    if (pvVar3 != (void *)0x0) {
      pvVar3 = (void *)FUN_00934260(pvVar3,DAT_011ea2a8);
      if (pvVar3 != (void *)0x0) {
        bVar1 = FUN_0095e120(pvVar3,param_3);
        return bVar1;
      }
    }
  }
  return true;
}

