/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). Manager 0x0072f140
   virtual slot +0 loads component resource keys +8/+0x18 using type 0xc807312a. AL false only when
   both key type fields +0x10/+0x20 are zero. Other partial failure combinations preserve optimistic
   true. */

undefined4 __thiscall
FootprintComponent_LoadConfiguredResources(void *this,undefined4 param_1,undefined4 param_2)

{
  undefined4 *puVar1;
  uint uVar2;
  
  puVar1 = (undefined4 *)FUN_0072f140();
  if ((*(int *)((int)this + 0x10) == 0) && (*(int *)((int)this + 0x20) == 0)) {
    return 0;
  }
  uVar2 = 0;
  if (*(int *)((int)this + 0x10) != 0) {
    uVar2 = (**(code **)*puVar1)((uint *)((int)this + 8),0xc807312a,param_1);
    if (((char)uVar2 == '\0') &&
       (uVar2 = *(uint *)((int)this + 8) | *(uint *)((int)this + 0xc), uVar2 != 0))
    goto LAB_00944bd0;
  }
  if (*(int *)((int)this + 0x20) != 0) {
    uVar2 = (**(code **)*puVar1)((int)this + 0x18,0xc807312a,param_2);
  }
LAB_00944bd0:
  return CONCAT31((int3)(uVar2 >> 8),1);
}

