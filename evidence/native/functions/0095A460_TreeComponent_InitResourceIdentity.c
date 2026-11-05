/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 domain-owner static comparison. ECX component; one finalized parameter table word,
   RET4. OwnerlowDWORD+4->+8 captured; key hashA6E5F629 copied to+10 only on exact parameter lookup
   success. Stores captured ownerlow to+20; AL0/1 only, upper bits incidental. Template loading is a
   separate lifecycle phase. */

undefined4 __thiscall TreeComponent_InitResourceIdentity(void *this,void *param_1)

{
  undefined4 uVar1;
  bool bVar2;
  undefined3 extraout_var;
  
  uVar1 = *(undefined4 *)(*(int *)((int)this + 4) + 8);
  bVar2 = ParameterTable_CopyResourceKey16(param_1,0xa6e5f629,(uint *)((int)this + 0x10));
  if (!bVar2) {
    return CONCAT31(extraout_var,bVar2);
  }
  *(undefined4 *)((int)this + 0x20) = uVar1;
  return CONCAT31(extraout_var,1);
}

