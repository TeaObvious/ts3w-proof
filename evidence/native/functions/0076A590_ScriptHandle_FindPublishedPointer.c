/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Analyst note (PC1.67 SACS host reset contract): ECX registry, UInt32 handle, RET4. Lock+9F0; type
   is unsigned high byte handle>>24. Find type bucket and forward handle row; return DWORD row+4 or
   zero. An existing row whose pointer was cleared by76A6D0 is invalid. No extra ownership/retain
   operation occurs in this lookup body. SACS767480 uses it before queue pointer registration. */

undefined4 __thiscall ScriptHandle_FindPublishedPointer(void *this,uint param_1)

{
  LPCRITICAL_SECTION this_00;
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  byte local_11;
  int local_10 [2];
  undefined4 local_8 [2];
  
  this_00 = (LPCRITICAL_SECTION)((int)this + 0x9f0);
  FUN_004e1c00(this_00,(uint *)&DAT_01008744);
  local_11 = (byte)(param_1 >> 0x18);
  piVar3 = (int *)FUN_0076a530((void *)((int)this + 4),local_8,&local_11);
  iVar1 = *piVar3;
  if ((iVar1 != *(int *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) &&
     (PickCandidateMap_FindIterator((void *)(iVar1 + 4),local_10,&param_1),
     local_10[0] != *(int *)(*(int *)(iVar1 + 8) + *(int *)(iVar1 + 0xc) * 4))) {
    uVar2 = *(undefined4 *)(local_10[0] + 4);
    FUN_004e1cc0(this_00);
    return uVar2;
  }
  FUN_004e1cc0(this_00);
  return 0;
}

