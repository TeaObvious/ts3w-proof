/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011637b0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HandToolShow [assembly=ScriptCore token=0x060007FA; ;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_HandToolShow(void)

{
  int *piVar1;
  undefined4 uVar2;
  
  piVar1 = (int *)FUN_007693a0();
  uVar2 = (**(code **)(*piVar1 + 0x18))(0x46910cb,0,0);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

