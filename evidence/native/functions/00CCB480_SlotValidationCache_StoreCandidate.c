/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Physical ECX cache plus seven stack DWORDs, RET1Ch. First four words are host GUID low/high, slot
   index and heading ordinal; stores validation byte and raw rule DWORD unconditionally. For a
   failed result copies an available failure record. DoNotCache filtering occurs in the caller, not
   this store routine. */

void __thiscall
SlotValidationCache_StoreCandidate
          (void *this,uint param_1,undefined4 param_2,undefined4 param_3,undefined4 param_4,
          char param_5,int param_6,int param_7)

{
  bool bVar1;
  int *piVar2;
  uint local_98;
  undefined4 local_94;
  undefined4 local_90;
  undefined4 local_8c;
  char local_88;
  int local_84;
  undefined1 local_80 [12];
  undefined4 *local_74;
  undefined4 *local_58;
  undefined4 *local_3c;
  undefined4 *local_20;
  
  local_98 = param_1;
  local_94 = param_2;
  local_90 = param_3;
  local_8c = param_4;
  FUN_00ad7740((int)local_80);
  local_88 = param_5;
  local_84 = param_6;
  if (((param_5 == '\0') && (param_7 != 0)) && (bVar1 = FUN_00ad6f10(param_7), bVar1)) {
    FUN_00ad8740(local_80,param_7);
  }
  piVar2 = FUN_00ccb320((void *)((int)this + 0x10),&local_98);
  *(char *)piVar2 = local_88;
  piVar2[1] = local_84;
  FUN_00ccab00(piVar2 + 2,local_80);
  FUN_00a527c0(local_20);
  FUN_00a527c0(local_3c);
  FUN_00a527c0(local_58);
  FUN_00a52780(local_74);
  return;
}

