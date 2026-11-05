/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst note (PC1.67 construction persistence contract): ECX context with stream/key stack args
   RET8. Find key in retained map; absent key is assigned existing context count at+C and inserted,
   rather than max input handle+1. Flag+82 chooses UInt32 or low16-bit write. Both paths accumulate
   stream status. Actual beginning007D74F0;007D75B0 is an interior instruction, not another entry.
    */

void __thiscall ResourceReferences_WriteRegisteredContextKey(void *this,void *param_1,uint *param_2)

{
  byte bVar1;
  uint uVar2;
  int local_24 [3];
  uint local_18;
  uint local_14;
  uint local_10;
  uint local_c;
  uint local_8;
  
  FUN_005ed9e0(this,local_24,param_2);
  if (*(char *)((int)this + 0x82) == '\0') {
    if (local_24[0] == *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
      local_14 = param_2[1];
      local_18 = *param_2;
      local_10 = param_2[2];
      uVar2 = *(uint *)((int)this + 0xc);
      local_c = param_2[3];
      local_8 = uVar2;
      ResourceKeyMap_InsertUnique(this,local_24,&local_18);
    }
    else {
      uVar2 = *(uint *)(local_24[0] + 0x10);
    }
    bVar1 = Stream_WriteUInt16(*(void **)((int)param_1 + 8),(ushort)uVar2,
                               *(uint *)((int)param_1 + 0x10));
    StreamReader_AccumulateStatus(param_1,bVar1);
    return;
  }
  if (local_24[0] == *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    local_14 = param_2[1];
    local_18 = *param_2;
    local_10 = param_2[2];
    uVar2 = *(uint *)((int)this + 0xc);
    local_c = param_2[3];
    local_8 = uVar2;
    ResourceKeyMap_InsertUnique(this,local_24,&local_18);
  }
  else {
    uVar2 = *(uint *)(local_24[0] + 0x10);
  }
  bVar1 = Stream_WriteUInt32(*(void **)((int)param_1 + 8),uVar2,*(uint *)((int)param_1 + 0x10));
  StreamReader_AccumulateStatus(param_1,bVar1);
  return;
}

