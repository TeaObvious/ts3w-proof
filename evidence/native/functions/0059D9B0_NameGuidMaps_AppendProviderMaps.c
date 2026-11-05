/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 NGMP instruction review. ECX manager, RET4 provider. Enumerate 16-byte keys with
   typeF3A38370 filter through provider+30. Load each through resource-system+0C; query15991A1F;
   copy map at resource+28 into 32-byte vector, preserving enumeration order. Acquired interfaces
   use virtual slots0/4 around copy. Successful generic load with missing queried interface still
   reaches source+28; no graceful validation claim. Interface ownership slot meanings require
   broader type evidence. */

void __thiscall NameGuidMaps_AppendProviderMaps(void *this,void *provider)

{
  undefined4 *this_00;
  bool bVar1;
  int *arg0;
  int *arg0_00;
  undefined4 *puVar2;
  int *piStack_38;
  int *local_34;
  void *local_30;
  undefined4 *puStack_2c;
  undefined **local_28;
  undefined4 local_24;
  undefined4 *local_20;
  undefined4 *local_1c;
  undefined4 local_18;
  char *local_14;
  undefined4 uStack_10;
  undefined4 uStack_c;
  undefined4 uStack_8;
  undefined4 uStack_4;
  
  local_30 = this;
  arg0 = (int *)FUN_004afe80();
  if (arg0 != (int *)0x0) {
    local_20 = (undefined4 *)0x0;
    local_1c = (undefined4 *)0x0;
    local_18 = 0;
    local_14 = "ResourceLoad/NameGuidMap/KeyList";
    local_28 = &PTR_LAB_00fd92b0;
    local_24 = 0xf3a38370;
    local_34 = arg0;
    (**(code **)(*(int *)provider + 0x30))(provider,&local_20,&local_28);
    puStack_2c = local_1c;
    puVar2 = local_20;
    if (local_20 != local_1c) {
      do {
        uStack_10 = *puVar2;
        uStack_8 = puVar2[2];
        uStack_c = puVar2[1];
        uStack_4 = puVar2[3];
        piStack_38 = (int *)0x0;
        bVar1 = (**(code **)(*arg0 + 0xc))(arg0,&uStack_10,&piStack_38,0,provider,0,0);
        if (bVar1) {
          if (piStack_38 == (int *)0x0) {
            arg0_00 = (int *)0x0;
          }
          else {
            arg0_00 = (**(code **)(*piStack_38 + 0xc))(piStack_38,0x15991a1f);
            if (arg0_00 != (int *)0x0) {
              (**(code **)*arg0_00)(arg0_00);
            }
          }
          this_00 = *(undefined4 **)((int)local_30 + 0x14);
          if (this_00 < *(undefined4 **)((int)local_30 + 0x18)) {
            *(undefined4 **)((int)local_30 + 0x14) = this_00 + 8;
            arg0 = local_34;
            if (this_00 != (undefined4 *)0x0) {
              U64PairMap_CopyConstruct(this_00,arg0_00 + 10);
              arg0 = local_34;
            }
          }
          else {
            FUN_0093b240((void *)((int)local_30 + 0x10),this_00,arg0_00 + 10);
          }
          if (arg0_00 != (int *)0x0) {
            (**(code **)(*arg0_00 + 4))(arg0_00);
          }
        }
        if (piStack_38 != (int *)0x0) {
          (**(code **)(*piStack_38 + 4))(piStack_38);
        }
        puVar2 = puVar2 + 4;
      } while (puVar2 != puStack_2c);
    }
    local_28 = &PTR_LAB_00fb3ccc;
    if (local_20 != (undefined4 *)0x0) {
      Memory_FreeIfNonNull(local_20);
    }
  }
  return;
}

