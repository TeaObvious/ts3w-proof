/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 construction persistence contract): ECX sideowner, ordinal-pointer stackarg
   RET4. Zero-extendUInt16ordinal. Ordinal0 returns map+40 default resource key; other ordinals look
   up map+20 and return found node+8 or null. Zero ordinal is not inherently an absent native
   pattern.
   
   Analyst note (PC1.67 construction persistence contract): ECX side owner, pointer toUInt16ordinal
   stackarg RET4. Zero-extend ordinal. Zero returns associated map+40 inline default fullkey. Every
   nonzero value, includingFFFF, queries reverse map+20 and returns key if present; otherwise null.
   No unconditional0/FFFF absent-material test. */

int __thiscall WallPatternSide_ResolveOrdinalKey(void *this,ushort *param_1)

{
  int iVar1;
  int local_8 [2];
  
  param_1 = (ushort *)(uint)*param_1;
  iVar1 = *(int *)((int)this + 0x70);
  if (param_1 == (ushort *)0x0) {
    return iVar1 + 0x40;
  }
  FUN_009d6c30((void *)(iVar1 + 0x20),local_8,(uint *)&param_1);
  if (local_8[0] != *(int *)(*(int *)(iVar1 + 0x24) + *(int *)(iVar1 + 0x28) * 4)) {
    return local_8[0] + 8;
  }
  return 0;
}

