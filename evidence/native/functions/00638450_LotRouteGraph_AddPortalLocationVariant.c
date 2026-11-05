/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst: original PC 1.67 portal contract. Creates stride0x38 record containing four float
   X/Z/intlevel endpoints and full64 AGS mask. Applies selected-lot graph matrix to X/Z unless
   alreadyLocal flag; level is unchanged. Appends to portal+0x5c and refreshes room connectivity;
   returns boolean AL. Passed objectGUID is unused here. */

bool __thiscall
LotRouteGraph_AddPortalLocationVariant
          (void *this,void *lot,ulonglong unusedObjectId,void *portal,TS3WPortalXZLevel start,
          TS3WPortalXZLevel end,TS3WPortalXZLevel backStart,TS3WPortalXZLevel backEnd,ulonglong ags,
          bool alreadyLocal)

{
  void *pvVar1;
  void *pvVar2;
  char cVar3;
  undefined4 uVar4;
  float local_54;
  float local_50;
  float local_4c;
  float local_48;
  float local_44;
  float local_40;
  undefined4 local_3c;
  undefined4 local_38 [14];
  
  pvVar1 = lot;
  if ((*(char *)((int)this + 0x10d) == '\0') && (lot != (void *)0x0)) {
    uVar4 = LotRouting_HasAdmittedLotRecord
                      (this,*(uint *)((int)lot + 0x48),*(uint *)((int)lot + 0x4c));
    pvVar2 = portal;
    if (((char)uVar4 != '\0') && (portal != (void *)0x0)) {
      local_3c = *(undefined4 *)((int)pvVar1 + 0x4c);
      local_40 = *(float *)((int)pvVar1 + 0x48);
      FUN_0062f2d0((void *)((int)this + 0x48),(uint *)&local_40);
      local_44 = start.x;
      local_40 = start.z;
      local_4c = end.x;
      local_48 = end.z;
      local_54 = backStart.x;
      local_50 = backStart.z;
      lot = (void *)backEnd.x;
      portal = (void *)backEnd.z;
      if (!alreadyLocal) {
        LotRouteGraph_ApplyLotPositionMatrix
                  (this,*(ulonglong *)((int)pvVar1 + 0x48),start.x,start.z,&local_44,&local_40);
        LotRouteGraph_ApplyLotPositionMatrix
                  (this,*(ulonglong *)((int)pvVar1 + 0x48),end.x,end.z,&local_4c,&local_48);
        LotRouteGraph_ApplyLotPositionMatrix
                  (this,*(ulonglong *)((int)pvVar1 + 0x48),backStart.x,backStart.z,&local_54,
                   &local_50);
        LotRouteGraph_ApplyLotPositionMatrix
                  (this,*(ulonglong *)((int)pvVar1 + 0x48),backEnd.x,backEnd.z,(float *)&lot,
                   (float *)&portal);
      }
      FUN_006257c0(local_38,local_44,local_40,start.level,local_4c,local_48,end.level,local_54,
                   local_50,backStart.level,lot,portal,backEnd.level,(undefined4)ags,ags._4_4_);
      FUN_0062af90((void *)((int)pvVar2 + 0x5c),local_38);
      cVar3 = FUN_00636140(this,(int)pvVar1,(int)pvVar2,'\x01');
      if (cVar3 == '\0') {
        uVar4 = FUN_006322c0(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c));
        FUN_00632590(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c),(int)pvVar2);
        if ((char)uVar4 != '\0') {
          FUN_00632310(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c));
        }
        return true;
      }
    }
  }
  return false;
}

