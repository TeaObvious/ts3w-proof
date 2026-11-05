/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX registry; pointer and type dwords, RET8.
   Under lock+9F0 find/create type bucket; reuse reverse pointer mapping and increment its
   forward-row count when present. Otherwise draw low24 random bits, OR type<<24, insert unique
   forward handle row with pointer and count1, then reverse pointer-to-handle row. Type20hex denotes
   SACS and22hex event queue. This registration counter does not prevent explicit pointer
   invalidation by76A6D0. */

uint __thiscall ScriptHandle_RegisterTypedPointer(void *this,uint param_1,uint param_2)

{
  LPCRITICAL_SECTION this_00;
  uint uVar1;
  uint uVar2;
  uint uVar3;
  void *pvVar4;
  uint local_28;
  uint local_24;
  void *local_20 [3];
  LPCRITICAL_SECTION local_14 [2];
  int local_c [2];
  char local_4;
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x9f0);
  local_14[0] = this_00;
  FUN_004e1c00(this_00,(uint *)&DAT_01008744);
  FUN_0076a530((void *)((int)this + 4),local_20,(byte *)&param_2);
  pvVar4 = local_20[0];
  if (local_20[0] == *(void **)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) {
    local_28 = local_28 & 0xffffff00;
    FUN_0076a950((void *)((int)this + 4),(int *)local_20,(byte *)&param_2);
    pvVar4 = local_20[0];
  }
  local_20[0] = (void *)((int)pvVar4 + 0x24);
  UInt32PairMap_Find(local_20[0],&local_28,&param_1);
  if (local_28 == *(uint *)(*(int *)((int)pvVar4 + 0x28) + *(int *)((int)pvVar4 + 0x2c) * 4)) {
    uVar2 = param_2 << 0x18;
    do {
      uVar1 = FUN_004fabe0((uint *)((int)this + 0x24));
      param_2 = param_2 & 0xffffff00;
      uVar3 = uVar1 & 0xffffff | uVar2;
      local_28 = uVar3;
      FUN_00733360((void *)((int)pvVar4 + 4),local_c,&local_28);
      uVar1 = param_1;
    } while (local_4 == '\0');
    param_2 = param_2 & 0xffffff00;
    local_28 = param_1;
    local_24 = uVar3;
    UInt32PairMap_InsertUnique(local_20[0],local_20,&local_28,param_2);
    *(uint *)(local_c[0] + 4) = uVar1;
    *(undefined4 *)(local_c[0] + 8) = 1;
    FUN_004e1cc0(local_14[0]);
    return uVar3;
  }
  uVar2 = *(uint *)(local_28 + 4);
  param_2 = uVar2;
  PickCandidateMap_FindIterator((void *)((int)pvVar4 + 4),local_14,&param_2);
  if (local_14[0] !=
      *(LPCRITICAL_SECTION *)(*(int *)((int)pvVar4 + 8) + *(int *)((int)pvVar4 + 0xc) * 4)) {
    local_14[0]->RecursionCount = local_14[0]->RecursionCount + 1;
  }
  FUN_004e1cc0(this_00);
  return uVar2;
}

