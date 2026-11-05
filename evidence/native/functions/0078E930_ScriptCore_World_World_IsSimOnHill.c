/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163cd8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_IsSimOnHill [assembly=ScriptCore token=0x06000896; simObjId:
   System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

bool ScriptCore.World::World_IsSimOnHill(void)

{
  int *piVar1;
  int iVar2;
  undefined4 *this;
  void *this_00;
  float *pfVar3;
  float *pfVar4;
  undefined4 uVar5;
  undefined4 local_30 [4];
  undefined4 local_20 [7];
  
  iVar2 = FUN_00937570();
  this = (undefined4 *)FUN_00937f80(iVar2);
  if (this != (undefined4 *)0x0) {
    piVar1 = this + 1;
    LOCK();
    *piVar1 = *piVar1 + 1;
    UNLOCK();
    this_00 = (void *)FUN_00934260(this,DAT_011ea158);
    if (this_00 != (void *)0x0) {
      pfVar3 = (float *)FUN_00957a60(this_00,local_30);
      pfVar4 = (float *)FUN_00957a30(this_00,local_20);
      uVar5 = FUN_00c72d10(this,pfVar4,pfVar3);
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*this)(1);
      }
      return (char)uVar5 == '\0';
    }
    LOCK();
    iVar2 = *piVar1;
    *piVar1 = *piVar1 + -1;
    UNLOCK();
    if (iVar2 == 1) {
      LOCK();
      *piVar1 = 1;
      UNLOCK();
      (**(code **)*this)(1);
    }
  }
  return false;
}

