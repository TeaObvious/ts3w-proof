/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX preset plus reader and output key vector RET8.
   Corrected two physical stack args and indirect streamPosition ABI remove false unaff_retaddr/EBP.
   WriteUInt16magic42, twoUInt32 placeholders, actual complate005C1BE0 using supplied or local key
   vector, backpatch relative offset/size, write local key vector and restore final stream position.
   Current saved body embeds supported version4complate with external lot handles. */

byte __thiscall Preset_WriteBinaryBlock(void *this,undefined *arg0,undefined *arg1)

{
  undefined *this_00;
  byte bVar1;
  char cVar2;
  uint arg0_00;
  uint arg0_01;
  void **ppvVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  void *apvStack_10 [4];
  
  this_00 = arg0;
  if ((*(int *)((int)this + 0x28) == 0) &&
     (*(int *)((int)this + 0x30) - *(int *)((int)this + 0x2c) >> 1 != 0)) {
    return 0;
  }
  bVar1 = FUN_004ddf20(*(int **)(arg0 + 8),0x42,*(int *)(arg0 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  arg0_00 = (**(code **)(**(int **)(this_00 + 8) + 0x24))((undefined *)*(int **)(this_00 + 8),0);
  bVar1 = Stream_WriteUInt32(*(void **)(this_00 + 8),0,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  arg0_01 = (**(code **)(**(int **)(this_00 + 8) + 0x24))((undefined *)*(int **)(this_00 + 8),0);
  bVar1 = Stream_WriteUInt32(*(void **)(this_00 + 8),0,*(uint *)(this_00 + 0x10));
  StreamReader_AccumulateStatus(this_00,bVar1);
  StreamContext_GetPositionAndMarkNegative(this_00);
  arg0 = s_CAS_DesignModePresetResource_Wri_00fe3a24;
  FUN_007d9500(apvStack_10,&arg0);
  ppvVar3 = (void **)arg1;
  if (arg1 == (undefined *)0x0) {
    ppvVar3 = apvStack_10;
  }
  if (*(void **)((int)this + 0x28) != (void *)0x0) {
    iVar4 = FUN_005c1be0(*(void **)((int)this + 0x28),this_00,ppvVar3);
    if ((char)iVar4 == '\0') goto LAB_005bf667;
  }
  uVar5 = (**(code **)(**(int **)(this_00 + 8) + 0x24))((undefined *)*(int **)(this_00 + 8),0);
  if (uVar5 == 0xffffffff) {
    this_00[0x14] = 0;
  }
  else {
    Stream_BackpatchUInt32(this_00,arg0_00,(uVar5 - arg0_00) - 4);
  }
  iVar4 = StreamContext_GetPositionAndMarkNegative(this_00);
  cVar2 = FUN_007d8a00(apvStack_10,(int)this_00);
  if (cVar2 != '\0') {
    iVar6 = StreamContext_GetPositionAndMarkNegative(this_00);
    Stream_BackpatchUInt32(this_00,arg0_01,iVar6 - iVar4);
    bVar1 = this_00[0x14];
    if (apvStack_10[0] != (void *)0x0) {
      Memory_FreeIfNonNull(apvStack_10[0]);
    }
    return bVar1;
  }
LAB_005bf667:
  if (apvStack_10[0] != (void *)0x0) {
    Memory_FreeIfNonNull(apvStack_10[0]);
  }
  return 0;
}

