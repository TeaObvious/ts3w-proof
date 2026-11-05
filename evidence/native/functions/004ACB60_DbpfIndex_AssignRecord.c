/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst original DBPF index closure: PC1.67 actual index vtableFB3920+2C. ECX owner plus
   key/record RET8; ensure key node via4AC980 then copy exactly four DWORD record fields. Not
   index-load duplicate policy; load path4AC510 uses first-insert4AB900. */

undefined4 * __thiscall DbpfIndex_AssignRecord(void *this,undefined4 *key,undefined4 *record)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)DbpfIndex_FindOrInsertRecord((void *)((int)this + 8),key);
  *puVar1 = *record;
  puVar1[1] = record[1];
  puVar1[2] = record[2];
  puVar1[3] = record[3];
  return puVar1;
}

