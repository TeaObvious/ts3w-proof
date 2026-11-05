/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011635b0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetObjectsImpl [assembly=ScriptCore token=0x060007BA; lotId:
   System.UInt64, location: Sims3.SimIFace.LotLocation; return=System.UInt64[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_GetObjectsImpl
          (int param_1,int param_2,undefined1 param_3,undefined1 param_4,undefined1 param_5)

{
  int iVar1;
  int *piVar2;
  int *this;
  undefined4 unaff_EBX;
  int iVar3;
  int iVar4;
  undefined4 uStack_20;
  undefined4 uStack_1c;
  void *pvStack_18;
  int iStack_10;
  int iStack_c;
  undefined4 uStack_8;
  char *pcStack_4;
  
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((DAT_011edbc4 == (void *)0x0) ||
     (this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0),
     this == (int *)0x0)) {
    return 0;
  }
  uStack_20._0_3_ = CONCAT12(param_5,CONCAT11(param_4,param_3));
  iStack_10 = 0;
  iStack_c = 0;
  uStack_8 = 0;
  pcStack_4 = "World/UserMayPlaceFloorPattern";
  LotQuery_CollectObjectsOnTile(this,(char *)&uStack_20,&iStack_10,'\0','\0','\x01',0xf,0,5);
  iVar3 = iStack_c - iStack_10 >> 2;
  (**(code **)(*piVar2 + 0x88))(&uStack_1c,iVar3);
  iVar4 = 0;
  if (0 < iVar3) {
    do {
      iVar1 = *(int *)((int)pvStack_18 + iVar4 * 4);
      if (iVar1 == 0) {
        uStack_20 = 0;
        uStack_1c = 0;
      }
      else {
        uStack_20 = *(undefined4 *)(iVar1 + 8);
        uStack_1c = *(undefined4 *)(iVar1 + 0xc);
      }
      (**(code **)(*piVar2 + 0xa0))((int)register0x00000010 + -0x24,&uStack_20,iVar4,1);
      iVar4 = iVar4 + 1;
    } while (iVar4 < iVar3);
  }
  if (pvStack_18 != (void *)0x0) {
    Memory_FreeIfNonNull(pvStack_18);
  }
  return unaff_EBX;
}

