/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01163af8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_HasDiagonalWallImpl [assembly=ScriptCore token=0x06000861; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_World__World_HasDiagonalWallImpl
               (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  uint in_EAX;
  int *piVar1;
  uint uVar2;
  undefined1 uStack_4;
  undefined1 uStack_3;
  undefined1 uStack_2;
  undefined1 uStack_1;
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
    in_EAX = 0;
    if ((piVar1 != (int *)0x0) && (in_EAX = 0, (void *)piVar1[0xa6] != (void *)0x0)) {
      _uStack_4 = CONCAT12(param_5,CONCAT11(param_4,param_3));
      uVar2 = FUN_00b49740((void *)piVar1[0xa6],(undefined2 *)&uStack_4);
      return uVar2;
    }
  }
  return in_EAX & 0xffffff00;
}

