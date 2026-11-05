/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX component; finalized table pointer RET4;
   local return AL1. Uses existing first-hash/exact FINAL type3 getter for lightKey9CC7E9B2; found
   copies fourDWORDs into+8..14, missing leaves existing fields unchanged. Does not validate source
   resource type, load LITE, emit commands or establish an empty default. Wire/native-kind producer
   and whole initialization remain separate. */

bool __thiscall LightingComponent_InitializeResourceFromParameters(void *this,void *table)

{
  bool bVar1;
  uint local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  bVar1 = ParameterTable_CopyResourceKey16(table,0x9cc7e9b2,&local_10);
  if (bVar1) {
    *(uint *)((int)this + 8) = local_10;
    *(undefined4 *)((int)this + 0xc) = local_c;
    *(undefined4 *)((int)this + 0x10) = local_8;
    *(undefined4 *)((int)this + 0x14) = local_4;
  }
  return true;
}

