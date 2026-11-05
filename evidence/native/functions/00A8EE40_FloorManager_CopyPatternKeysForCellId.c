/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original PC1.67; descriptive analyst name. Physical ECX floor manager plus cellUInt16 stackword
   and output64-byte pointer, RET8; no returnvalue contract. MOVZX zero-extends the wire cell ID
   toUInt32. Manager+D8 owns map; ID0 selects implicitdefaultquad+40. Nonzero ID queries
   reversemap+20 throughA8E780; missing iterator/end or null keyblock selects nullquad011EC8E0.
   Copies exactly16DWORDs/64bytes via REP MOVSD. FFFF receives ordinary unsigned lookup, not a
   reserved-ID failure. Full saved map storage indexes areUInt32 at producerAA5490; this query
   adapter isUInt16. No invented map-null guard or managed failure policy. Complete95ownedbytes;
   existing types/ABI/bytes preserved. */

void __thiscall FloorManager_CopyPatternKeysForCellId(void *this,ushort param_1,undefined4 *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int local_8 [2];
  
  iVar1 = *(int *)((int)this + 0xd8);
  if (param_1 == 0) {
    puVar2 = (undefined4 *)(iVar1 + 0x40);
LAB_00a8ee83:
    if (puVar2 != (undefined4 *)0x0) goto LAB_00a8ee8c;
  }
  else {
    _param_1 = (uint)param_1;
    FUN_00a8e780((void *)(iVar1 + 0x20),local_8,(uint *)&param_1);
    if (local_8[0] != *(int *)(*(int *)(iVar1 + 0x24) + *(int *)(iVar1 + 0x28) * 4)) {
      puVar2 = (undefined4 *)(local_8[0] + 8);
      goto LAB_00a8ee83;
    }
  }
  puVar2 = &DAT_011ec8e0;
LAB_00a8ee8c:
  for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
    *param_2 = *puVar2;
    puVar2 = puVar2 + 1;
    param_2 = param_2 + 1;
  }
  return;
}

