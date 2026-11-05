/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX map, one key pointer stack word RET4,
   EAX text pointer or0. Calls0071E680 on map+28; compares returned iterator with sentinel at
   buckets[count]; found node+8 is returned. Full map serialization/version and malformed-input
   admission are not decoded by this lookup. */

undefined4 __thiscall KeyNameMap_FindTextByKey(void *this,uint *param_1)

{
  int local_8 [2];
  
  FUN_0071e680((void *)((int)this + 0x28),local_8,param_1);
  if (local_8[0] == *(int *)(*(int *)((int)this + 0x2c) + *(int *)((int)this + 0x30) * 4)) {
    return 0;
  }
  return *(undefined4 *)(local_8[0] + 8);
}

