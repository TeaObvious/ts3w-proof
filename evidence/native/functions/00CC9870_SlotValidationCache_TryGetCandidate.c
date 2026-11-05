/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX cache plus seven stack DWORDs, RET1Ch; AL indicates key found. Uses host GUID
   low/high, slot index and heading ordinal. Restores validation byte and raw rule DWORD; for a
   cached failure copies an available failure record into the optional output. This is a
   full-validation cache, not merely a script-rule answer table. */

undefined4 __thiscall
SlotValidationCache_TryGetCandidate
          (void *this,uint param_1,undefined4 param_2,int param_3,undefined4 param_4,char *param_5,
          undefined4 *param_6,void *param_7)

{
  int iVar1;
  void *this_00;
  bool bVar2;
  uint *puVar3;
  undefined3 extraout_var;
  uint uVar4;
  uint local_10;
  undefined4 local_c;
  int local_8;
  undefined4 local_4;
  
  local_c = param_2;
  local_8 = param_3;
  local_10 = param_1;
  local_4 = param_4;
  puVar3 = (uint *)FUN_00cc9350((void *)((int)this + 0x10),&param_3,&local_10);
  this_00 = param_7;
  uVar4 = *puVar3;
  if (uVar4 == (int)this + 0x14U) {
    return uVar4 & 0xffffff00;
  }
  *param_5 = *(char *)(uVar4 + 0x20);
  *param_6 = *(undefined4 *)(uVar4 + 0x24);
  if ((*param_5 == '\0') && (param_7 != (void *)0x0)) {
    iVar1 = uVar4 + 0x28;
    bVar2 = FUN_00ad6f10(iVar1);
    uVar4 = CONCAT31(extraout_var,bVar2);
    if (bVar2) {
      uVar4 = FUN_00ad8740(this_00,iVar1);
    }
  }
  return CONCAT31((int3)(uVar4 >> 8),1);
}

