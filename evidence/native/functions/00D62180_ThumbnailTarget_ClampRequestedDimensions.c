/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): ECX target, UInt32 width/height RET8. Store
   requested dimensions if both within target+2C/+30 capacity; otherwise store independent unsigned
   minima. Capacity is instance data, not a proven universal512 constant. */

void __thiscall ThumbnailTarget_ClampRequestedDimensions(void *this,uint param_1,uint param_2)

{
  uint uVar1;
  uint *puVar2;
  
  puVar2 = (uint *)((int)this + 0x2c);
  if ((param_1 <= *(uint *)((int)this + 0x2c)) && (param_2 <= *(uint *)((int)this + 0x30))) {
    *(uint *)((int)this + 0x28) = param_2;
    *(uint *)((int)this + 0x24) = param_1;
    return;
  }
  if (param_1 <= *puVar2) {
    puVar2 = &param_1;
  }
  uVar1 = *puVar2;
  puVar2 = (uint *)((int)this + 0x30);
  if (param_2 <= *(uint *)((int)this + 0x30)) {
    puVar2 = &param_2;
  }
  *(uint *)((int)this + 0x28) = *puVar2;
  *(uint *)((int)this + 0x24) = uVar1;
  return;
}

