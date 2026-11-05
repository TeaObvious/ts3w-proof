/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note, original PC1.67 static; analyst name. Physical cdecl two stackwords
   pairvectorpointer/sortDWORD, plainRET/EAXopaque32-bit managedarrayhandle; missing
   actualglobalinterface→0. Nonzerosort invokes CEADA0 on begin/end before handleallocation.
   Actual sorting/comparator is a separate helper, not fixedcaptureorder proof. Each8-byte pair
   retains product throughvtable0, actualinterface+C8 receives product/type45hex and returns handle,
   writes alternating UInt32handle/fullpresetID lanes. Allocates8*paircount temporarybytes, doubles
   count toUInt32lane count, type0A/size4 envelopeflags18nonempty or20empty,
   actualinterface+50exports; frees buffer and actualenvelope auxiliary. No guessed CLR
   collection/refcount/error equivalence; actual indirectcall decompiler stack artifacts remain
   visible. */

uint __cdecl PatternPresetPairs_SortAndExportHandles(void *pairs,uint sortPairs)

{
  undefined4 *puVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  int iVar5;
  uint uVar6;
  uint local_34;
  int *local_30;
  uint local_2c;
  int local_28;
  int *local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  iVar5 = 0;
  local_34 = 0;
  local_30 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (local_30 == (int *)0x0) {
    return local_34;
  }
  if (sortPairs != 0) {
    local_2c = local_2c & 0xffffff00;
    local_24 = (int *)0x1081748;
    FUN_00ceada0(*(undefined4 **)pairs,*(undefined4 **)((int)pairs + 4),&local_24,local_2c);
  }
  iVar4 = *(int *)((int)pairs + 4) - *(int *)pairs >> 3;
  piVar2 = FUN_004e6f20(DAT_011cc864,iVar4 * 8,0);
  if (piVar2 != (int *)0x0) {
    local_24 = piVar2;
    if (0 < iVar4) {
      do {
        puVar1 = *(undefined4 **)(*(int *)pairs + iVar5 * 8);
        local_28 = *(int *)(*(int *)pairs + 4 + iVar5 * 8);
        (**(code **)*puVar1)();
        iVar3 = (**(code **)(*local_30 + 200))(puVar1,0x45);
        *piVar2 = iVar3;
        piVar2[1] = local_28;
        iVar5 = iVar5 + 1;
        piVar2 = piVar2 + 2;
      } while (iVar5 < iVar4);
    }
    piVar2 = local_24;
    iVar4 = iVar4 * 2;
    local_20[0] = &PTR_FUN_00fba6f4;
    local_18 = 0;
    local_16 = 0;
    if (iVar4 == 0) {
      iVar4 = 0;
      uVar6 = 0x20;
    }
    else {
      uVar6 = 0x18;
    }
    FUN_004f59c0(local_20,10,uVar6,local_24,4,iVar4);
    (**(code **)(*local_30 + 0x50))(local_20,&local_34);
    FUN_004e5e70(DAT_011cc864,(int)piVar2);
    local_20[0] = &PTR_FUN_00fba6f4;
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\0');
    }
  }
  return local_34;
}

