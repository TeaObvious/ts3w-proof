/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163b08 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_WallExistsBetweenPointsImpl [assembly=ScriptCore token=0x06000863; lotId:
   System.UInt64, a: Sims3.SimIFace.Vector3, b: Sims3.SimIFace.Vector3, roomDef: System.Int32;
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.World::World_WallExistsBetweenPointsImpl(int param_1,int param_2)

{
  void *this;
  uint in_EAX;
  int *piVar1;
  float *pfVar2;
  uint uVar3;
  undefined1 uStack0000000c;
  undefined1 uStack00000018;
  int in_stack_00000024;
  LotXZLevel *pLVar4;
  LotXZLevel local_38;
  LotXZLevel local_2c;
  undefined4 local_20 [7];
  
  if (DAT_011edbc4 != (void *)0x0) {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      pLVar4 = &local_2c;
      local_2c.x = -1.0;
      local_2c.z = -1.0;
      local_2c.level = 0;
      pfVar2 = RouteVector_ExpandXYZWithXLane(&uStack0000000c,local_20);
      Lot_WorldPositionToLocalLocation(piVar1,pfVar2,pLVar4);
      pLVar4 = &local_38;
      local_38.x = -1.0;
      local_38.z = -1.0;
      local_38.level = 0;
      pfVar2 = RouteVector_ExpandXYZWithXLane(&uStack00000018,local_20);
      in_EAX = Lot_WorldPositionToLocalLocation(piVar1,pfVar2,pLVar4);
      this = *(void **)(piVar1[0xa6] + 0x54 + in_stack_00000024 * 4);
      if (this != (void *)0x0) {
        local_38.level = local_2c.level;
        uVar3 = WallGraph_CrossesLocalSegment(this,&local_2c.x,&local_38.x,(void *)0x0);
        return uVar3;
      }
    }
  }
  return in_EAX & 0xffffff00;
}

