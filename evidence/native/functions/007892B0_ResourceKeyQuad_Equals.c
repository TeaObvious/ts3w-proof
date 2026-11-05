/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Shared64byte four-resource-key equality: compares12DWORDs plusfinal16byteGUID equality
   (total64bytes), ECXleft+onepointer stackwordRET4. Both success andfailure normalize fullEAXto1/0.
   A8FA00 uses it for implicitdefault comparison; matching catalogkey alone is insufficient. Generic
   analystrole because this helper has othercallers. */

bool __thiscall ResourceKeyQuad_Equals(void *this,undefined *otherKeys)

{
  int iVar1;
  
  if (((((*(int *)otherKeys == *(int *)this) && (*(int *)(otherKeys + 8) == *(int *)((int)this + 8))
        ) && (*(int *)(otherKeys + 0xc) == *(int *)((int)this + 0xc))) &&
      ((((*(int *)(otherKeys + 4) == *(int *)((int)this + 4) &&
         (*(int *)(otherKeys + 0x10) == *(int *)((int)this + 0x10))) &&
        ((*(int *)(otherKeys + 0x18) == *(int *)((int)this + 0x18) &&
         ((*(int *)(otherKeys + 0x1c) == *(int *)((int)this + 0x1c) &&
          (*(int *)(otherKeys + 0x14) == *(int *)((int)this + 0x14))))))) &&
       (*(int *)(otherKeys + 0x20) == *(int *)((int)this + 0x20))))) &&
     (((*(int *)(otherKeys + 0x28) == *(int *)((int)this + 0x28) &&
       (*(int *)(otherKeys + 0x2c) == *(int *)((int)this + 0x2c))) &&
      (*(int *)(otherKeys + 0x24) == *(int *)((int)this + 0x24))))) {
    iVar1 = _AfxIsEqualGUID((_GUID *)(otherKeys + 0x30),(_GUID *)((int)this + 0x30));
    if ((char)iVar1 != '\0') {
      return true;
    }
  }
  return false;
}

