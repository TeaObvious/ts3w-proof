/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX object registry plus four stack words.
   Prepare31 component readers, open native stream, enumerate stored64-bit IDs with ordinal child
   key. Missing9EF522D6 UInt16 or key index outside key-vector count skips record. Try primary
   factory first; only failure triggers alternate85DCC430/BC31CDF3/6734F6ED then fallback. Publish
   loaded object to GUID hash and event4, return loaded object count in EAX. Current nullable
   metadata projection does not validate index, instantiate components, remap IDs or publish events.
   Disjoint original owned ranges and nonowned gap retained. */

int __thiscall
Inventory_ImportObjectRecords(void *this,void *param_1,int *param_2,undefined4 param_3,int *param_4)

{
  undefined4 uVar1;
  undefined4 *puVar2;
  void *pvVar3;
  char cVar4;
  int iVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  int *piVar8;
  int iVar9;
  uint *puVar10;
  undefined4 *puStack_108;
  undefined4 *puStack_104;
  void *local_100;
  int iStack_fc;
  int iStack_f8;
  ushort auStack_f4 [2];
  undefined4 *puStack_f0;
  uint uStack_ec;
  uint auStack_e8 [4];
  undefined4 *puStack_d8;
  uint uStack_d0;
  uint uStack_cc;
  uint uStack_c8;
  undefined4 uStack_c4;
  undefined4 local_c0 [13];
  undefined1 auStack_8c [12];
  int local_80;
  undefined1 local_7c [124];
  
  local_100 = this;
  FUN_00938d70(this,param_4);
  local_80 = 0;
  memset(local_7c,0,0x7c);
  iVar9 = 0;
  if (0 < *(int *)((int)this + 0x11c8)) {
    piVar8 = (int *)((int)this + 0x1044);
    do {
      if (iVar9 < *(int *)((int)local_100 + 0x11c8)) {
        iVar5 = *piVar8;
      }
      else {
        iVar5 = 0;
      }
      iVar5 = (**(code **)(iVar5 + 0x14))();
      if (iVar5 == 0) {
        return 0;
      }
      *(int **)(iVar5 + 4) = param_2;
      *(undefined4 *)(iVar5 + 8) = param_3;
      *(int **)(iVar5 + 0xc) = param_4;
      *(int *)(local_7c + iVar9 * 4 + -4) = iVar5;
      iVar9 = iVar9 + 1;
      piVar8 = piVar8 + 1;
    } while (iVar9 < *(int *)((int)local_100 + 0x11c8));
  }
  FUN_007d56c0(local_c0);
  uVar6 = NativePropertyStream_OpenIndex(local_c0,param_1);
  if ((char)uVar6 == '\0') {
    FUN_007d5120(local_c0);
    return 0;
  }
  puStack_f0 = (undefined4 *)*param_4;
  puStack_d8 = (undefined4 *)param_4[1];
  iStack_fc = 0;
  iStack_f8 = 0;
  if (puStack_f0 != puStack_d8) {
    do {
      uVar6 = *puStack_f0;
      uVar1 = puStack_f0[1];
      puStack_108 = (undefined4 *)0x0;
      uVar7 = NativePropertyStream_OpenChild(local_c0,iStack_fc,&puStack_108);
      if ((char)uVar7 == '\0') goto LAB_00939329;
      cVar4 = NativePropertyStream_ReadUInt16(puStack_108,0x9ef522d6,auStack_f4);
      if (cVar4 == '\0') {
LAB_0093915b:
        if (puStack_108 != (undefined4 *)0x0) {
          iVar9 = puStack_108[1];
          puStack_108[1] = iVar9 + -1;
          if (iVar9 + -1 == 0) {
            puStack_108[1] = 1;
            (**(code **)*puStack_108)(1);
          }
        }
      }
      else {
        if ((uint)(param_2[1] - *param_2 >> 4) <= (uint)auStack_f4[0]) goto LAB_0093915b;
        puVar10 = (uint *)((uint)auStack_f4[0] * 0x10 + *param_2);
        puStack_104 = (undefined4 *)0x0;
        uVar7 = Inventory_TryCreateObjectFromRecord
                          (uVar6,uVar1,puVar10,puStack_108,(int)&local_80,&puStack_104,0);
        if ((char)uVar7 == '\0') {
          auStack_e8[0] = 0;
          auStack_e8[1] = 0;
          auStack_e8[2] = 0;
          auStack_e8[3] = 0;
          cVar4 = NativePropertyStream_ReadUInt32(puStack_108,0x85dcc430,auStack_e8 + 2);
          if (((cVar4 != '\0') &&
              (cVar4 = NativePropertyStream_ReadUInt32(puStack_108,0xbc31cdf3,auStack_e8 + 3),
              cVar4 != '\0')) &&
             (cVar4 = NativePropertyStream_ReadUInt64(puStack_108,0x6734f6ed,auStack_e8),
             puVar2 = puStack_108, cVar4 != '\0')) {
            uVar7 = 1;
            piVar8 = FUN_0068fef0((int *)&puStack_104);
            pvVar3 = local_100;
            uVar7 = Inventory_TryCreateObjectFromRecord
                              (uVar6,uVar1,auStack_e8,puVar2,(int)&local_80,piVar8,uVar7);
            puVar2 = puStack_108;
            if ((char)uVar7 == '\0') {
              uStack_d0 = *puVar10;
              uStack_cc = puVar10[1];
              uStack_c8 = puVar10[2];
              uVar7 = 1;
              uStack_c4 = 0;
              piVar8 = FUN_0068fef0((int *)&puStack_104);
              Inventory_TryCreateObjectFromRecord
                        (uVar6,uVar1,&uStack_d0,puVar2,(int)&local_80,piVar8,uVar7);
            }
            else {
              *(int *)((int)pvVar3 + 0x11e8) = *(int *)((int)pvVar3 + 0x11e8) + 1;
            }
            goto LAB_009392b9;
          }
          if (puStack_104 == (undefined4 *)0x0) goto LAB_00939329;
LAB_0093930a:
          piVar8 = puStack_104 + 1;
          LOCK();
          iVar9 = *piVar8;
          *piVar8 = *piVar8 + -1;
          UNLOCK();
          if (iVar9 == 1) {
            LOCK();
            *piVar8 = 1;
            UNLOCK();
            if (puStack_104 != (undefined4 *)0x0) {
              (**(code **)*puStack_104)(1);
            }
          }
        }
        else {
LAB_009392b9:
          puVar2 = puStack_104;
          if (puStack_104 != (undefined4 *)0x0) {
            LOCK();
            puStack_104[1] = puStack_104[1] + 1;
            UNLOCK();
            uStack_ec = uStack_ec & 0xffffff00;
            ObjectHash_InsertGuid((void *)((int)local_100 + 0x10),auStack_8c,puStack_104,uStack_ec);
            ObjectEvents_Dispatch(4,puVar2,(void *)0x0);
            iStack_f8 = iStack_f8 + 1;
            if (puStack_104 != (undefined4 *)0x0) goto LAB_0093930a;
          }
        }
LAB_00939329:
        if (puStack_108 != (undefined4 *)0x0) {
          iVar9 = puStack_108[1];
          puStack_108[1] = iVar9 + -1;
          if (iVar9 + -1 == 0) {
            puStack_108[1] = 1;
            (**(code **)*puStack_108)(1);
          }
        }
      }
      iStack_fc = iStack_fc + 1;
      puStack_f0 = puStack_f0 + 2;
    } while (puStack_f0 != puStack_d8);
  }
  FUN_007d5090((int)local_c0);
  iVar9 = 0x1f;
  do {
    if (*(int **)(local_7c + iVar9 * 4 + -4) != (int *)0x0) {
      (**(code **)(**(int **)(local_7c + iVar9 * 4 + -4) + 4))();
      if (*(undefined4 **)(local_7c + iVar9 * 4 + -4) != (undefined4 *)0x0) {
        (**(code **)**(undefined4 **)(local_7c + iVar9 * 4 + -4))(1);
      }
    }
    iVar9 = iVar9 + -1;
  } while (-1 < iVar9);
  FUN_007d5120(local_c0);
  return iStack_f8;
}

