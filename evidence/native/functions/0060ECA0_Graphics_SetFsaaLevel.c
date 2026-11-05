/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager; UInt32level andlow-byte validate, RET8,
   ALstatus. Equallevelsuccess; differentlevel requires60EBE0 onlyifvalidate nonzero,
   storesmanager+38 on success. No flora category alpha state write in leaf. */

bool __thiscall Graphics_SetFsaaLevel(void *this,uint level,uchar validate)

{
  bool bVar1;
  
  if (*(uint *)((int)this + 0x38) != level) {
    if (validate != '\0') {
      bVar1 = Graphics_IsFsaaLevelSupported(this,level);
      if (!bVar1) {
        return false;
      }
    }
    *(uint *)((int)this + 0x38) = level;
  }
  return true;
}

