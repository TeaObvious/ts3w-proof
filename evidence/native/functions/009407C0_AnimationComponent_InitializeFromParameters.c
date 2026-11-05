/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX Animation component; one table pointer
   RET4; result is Boolean AL1 on local normal return (not full EAX). Type3 key8415534A is copied
   and, if present, passed to93EB00 with key pointer AND explicit zero followup word. Presence of
   exact finalized type4 for hashes23A15647/F084B899 ORs component+2C masks400/80000000 regardless
   of payload zero. No flag clear here. AL1 does not prove rigless rendering, event13 omission,
   successful resource load or whole object creation. */

bool __thiscall AnimationComponent_InitializeFromParameters(void *this,void *table)

{
  bool bVar1;
  uint *puVar2;
  uint local_10 [4];
  
  local_10[0] = 0;
  local_10[1] = 0;
  local_10[2] = 0;
  local_10[3] = 0;
  bVar1 = ParameterTable_CopyResourceKey16(table,0x8415534a,local_10);
  if (bVar1) {
                    /* Physical call: ECX Animation component, keyptr at stack+4, explicit zero
                       followup word at+8; callee RET8. */
    AnimationComponent_AssignRigResourceKey(this,local_10,0);
  }
  puVar2 = ParameterTable_FindFirstHashExactType(table,0x23a15647,4);
  if (puVar2 != (uint *)0x0) {
    *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) | 0x400;
  }
  puVar2 = ParameterTable_FindFirstHashExactType(table,0xf084b899,4);
  if (puVar2 != (uint *)0x0) {
    *(uint *)((int)this + 0x2c) = *(uint *)((int)this + 0x2c) | 0x80000000;
  }
  return true;
}

