/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 ECX driver,four stack dwords RET10. Appends
   three32bit keys and lowbyte one-shot flag in16-byte row, including duplicates; grows vector when
   needed. Snapshot/lock and C# operation decoding are caller policies, not properties of this
   append leaf. */

void __thiscall
SacsEventFilters_AppendRow
          (void *this,undefined4 param_1,undefined4 param_2,undefined4 param_3,undefined1 param_4)

{
  undefined4 *puVar1;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_4 = CONCAT31(local_4._1_3_,param_4);
  puVar1 = *(undefined4 **)((int)this + 0x134);
  local_10 = param_1;
  local_c = param_2;
  local_8 = param_3;
  if (puVar1 < *(undefined4 **)((int)this + 0x138)) {
    *(undefined4 **)((int)this + 0x134) = puVar1 + 4;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = param_1;
      puVar1[1] = param_2;
      puVar1[2] = param_3;
      puVar1[3] = local_4;
      return;
    }
  }
  else {
    FUN_00cca0b0((void *)((int)this + 0x130),puVar1,&local_10);
  }
  return;
}

