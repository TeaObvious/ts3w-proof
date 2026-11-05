/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 SACS migration contract): Seven physical stack words observed at importer
   call:64-bit ID, native resource key, property reader, component-reader context, output object
   pointer and fallback flag. Resolve catalog/product/component mask, allocate original object
   storage, deserialize components, retain output and release temporary resources. Decompiled
   null-object branch/pointer arithmetic require caller/lifetime interpretation, not a safe C
   implementation. OnlyAL defines success. */

uint Inventory_TryCreateObjectFromRecord
               (undefined4 param_1,undefined4 param_2,uint *param_3,void *param_4,int param_5,
               undefined4 *param_6,undefined4 param_7)

{
  uint *puVar1;
  bool bVar2;
  uint uVar3;
  undefined4 uVar4;
  uint *puVar5;
  int *local_40;
  uint local_3c [3];
  int local_30 [12];
  
  puVar5 = param_3;
  local_40 = (int *)0x0;
  uVar3 = ObjectResource_LoadParamsForPrototypeKey(param_3,&local_40);
  if ((char)uVar3 != '\0') {
    uVar4 = FUN_0092f9c0();
    FUN_00939a40(local_30,uVar4);
    uVar3 = FUN_0093a660(puVar5,local_30);
    if ((char)uVar3 != '\0') {
      ParameterBuilder_FinalizeBorrowedTable(local_30,local_3c);
      uVar3 = Object_ExpandComponentMask(local_40[10],local_3c);
      puVar5 = Object_AllocateComponentStorage(CONCAT44(param_2,param_1),uVar3,puVar5);
      param_3 = puVar5;
      if (puVar5 == (uint *)0x0) {
LAB_009379ca:
        puVar1 = puVar5 + 1;
        LOCK();
        *puVar1 = *puVar1 + 1;
        UNLOCK();
        *param_6 = puVar5;
        if (puVar5 != (uint *)0x0) {
          LOCK();
          uVar3 = *puVar1;
          *puVar1 = *puVar1 - 1;
          UNLOCK();
          if (uVar3 == 1) {
            LOCK();
            *puVar1 = 1;
            UNLOCK();
            (**(code **)*puVar5)(1);
          }
        }
        uVar4 = FUN_00582cf0(local_30);
        if (local_40 != (int *)0x0) {
          uVar4 = (**(code **)(*local_40 + 4))();
        }
        return CONCAT31((int3)((uint)uVar4 >> 8),1);
      }
      LOCK();
      puVar5[1] = puVar5[1] + 1;
      UNLOCK();
      bVar2 = Object_InitializeAndReadImportedComponents(puVar5,local_3c,param_4,param_5,param_7);
      if (bVar2) goto LAB_009379ca;
      FUN_007462e0((int *)&param_3);
    }
    uVar3 = FUN_00582cf0(local_30);
  }
  if (local_40 != (int *)0x0) {
    uVar3 = (**(code **)(*local_40 + 4))();
  }
  return uVar3 & 0xffffff00;
}

