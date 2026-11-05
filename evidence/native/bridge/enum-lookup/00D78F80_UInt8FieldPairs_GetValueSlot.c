/* TS3W PC 1.67; original identity: evidence/reference.json.
 * Saved Ghidra C; current name: UInt8FieldPairs_GetValueSlot.
 * Executable tokens are unchanged from this saved export.
 * Generated types and signatures remain projections; consult the paired ASM.
 */

/* Retained original instruction qualifications:
 * Instruction contract: The returned EAX points to a writable field-pointer slot, not to the field record. Equal search candidates take the no-insertion path.
 * Instruction contract: Global key uniqueness/order depends on the search/insert child bodies. The caller overwrites this returned slot with the current field pointer.
 */



/* Analyst PC1.67 slot accessor for byte-key/field-pointer temporary pairs (8-byte stride). Calls
   D73430(begin,end,key,byte[receiver+10h]); candidate==end or unsigned key<candidate creates a
   local key/zero value pair and delegates to D77470 or D77530. Otherwise returns candidate+4
   without insertion; an equal candidate therefore reuses its existing value slot, overwritten by
   the enum caller. EAX is a pointer to the value slot, not the field itself; RET 04. Search/insert
   ordering, global duplicate coalescing and receiver+10h state semantics require their own bodies;
   no general alias policy is asserted. */

byte * __thiscall UInt8FieldPairs_GetValueSlot(void *this,byte *param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  byte local_10 [4];
  undefined4 local_c;
  int local_8 [2];
  
  pbVar1 = *(byte **)this;
  pbVar2 = *(byte **)((int)this + 4);
  pbVar3 = (byte *)UInt8FieldPairs_LowerBound((int)pbVar1,(int)pbVar2,param_1);
  if ((pbVar3 == pbVar2) || (*param_1 < *pbVar3)) {
    local_10[0] = *param_1;
    local_c = 0;
    if (((pbVar3 != pbVar2) && (*pbVar3 <= local_10[0])) ||
       ((pbVar3 != pbVar1 && (local_10[0] <= pbVar3[-8])))) {
      FUN_00d77470(this,local_8,local_10);
      return (byte *)(local_8[0] + 4);
    }
    pbVar3 = (byte *)FUN_00d77530(this,(undefined4 *)pbVar3,(undefined4 *)local_10);
  }
  return pbVar3 + 4;
}

