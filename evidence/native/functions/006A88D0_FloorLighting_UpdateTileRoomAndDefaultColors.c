/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX owner, X/Z DWORD stack slots, low-byte part slot and room DWORD slot, RET16. Compute
   room classification low byte, update14-byte physical descriptor, preserve actual
   room0/missingtile early gate and current/new room-map remap branches. For a present tile
   call6A98C0/6A99A0, then write literalFFFFFFFF with selector9 andC0C0C0C0 with selector10
   through6A9800 using signed part byte and zero extra flags. This proves conditional literal
   initialization, not a universal host storage0/default-product rule or complete floor-removal
   behavior. Child room-map/resource and setter semantics remain separate. */

void __thiscall
FloorLighting_UpdateTileRoomAndDefaultColors
          (void *this,uint param_1,uint param_2,byte param_3,uint param_4)

{
  void *this_00;
  uint uVar1;
  char cVar2;
  void *this_01;
  int *piVar3;
  uint uVar4;
  int iVar5;
  int local_1c [2];
  char local_14;
  undefined3 uStack_13;
  char local_10 [8];
  undefined4 local_8 [2];
  
  FUN_006aa350((undefined4 *)local_10);
  FUN_006a9640(local_10,1);
  uVar1 = param_4;
  iVar5 = 0;
  cVar2 = RoomLight_IsSunnyRoom(this,(short)param_4);
  uVar4 = param_2;
  _local_14 = CONCAT31(uStack_13,cVar2);
  if (cVar2 == '\0') {
    iVar5 = 0x600;
  }
  local_1c[0] = iVar5;
  FUN_006a96e0((void *)(*(int *)((int)this + 4) +
                       (*(int *)((int)this + 0x264) * param_2 + param_1) * 0xe),(ushort *)local_1c,
               local_10);
  if (((uVar1 == 0) && (iVar5 = FUN_006a6620(this,0), iVar5 != 0)) &&
     (*(int *)(*(int *)((int)this + 0x260) + (*(int *)((int)this + 0x264) * uVar4 + param_1) * 4) ==
      0)) {
    return;
  }
  this_01 = FUN_006a42f0(this,param_1,uVar4);
  if (this_01 != (void *)0x0) {
    param_2 = FUN_006a9900(this_01,param_3);
    if ((uVar1 != param_2) && (param_2 != 0)) {
      local_1c[0] = *(int *)(*(int *)((int)this + 0x234) + *(int *)((int)this + 0x238) * 4);
      this_00 = (void *)((int)this + 0x230);
      piVar3 = (int *)FUN_006a6050(this_00,local_8,&param_4);
      if (*piVar3 == local_1c[0]) {
        local_1c[0] = *(int *)(*(int *)((int)this + 0x234) + *(int *)((int)this + 0x238) * 4);
        piVar3 = (int *)FUN_006a6050(this_00,local_8,&param_2);
        if (*piVar3 != local_1c[0]) {
          iVar5 = FUN_006a8420(this_00,&param_2);
          FUN_006a7bc0(this,uVar1,(undefined4 *)(iVar5 + 0x10));
        }
      }
    }
    uVar4 = (uint)(char)param_3;
    FUN_006a98c0(this_01,uVar1,param_3);
    FUN_006a99a0(this_01,uVar1,(char)_local_14);
    FUN_006a9800(this_01,9,0xffffffff,uVar4,0,0);
    FUN_006a9800(this_01,10,0xc0c0c0c0,uVar4,0,0);
  }
  return;
}

