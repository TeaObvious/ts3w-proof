/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-reviewed PC 1.67 footprint contract (static original instructions). thiscall vector
   descriptor in ECX and pointer to 32-bit value. Appends input integer, grows through 0x00982420
   when capacity exhausted. Comparison-index output has no deduplication. */

void __thiscall Int32Vector_AppendValue(void *this,undefined4 *param_1)

{
  undefined4 *puVar1;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  if (puVar1 < *(undefined4 **)((int)this + 8)) {
    *(undefined4 **)((int)this + 4) = puVar1 + 1;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = *param_1;
      return;
    }
  }
  else {
    FUN_00982420(this,puVar1,param_1);
  }
  return;
}

