/* PC1.67 original static contract. Initialize each existing component via virtual+4 with param1.
   Read property42906A09 UInt32 component-name hashes, resolve mask, open each selected component
   child and deserialize via virtual+10 with import context and fallback flag. Any failed
   initializer/reader returnsfalse; release child streams. Success dispatches object event2 with
   null payload and returns dispatcherBoolean. No object-manager insertion or explicit scene
   assignment is performed here. Event2 is not event0B; do not equate successful import
   initialization with a completed scene-entry command. */

bool __thiscall
Object_InitializeAndReadImportedComponents
          (void *this,undefined4 param_1,void *param_2,int param_3,undefined4 param_4)

{
  uint *puVar1;
  undefined4 uVar2;
  int iVar3;
  char cVar4;
  bool bVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uVar8;
  uint uVar9;
  uint uVar10;
  uint *puVar11;
  int *piVar12;
  undefined4 *local_9c;
  uint uStack_98;
  void *local_94;
  uint *local_90;
  uint *local_8c;
  uint local_80 [32];
  
  local_94 = ObjectRegistry_GetGlobal();
  uVar10 = *(uint *)((int)this + 0x2c);
  while( true ) {
    if (uVar10 == 0) {
      local_90 = local_80;
      local_9c = (undefined4 *)0x0;
      local_8c = local_90;
      FUN_00934e50(&local_90,local_90,0x20,&local_9c);
      uStack_98 = 0x20;
      cVar4 = NativePropertyStream_ReadUInt32Array(param_2,0x42906a09,local_90,&uStack_98);
      puVar11 = local_8c;
      if (cVar4 != '\0') {
        uVar10 = (int)local_8c - (int)local_90 >> 2;
        if (uVar10 < uStack_98) {
          local_9c = (undefined4 *)0x0;
          FUN_00934e50(&local_90,local_8c,uStack_98 - uVar10,&local_9c);
        }
        else {
          puVar1 = local_90 + uStack_98;
          memmove(puVar1,local_8c,0);
          local_8c = local_8c + -((int)puVar11 - (int)puVar1 >> 2);
        }
        puVar1 = local_8c;
        uVar10 = 0;
        for (puVar11 = local_90; puVar11 != puVar1; puVar11 = puVar11 + 1) {
          uVar6 = ObjectRegistry_FindMaskByNameHash(local_94,*puVar11);
          uVar10 = uVar10 | uVar6;
        }
        while( true ) {
          if (uVar10 == 0) {
            bVar5 = ObjectEvents_Dispatch(2,this,(void *)0x0);
            return bVar5;
          }
          uVar9 = -uVar10 & uVar10;
          uVar6 = uVar9 - 1;
          uVar7 = uVar6 - (uVar6 >> 1 & 0x55555555);
          uVar7 = (uVar7 >> 2 & 0x33333333) + (uVar7 & 0x33333333);
          uVar2 = *(undefined4 *)
                   (param_3 + (((uVar7 >> 4) + uVar7 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4);
          if ((uVar9 & *(uint *)((int)this + 0x2c)) == 0) {
            piVar12 = (int *)0x0;
          }
          else {
            uVar6 = uVar6 & *(uint *)((int)this + 0x2c);
            uVar6 = uVar6 - (uVar6 >> 1 & 0x55555555);
            uVar6 = (uVar6 >> 2 & 0x33333333) + (uVar6 & 0x33333333);
            piVar12 = *(int **)((int)this +
                               (((uVar6 >> 4) + uVar6 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
          }
          uVar8 = FUN_009374c0(local_94,uVar9);
          local_9c = (undefined4 *)0x0;
          uVar8 = NativePropertyStream_OpenChild(param_2,uVar8,&local_9c);
          if ((((char)uVar8 != '\0') && (piVar12 != (int *)0x0)) &&
             (cVar4 = (**(code **)(*piVar12 + 0x10))(local_9c,uVar2,param_4), cVar4 == '\0')) break;
          if (local_9c != (undefined4 *)0x0) {
            iVar3 = local_9c[1];
            local_9c[1] = iVar3 + -1;
            if (iVar3 + -1 == 0) {
              local_9c[1] = 1;
              (**(code **)*local_9c)(1);
            }
          }
          uVar10 = uVar10 & uVar10 - 1;
        }
        if (local_9c != (undefined4 *)0x0) {
          iVar3 = local_9c[1];
          local_9c[1] = iVar3 + -1;
          if (iVar3 + -1 == 0) {
            local_9c[1] = 1;
            (**(code **)*local_9c)(1);
          }
        }
      }
      return false;
    }
    if ((-uVar10 & uVar10 & *(uint *)((int)this + 0x2c)) == 0) {
      piVar12 = (int *)0x0;
    }
    else {
      uVar6 = (-uVar10 & uVar10) - 1 & *(uint *)((int)this + 0x2c);
      uVar6 = uVar6 - (uVar6 >> 1 & 0x55555555);
      uVar6 = (uVar6 >> 2 & 0x33333333) + (uVar6 & 0x33333333);
      piVar12 = *(int **)((int)this +
                         (((uVar6 >> 4) + uVar6 & 0xf0f0f0f) * 0x1010101 >> 0x18) * 4 + 0x34);
    }
    cVar4 = (**(code **)(*piVar12 + 4))(param_1);
    if (cVar4 == '\0') break;
    uVar10 = uVar10 & uVar10 - 1;
  }
  return false;
}
