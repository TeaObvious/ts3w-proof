/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component, stack nameWord/mask/enabledByte RET12, Boolean AL.
   Uses FIRST matching nonzero name through9501A0. Missing false. Nonzero enabled ORs full32bit mask
   into record+8; zero clears those bits with AND NOT. Return reports row existence, not whether
   bits changed. Caller must not treat AL-only result as fullEAX status. */

bool __thiscall SlotComponent_SetFlagMaskByName(void *this,uint nameWord,uint mask,byte enabled)

{
  byte *pbVar1;
  
  pbVar1 = SlotComponent_FindFirstNameWord(this,nameWord);
  if (pbVar1 != (byte *)0x0) {
    if (enabled != 0) {
      *(uint *)(pbVar1 + 8) = *(uint *)(pbVar1 + 8) | mask;
      return pbVar1 != (byte *)0x0;
    }
    *(uint *)(pbVar1 + 8) = *(uint *)(pbVar1 + 8) & ~mask;
  }
  return pbVar1 != (byte *)0x0;
}

