/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 Physical ECX scene/list owner plus one object stack word, RET04. Resolve object+18
   node, append before scene+20 sentinel using old tail at scene+24: node.prev=oldtail,
   node.next=head, head.prev=node, oldtail.next=node. Actual006FA9F0 prechecks and self-links its
   node. This complete append has no independent equality/membership/null safety, lock or reference
   acquisition; other real callers must establish their own admission. */

void __thiscall Scene_AppendDirtyObject(void *this,int param_1)

{
  int *piVar1;
  
  if (param_1 == 0) {
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = (int *)(param_1 + 0x18);
  }
  piVar1[1] = *(int *)((int)this + 0x24);
  *piVar1 = (int)this + 0x20;
  *(int **)((int)this + 0x24) = piVar1;
  *(int **)piVar1[1] = piVar1;
  return;
}

