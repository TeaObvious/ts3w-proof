/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst role, original PC1.67. ECX product, one output-string stack pointer/RET4. Compare
   authored vector begin+104/end+108; empty writes AL0 only and leaves caller output untouched.
   Nonempty uses first row's string owner through005BFD20, then writes AL1 regardless of that
   helper's upper EAX bits. This is first authored preset selection, not preset-ID lookup or
   unconditional fallback to entry0 after an exact-ID miss. Caller00CEA470 selects this branch only
   for low24 group bits0 orFFFFFF. Full32 EAX is not a Boolean return contract. */

uint __thiscall ObjectProduct_ReadFirstPresetString(void *this,undefined4 *param_1)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  
  puVar1 = *(undefined4 **)((int)this + 0x104);
  if (puVar1 == *(undefined4 **)((int)this + 0x108)) {
    return (uint)puVar1 & 0xffffff00;
  }
  uVar2 = FUN_005bfd20((void *)*puVar1,param_1);
  return CONCAT31((int3)((uint)uVar2 >> 8),1);
}

