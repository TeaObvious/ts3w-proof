/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 vector16 erase closure: ECX vector, two physical first/last pointer words, RET8.
   Move suffix in16-byte records; end += -((last-first)>>4)*16 at73E78A. Erase-to-end yields first
   as new end; TREE target0 after its prior clear performs no move and retains begin=end. Envelope
   includes nonowned alignment73E76D..6F (3bytes), explicitly excluded from owned body/instruction
   count. Preserve original body ranges/signature; no new validation/allocator contract. */

void __thiscall Vector16_EraseRange(void *this,undefined4 *param_1,undefined4 *param_2)

{
  undefined4 *puVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  
  puVar1 = *(undefined4 **)((int)this + 4);
  puVar6 = param_1;
  for (puVar5 = param_2; puVar5 != puVar1; puVar5 = puVar5 + 4) {
    uVar2 = puVar5[1];
    uVar3 = puVar5[2];
    uVar4 = puVar5[3];
    *puVar6 = *puVar5;
    puVar6[1] = uVar2;
    puVar6[2] = uVar3;
    puVar6[3] = uVar4;
    puVar6 = puVar6 + 4;
  }
  *(int *)((int)this + 4) = *(int *)((int)this + 4) + ((int)param_2 - (int)param_1 >> 4) * -0x10;
  return;
}

