/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163c28 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_BuildRoutingDataImpl [assembly=ScriptCore token=0x0600078A; ;
   return=System.Void]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

void ScriptCore_World__World_BuildRoutingDataImpl(void)

{
  int *piVar1;
  void *this;
  bool bVar2;
  undefined3 extraout_var;
  
  this = DAT_011edbc4;
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = *(int **)((int)DAT_011edbc4 + 0x84);
    bVar2 = FUN_00c5f450((int)DAT_011edbc4);
    FUN_00c6bb00(this,piVar1,(undefined4 *)CONCAT31(extraout_var,bVar2));
  }
  return;
}

