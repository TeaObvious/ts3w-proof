/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 bounded pending predicate. Physical ECX is monitor allocation, one lot pointer
   stack DWORD; all three exits RET4. Body40instructions89bytes ends00789768, next7CC excluded.
   Constructor007894A0 installs allocation vtable01011984; +18 points here, used by00793370 with
   allocation receiver. Calls D43520 (AL lot+C2 readiness); only when zero calls AAFEF0 (AL lot+C1
   requested). Requested and not ready returns AL1. Otherwise stored mask+20 zero returns AL0;
   nonzero mask consults monitor+24 request: absent calls allocation virtual+14 with lot GUID+48/+4C
   then returns AL1; present returns full EAX0/1 from request byte+1C==0. Mask semantics and deeper
   request producer/virtual target remain separate; not a recovered GPU completion or retry policy.
   Inferred signature retained; physical RET4 authoritative. */

uint __thiscall DetailedLotMonitor_HasPendingLot(void *this,void *param_1)

{
  uchar uVar1;
  uint3 extraout_var;
  uint3 extraout_var_00;
  uint3 extraout_var_01;
  uint3 uVar2;
  
  uVar1 = Lot_ReadDetailReadinessByte(param_1);
  uVar2 = extraout_var;
  if (uVar1 == '\0') {
    uVar1 = Lot_GetDetailRequested(param_1);
    uVar2 = extraout_var_00;
    if (uVar1 != '\0') goto LAB_0078974c;
  }
  if (*(int *)((int)this + 0x20) == 0) {
    return (uint)uVar2 << 8;
  }
  if (*(int *)((int)this + 0x24) != 0) {
    return (uint)(*(char *)(*(int *)((int)this + 0x24) + 0x1c) == '\0');
  }
  (**(code **)(*(int *)this + 0x14))
            (*(undefined4 *)((int)param_1 + 0x48),*(undefined4 *)((int)param_1 + 0x4c));
  uVar2 = extraout_var_01;
LAB_0078974c:
  return CONCAT31(uVar2,1);
}

