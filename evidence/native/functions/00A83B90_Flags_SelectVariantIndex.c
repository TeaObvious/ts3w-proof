/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* PC1.67, full153B/62 instructions checked against pristine PE. A nonzero third incoming stack byte
   returns8 plus the first stack byte truth value. Other branches combine base0/4 with offsets0..3
   under live provider/global gates. All exits use plain RET, leaving three incoming stack DWORD
   slots with the caller. Upstream special-flag meaning and complete call ABI/provider semantics
   remain unproved. No parameter/type/purge change. */

byte __fastcall
Flags_SelectVariantIndex
          (undefined4 param_1,undefined4 param_2,char param_3,char param_4,char param_5)

{
  void *this;
  bool bVar1;
  char cVar2;
  undefined4 uVar3;
  char cVar4;
  byte bVar5;
  
  if (param_5 != '\0') {
    return (param_3 != '\0') + 8;
  }
  bVar5 = -(param_3 != '\0') & 4;
  if (((param_4 == '\0') && (DAT_011edbc4 != 0)) &&
     (this = *(void **)(DAT_011edbc4 + 0x74), this != (void *)0x0)) {
    bVar1 = FUN_00a83b20((int)this,param_2);
    uVar3 = FUN_00d6ac90(this,_DAT_0106e6ec);
    if (*(char *)((int)this + 0xb04) == '\0') {
      cVar4 = *(char *)((int)this + 0xa10);
    }
    else {
      cVar4 = *(char *)((int)this + 0xa6c);
    }
    cVar2 = (char)uVar3;
    if (bVar1) {
      if (cVar2 == '\0') {
        return bVar5 + 1;
      }
    }
    else if (cVar2 == '\0') {
      return bVar5;
    }
    if (cVar4 == '\0') {
      return bVar5 + 2;
    }
    if (cVar2 != '\0') {
      bVar5 = bVar5 + 3;
    }
  }
  return bVar5;
}

