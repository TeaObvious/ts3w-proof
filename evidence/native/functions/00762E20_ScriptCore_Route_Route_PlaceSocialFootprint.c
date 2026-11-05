/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161a90 (original PC 1.67 TS3W.exe).
   ScriptCore.Route::Route_PlaceSocialFootprint [assembly=ScriptCore token=0x06001138; handle:
   System.UInt32, slotAName: System.UInt32, simBPos: Sims3.SimIFace.Vector3, slotBName:
   System.UInt32, footprintId: System.UInt64; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Route__Route_PlaceSocialFootprint
               (uint param_1,int param_2,float param_3,float param_4,float param_5,int param_6)

{
  uint in_EAX;
  int *piVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  
  if (DAT_011d50c4 != (void *)0x0) {
    piVar1 = (int *)FUN_0074b4b0(DAT_011d50c4,param_1);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      uVar2 = FUN_0075df20((int)piVar1,(float *)0x0,param_2,param_3,param_4,param_5,param_6);
      uVar3 = (**(code **)(*piVar1 + 0x14))();
      return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
    }
  }
  return in_EAX & 0xffffff00;
}

