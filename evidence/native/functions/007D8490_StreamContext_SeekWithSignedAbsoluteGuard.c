/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 REFS instruction review. ECX context, RET 8(offset,origin). Negative signed
   offset with origin zero clears status +14h and returns without seeking; EAX still contains input
   offset, not Boolean false. Other cases dispatch stream +28h(offset,origin) and return its
   register result without accumulating it into status. Return type remains opaque32 bits; selected
   embedded reader ignores it. Negative relative seeks are not rejected by this guard. */

int __thiscall StreamContext_SeekWithSignedAbsoluteGuard(void *this,int offset,uint origin)

{
  byte bVar1;
  undefined3 extraout_var;
  
  if ((offset < 0) && (origin == 0)) {
    *(undefined1 *)((int)this + 0x14) = 0;
    return offset;
  }
  bVar1 = (**(code **)(**(int **)((int)this + 8) + 0x28))(*(int **)((int)this + 8),offset,origin);
  return CONCAT31(extraout_var,bVar1);
}

