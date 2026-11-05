/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163ad0 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasSolidFloorImpl [assembly=ScriptCore token=0x0600085C; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasSolidFloorImpl
               (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 auStack_4 [3];
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      auStack_4._0_2_ = CONCAT11(param_4,param_3);
      _auStack_4 = CONCAT13(0xf,CONCAT12(param_5,auStack_4._0_2_));
      uVar2 = FUN_00ad0260(piVar1,(ushort *)auStack_4,1,'\x01',0,0,'\x01');
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

