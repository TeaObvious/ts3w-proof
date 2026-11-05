/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163ca8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetInsideRoomsAtLevelImpl [assembly=ScriptCore token=0x06000890; lotId:
   System.UInt64, level: System.Int32, roomDefinition: Sims3.SimIFace.eRoomDefinition;
   return=System.Int32[]]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4
ScriptCore_World__World_GetInsideRoomsAtLevelImpl(int param_1,int param_2,uint param_3,int param_4)

{
  short *psVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  void *this;
  int iVar5;
  short *psVar6;
  undefined4 uStack_1c;
  int iStack_18;
  short *psStack_14;
  short *psStack_10;
  undefined4 uStack_c;
  char *pcStack_8;
  
  iVar5 = 0;
  if (DAT_011edbc4 == (void *)0x0) {
    return 0;
  }
  piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
  uStack_1c = 0;
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar2 == (int *)0x0) {
    this = (void *)0x0;
  }
  else {
    this = (void *)piVar2[0xa6];
  }
  if ((this != (void *)0x0) && (piVar3 != (int *)0x0)) {
    psStack_14 = (short *)0x0;
    psStack_10 = (short *)0x0;
    uStack_c = 0;
    pcStack_8 = "Scripting/WorldHost/sGetInsideRoomsAtLevel/rooms";
    FUN_00b47120(this,param_3,param_4,&psStack_14,'\x01');
    iVar4 = (int)psStack_10 - (int)psStack_14 >> 1;
    if (iVar4 != 0) {
      (**(code **)(*piVar3 + 0x8c))(&uStack_1c,iVar4);
      psVar1 = psStack_10;
      for (psVar6 = psStack_14; psVar6 != psVar1; psVar6 = psVar6 + 1) {
        iStack_18 = (int)*psVar6;
        (**(code **)(*piVar3 + 0xa4))(&uStack_1c,&iStack_18,iVar5,1);
        iVar5 = iVar5 + 1;
      }
    }
    if (psStack_14 != (short *)0x0) {
      Memory_FreeIfNonNull(psStack_14);
    }
  }
  return uStack_1c;
}

