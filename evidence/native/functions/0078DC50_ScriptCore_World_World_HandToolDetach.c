/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163798 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HandToolDetach [assembly=ScriptCore token=0x060007F7; ;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_HandToolDetach(void)

{
  undefined8 uVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = FUN_00cfe370();
  if (iVar2 != 0) {
    uVar1 = *(undefined8 *)(iVar2 + 8);
    if (*(int *)(iVar2 + 8) != 0 || *(int *)(iVar2 + 0xc) != 0) {
      piVar3 = (int *)FUN_007693a0();
      (**(code **)(*piVar3 + 0x18))(0x45ad88a,0,0);
    }
    return uVar1;
  }
  return 0;
}

