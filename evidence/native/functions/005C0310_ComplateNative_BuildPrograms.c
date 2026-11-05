/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified original PC 1.67 native complate wrapper. The CALL instruction at 005C0378 targets
   005C22D0; 005C0378 is a callsite, not a function entry. Instructions use ECX plus three stack
   arguments and RET 0x0C. AL is the success byte: no owned tree or native compile failure clears
   AL; success sets AL to 1. Upper EAX is not a defined status value; the current uint-like
   decompilation must not be read as a full-width Boolean contract. Optional retention visits output
   entries after success. Full initial object/wall producer selection and complete native resource
   lifetime remain unresolved. Analyst names only; no signature/type/body/byte changes.
   
   Physical ABI refinement from original instructions: thiscall ECX plus3stack words and RET0C;
   result is Boolean AL ONLY, upperEAX unspecified. Existing retain flag reads lowbyte of
   thirdstackword. Missing tree+28 fails; actualCALL005C0378 targets005C22D0 with tree ECX
   plus0/output/context. On success, optional registration retains each first pointer of12byte
   output entry. No C# weak readiness witness, saved-program reload pixel equality or lock-free
   reader tuple exists in this bounded native body; those are host publication/integrity mechanisms.
   Signature now byteBoolean so genuine C no longer presents upperEAX residue as a UInt32 status. */

bool __thiscall
ComplateNative_BuildPrograms(void *this,undefined *outputPrograms,uint context,bool retainPrograms)

{
  int *piVar1;
  undefined4 *puVar2;
  char cVar3;
  int *piVar4;
  undefined4 uVar5;
  int *piVar6;
  
  if (*(int *)((int)this + 0x28) == 0) {
                    /* Failure writes AL only. Upper EAX is not normalized by this path. */
    return false;
  }
  piVar4 = (int *)FUN_004afe80();
  if (retainPrograms) {
    piVar1 = *(int **)((int)this + 0x40);
    for (piVar6 = *(int **)((int)this + 0x3c); piVar6 != piVar1; piVar6 = piVar6 + 1) {
      if ((int *)*piVar6 == (int *)0x0) {
        uVar5 = 0;
      }
      else {
        uVar5 = (**(code **)(*(int *)*piVar6 + 0xc))(0x2269ed1);
      }
      (**(code **)(*piVar4 + 0x5c))(uVar5,0);
    }
  }
                    /* Direct native call target is ComplateNative_CompileDestinationTree at
                       005C22D0; this address is the callsite. */
  cVar3 = ComplateNative_CompileDestinationTree
                    (*(void **)((int)this + 0x28),(void *)0x0,outputPrograms,context);
  if (cVar3 != '\0') {
    if (retainPrograms) {
      piVar4 = *(int **)outputPrograms;
      piVar6 = *(int **)(outputPrograms + 4);
      if (piVar4 != piVar6) {
        do {
          piVar1 = *(int **)((int)this + 0x40);
          if (piVar1 < *(int **)((int)this + 0x44)) {
            *(int **)((int)this + 0x40) = piVar1 + 1;
            if (piVar1 != (int *)0x0) {
              puVar2 = (undefined4 *)*piVar4;
              *piVar1 = (int)puVar2;
              if (puVar2 != (undefined4 *)0x0) {
                (**(code **)*puVar2)();
              }
            }
          }
          else {
            FUN_00c65ad0((void *)((int)this + 0x3c),piVar1,piVar4);
          }
          piVar4 = piVar4 + 3;
        } while (piVar4 != piVar6);
      }
    }
                    /* Success writes AL=1 only; RET 0x0C cleans three stack arguments. */
    return true;
  }
  return false;
}

