/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: original PC 1.67 portal contract. Rejects graph+0x10d mode or unavailable lot.
   Allocates0x80 Routing/Portal, stores GUID/positions/cost/type/oneway/AGS through constructor,
   retains output, updates room graph and registration lists; returns saved uint32 portal serial
   (counter increments modulo2^32) from graph+0xc0, not per-room node index. Early unavailable
   graph/lot gates return0. Null allocation is later dereferenced in original instructions; no
   graceful allocation-failure0 contract is established. Native position level is signed int32, not
   float. */

uint __thiscall
LotRouteGraph_CreatePortal
          (void *this,void *lot,ulonglong objectId,TS3WPortalXZLevel start,void *startSlot,
          TS3WPortalXZLevel end,void *endSlot,float cost,uint unused,bool oneWay,ulonglong ags,
          void **outPortal,bool extraFlag,uint index)

{
  uint serial;
  TS3WPortalXZLevel start_00;
  TS3WPortalXZLevel end_00;
  void *pvVar1;
  undefined4 uVar2;
  int iVar3;
  void *pvVar4;
  undefined4 *puVar5;
  float local_10;
  float local_c;
  uint local_8;
  undefined4 local_4;
  
  pvVar1 = lot;
  if (*(char *)((int)this + 0x10d) != '\0') {
    return 0;
  }
  if (lot != (void *)0x0) {
    uVar2 = FUN_00629360(this,*(uint *)((int)lot + 0x48),*(uint *)((int)lot + 0x4c));
    if ((char)uVar2 != '\0') {
      local_4 = *(undefined4 *)((int)pvVar1 + 0x4c);
      local_8 = *(uint *)((int)pvVar1 + 0x48);
      iVar3 = FUN_0062f2d0((void *)((int)this + 0x48),&local_8);
      serial = *(uint *)((int)this + 0xc0);
      *(uint *)((int)this + 0xc0) = serial + 1;
      local_c = 0.0;
      local_10 = 0.0;
      local_8 = serial;
      LotRouteGraph_ApplyLotPositionMatrix
                (this,*(ulonglong *)((int)pvVar1 + 0x48),start.x,start.z,&local_c,&local_10);
      start.z = 0.0;
      lot = (void *)0x0;
      LotRouteGraph_ApplyLotPositionMatrix
                (this,*(ulonglong *)((int)pvVar1 + 0x48),end.x,end.z,&start.z,(float *)&lot);
      pvVar4 = (void *)FUN_004e4500(0x80,"Routing/Portal",0);
      if (pvVar4 == (void *)0x0) {
        puVar5 = (undefined4 *)0x0;
      }
      else {
        start_00.z = local_10;
        start_00.x = local_c;
        start_00.level = start.level;
        end_00.z = (float)lot;
        end_00.x = start.z;
        end_00.level = end.level;
        puVar5 = Portal_Initialize(pvVar4,objectId,serial,start_00,startSlot,end_00,endSlot,cost,
                                   unused,oneWay,ags,index);
      }
      lot = puVar5;
      if (puVar5 != (undefined4 *)0x0) {
        (**(code **)*puVar5)();
      }
      if (outPortal != (void **)0x0) {
        *outPortal = puVar5;
      }
      uVar2 = FUN_007cfc70((ushort)puVar5[2],puVar5[3],2,0x12);
      if ((char)uVar2 == '\0') {
        *(ushort *)(puVar5 + 0x16) = *(ushort *)(puVar5 + 0x16) & 0xfffd;
      }
      else {
        *(ushort *)(puVar5 + 0x16) = *(ushort *)(puVar5 + 0x16) | 2;
      }
      if (extraFlag) {
        *(ushort *)(puVar5 + 0x16) = *(ushort *)(puVar5 + 0x16) | 4;
      }
      else {
        *(ushort *)(puVar5 + 0x16) = *(ushort *)(puVar5 + 0x16) & 0xfffb;
      }
      FUN_00636140(this,(int)pvVar1,(int)puVar5,'\x01');
      if (*(int *)((int)this + 200) == 0) {
        pvVar4 = (void *)(iVar3 + 0x44);
      }
      else {
        pvVar4 = (void *)(iVar3 + 0x54);
      }
      FUN_00b27450(pvVar4,(int *)&lot);
      uVar2 = FUN_006322c0(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c));
      pvVar4 = lot;
      FUN_00632590(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c),(int)lot);
      if ((char)uVar2 != '\0') {
        FUN_00632310(this,*(uint *)((int)pvVar1 + 0x48),*(uint *)((int)pvVar1 + 0x4c));
      }
      if (pvVar4 != (void *)0x0) {
        (**(code **)(*(int *)pvVar4 + 4))();
      }
      return local_8;
    }
  }
  return 0;
}

