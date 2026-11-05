/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_IsUnclusteredTreeAvailable.
   Export ordinal(s): 1983. Entry VA: 0x10996240. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600026D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

uint __cdecl ObjectManagerWrap_IsUnclusteredTreeAvailable(void *param_1)

{
  uint in_EAX;
  uint uVar1;
  void *this;
  int iVar2;
  uint uVar3;
  uint uVar4;
  
                    /* 0x996240  1983  ObjectManagerWrap_IsUnclusteredTreeAvailable */
  if (param_1 == (void *)0x0) {
    return in_EAX & 0xffffff00;
  }
  uVar3 = 0;
  uVar1 = FUN_10243150((int)param_1);
  uVar4 = 0;
  if (uVar1 != 0) {
    do {
      this = (void *)FUN_10243160(param_1,uVar4);
      if (((this != (void *)0x0) && (iVar2 = FUN_10726da0(this,DAT_10c8dad0), iVar2 != 0)) &&
         (iVar2 = FUN_1074ce90(iVar2), iVar2 == 1)) {
        uVar3 = uVar3 + 1;
      }
      uVar4 = uVar4 + 1;
    } while (uVar4 < uVar1);
  }
  return (uint)(1 < uVar3);
}

