/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX default-part lookup, age/gender flags, category, body-type and
   output-key stack words. First lookup uses packed ((flags<<8)|category)<<8|bodyType selector, then
   native fallback helper005DF620. Output is written on the first successful branch; low-byte
   result, temporary list freed. Exact wildcard/fallback sorting remains in its child and is not
   inferred merely from this facade. */

uint __thiscall
ResourceLookup_FindDefaultPart(void *this,uint param_1,uint param_2,uint param_3,uint *param_4)

{
  uint uVar1;
  undefined4 extraout_EAX;
  undefined4 uVar2;
  undefined4 extraout_EAX_00;
  undefined4 uVar3;
  uint *local_10;
  undefined4 local_c;
  undefined4 local_8;
  char *local_4;
  
  local_10 = (uint *)0x0;
  local_c = 0;
  local_8 = 0;
  local_4 = "CAS/ResourceLookupService/DefaultCASPart";
  uVar1 = FUN_005df920((uint *)((int)this + 0x14),(param_1 << 8 | param_2) << 8 | param_3,&local_10)
  ;
  if ((char)uVar1 != '\0') {
    *param_4 = *local_10;
    param_4[1] = local_10[1];
    param_4[2] = local_10[2];
    param_4[3] = local_10[3];
    Memory_FreeIfNonNull(local_10);
    return CONCAT31((int3)((uint)extraout_EAX >> 8),1);
  }
  uVar2 = FUN_005df620((int *)((int)this + 0x14),param_1,param_2,param_3,param_4);
  uVar3 = 0;
  if (local_10 != (uint *)0x0) {
    Memory_FreeIfNonNull(local_10);
    uVar3 = extraout_EAX_00;
  }
  return CONCAT31((int3)((uint)uVar3 >> 8),(char)uVar2);
}

