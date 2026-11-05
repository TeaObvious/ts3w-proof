/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 parameter-table instruction contract. ECX VisualState component; one finalized
   table RET4; normal return AL1 only. Type5 EA1EC9B8 when found: nonzero clears flags+8 bit1000,
   zero sets1000; absent leavesbit unchanged. Type5 5C1804B8 when found: zero clears100000, nonzero
   sets100000; changes zero/nonzero status of aggregate1E0000 trigger95E690(true). If second param
   absent and aggregate nonzero, calls95E690(false). Owner+4 component mask+2C containing runtime
   Sim mask11EA0FC ORs flag40. Whole visibility policy, initial flags/event timing/native draw
   consumers remain separate; not a proof host duplicate-admission policy equals original. */

bool __thiscall VisualStateComponent_InitializeFromParameters(void *this,void *table)

{
  uint uVar1;
  void *this_00;
  bool bVar2;
  uint uVar3;
  char cVar4;
  void *local_4;
  
  this_00 = table;
  local_4 = this;
                    /* Exact finalized type5 lookup, not the managed wire kind. Missing keeps
                       bit1000; found tests fullDWORD!=0. */
  bVar2 = ParameterTable_CopyRawWordType5(table,0xea1ec9b8,(uint *)&local_4);
  if (bVar2) {
    if (local_4 == (void *)0x0) {
      *(uint *)((int)this + 8) = *(uint *)((int)this + 8) | 0x1000;
    }
    else {
      *(uint *)((int)this + 8) = *(uint *)((int)this + 8) & 0xffffefff;
    }
  }
  table = (void *)0x0;
  bVar2 = ParameterTable_CopyRawWordType5(this_00,0x5c1804b8,(uint *)&table);
  if (bVar2) {
    uVar1 = *(uint *)((int)this + 8);
    if (table == (void *)0x0) {
      uVar3 = uVar1 & 0xffefffff;
    }
    else {
      uVar3 = uVar1 | 0x100000;
    }
    *(uint *)((int)this + 8) = uVar3;
    if (((uVar3 & 0x1e0000) == 0) == ((uVar1 & 0x1e0000) == 0)) goto LAB_0095fb4a;
    cVar4 = '\x01';
  }
  else {
    if ((*(uint *)((int)this + 8) & 0x1e0000) == 0) goto LAB_0095fb4a;
    cVar4 = '\0';
  }
  Seasons_PublishObjectSnowDisableState(this,cVar4);
LAB_0095fb4a:
  if ((*(uint *)(*(int *)((int)this + 4) + 0x2c) & DAT_011ea0fc) != 0) {
    *(uint *)((int)this + 8) = *(uint *)((int)this + 8) | 0x40;
  }
  return true;
}

