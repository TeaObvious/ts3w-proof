/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC 1.67 lot spatial resource / main-entrance boundary review (2026-10-17). ECX manager plus
   lot-ID low/high and output pointer; RET0xC. Admission00629360 precedes reading selected routing
   identifier at record+14; FFFFFFFF rejects.007CFC30 packs
   type2/grouphex12/selectedUInt32/high0;0062FF80 collects matching portal identities in order with
   retain. First portal+14 point passes0062FBD0 with zero height offset and signed-level clamp
   enabled; success copies16internalbytes, releases collection, returnsAL1. Failure leaves output
   untouched and returnsAL0. No serialized-header/live-record join, cache equivalence or complete
   child lifetime contract is implied. Complete actual C/Listing and pristine PE support the
   selected observations. Names/IDs/prototypes/types/body/bytes/Listing/flow/analysis otherwise
   remain unchanged; current managed resource/cache policy is preserved. */

uint __thiscall
LotRouting_GetMainEntranceWorldPosition(void *this,int *param_1,uint param_2,undefined4 *param_3)

{
  undefined4 uVar1;
  undefined4 uVar2;
  void *this_00;
  uint uVar3;
  int iVar4;
  int *lot;
  undefined4 *puVar5;
  undefined4 uVar6;
  ulonglong objectId;
  int **outVector;
  int *local_30;
  int *local_2c;
  undefined4 local_28;
  char *local_24;
  float local_20 [7];
  
  local_30 = param_1;
  local_2c = (int *)param_2;
  uVar3 = LotRouting_HasAdmittedLotRecord(this,(uint)param_1,param_2);
  if ((char)uVar3 != '\0') {
    iVar4 = FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&local_30);
    this_00 = DAT_011edbc4;
    uVar3 = *(uint *)(iVar4 + 0x14);
    if (uVar3 != 0xffffffff) {
      local_30 = (int *)0x0;
      local_2c = (int *)0x0;
      local_28 = 0;
      local_24 = "Routing/PortalList";
      objectId = PackTypedObjectIdentifier(2,0x12,uVar3,0);
      outVector = &local_30;
      lot = WorldObjects_FindLotByGuid(this_00,(uint)param_1,param_2,(uint *)0x0);
      LotRouteGraph_CollectObjectPortals(this,lot,objectId,outVector);
      if (local_30 != local_2c) {
        puVar5 = (undefined4 *)
                 LotRouting_ResolvePortalWorldPosition
                           (this,local_20,this_00,param_1,param_2,(float *)(*local_30 + 0x14),0.0,
                            '\x01');
        uVar6 = puVar5[1];
        uVar1 = puVar5[2];
        uVar2 = puVar5[3];
        *param_3 = *puVar5;
        param_3[1] = uVar6;
        param_3[2] = uVar1;
        param_3[3] = uVar2;
        uVar6 = FUN_00626e50((int *)&local_30);
        return CONCAT31((int3)((uint)uVar6 >> 8),1);
      }
      uVar3 = FUN_00626e50((int *)&local_30);
    }
  }
  return uVar3 & 0xffffff00;
}

