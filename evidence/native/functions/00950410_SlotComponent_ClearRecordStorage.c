/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 slot contract. ECX component no stackargs RET. Frees/destroys five authored arrays
   using their count header at base-4; zero header free(base-4), nonzero virtual deleting callback
   flags3. Clears bases0C/14/1C/24/2C and counts08/10/18/20. IMPORTANT ORIGINAL ASYMMETRY: DOES NOT
   STORE ZERO TO COUNT28. Do not silently repair C or claim all five counts reset. Dynamic
   vector54..58: callback(flags0), prepend each released row to global free-list11EA128, clear
   element, setend=begin; capacity remains. Does not release resource44 or clear
   key30..3C/binding40. This local cleanup is not proof every caller preserves invariant. */

void __thiscall SlotComponent_ClearRecordStorage(void *this)

{
  undefined4 *puVar1;
  uint uVar2;
  
  puVar1 = *(undefined4 **)((int)this + 0xc);
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[-1] == 0) {
      Memory_FreeIfNonNull(puVar1 + -1);
    }
    else {
      (**(code **)*puVar1)(puVar1,3);
    }
  }
  puVar1 = *(undefined4 **)((int)this + 0x14);
  *(undefined4 *)((int)this + 0xc) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[-1] == 0) {
      Memory_FreeIfNonNull(puVar1 + -1);
    }
    else {
      (**(code **)*puVar1)(puVar1,3);
    }
  }
  puVar1 = *(undefined4 **)((int)this + 0x1c);
  *(undefined4 *)((int)this + 0x14) = 0;
  *(undefined4 *)((int)this + 0x10) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[-1] == 0) {
      Memory_FreeIfNonNull(puVar1 + -1);
    }
    else {
      (**(code **)*puVar1)(puVar1,3);
    }
  }
  puVar1 = *(undefined4 **)((int)this + 0x24);
  *(undefined4 *)((int)this + 0x1c) = 0;
  *(undefined4 *)((int)this + 0x18) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[-1] == 0) {
      Memory_FreeIfNonNull(puVar1 + -1);
    }
    else {
      (**(code **)*puVar1)(puVar1,3);
    }
  }
  puVar1 = *(undefined4 **)((int)this + 0x2c);
  *(undefined4 *)((int)this + 0x24) = 0;
  if (puVar1 != (undefined4 *)0x0) {
    if (puVar1[-1] == 0) {
      Memory_FreeIfNonNull(puVar1 + -1);
    }
    else {
      (**(code **)*puVar1)(puVar1,3);
    }
  }
  *(undefined4 *)((int)this + 0x2c) = 0;
                    /* Original clears target count+20 AGAIN; cone count+28 is NOT zeroed anywhere
                       in this cleanup body. Retain this asymmetry in evidence. */
  *(undefined4 *)((int)this + 0x20) = 0;
  uVar2 = 0;
  if (*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2 != 0) {
    do {
      puVar1 = *(undefined4 **)(*(int *)((int)this + 0x54) + uVar2 * 4);
      (**(code **)*puVar1)(puVar1,0);
      puVar1 = *(undefined4 **)(*(int *)((int)this + 0x54) + uVar2 * 4);
      *puVar1 = DAT_011ea128;
      DAT_011ea128 = puVar1;
      *(undefined4 *)(*(int *)((int)this + 0x54) + uVar2 * 4) = 0;
      uVar2 = uVar2 + 1;
    } while (uVar2 < (uint)(*(int *)((int)this + 0x58) - *(int *)((int)this + 0x54) >> 2));
  }
  *(undefined4 *)((int)this + 0x58) = *(undefined4 *)((int)this + 0x54);
  return;
}

