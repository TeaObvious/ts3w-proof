/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC 1.67 original contract. Stores descriptor/hash/mask in 32-slot arrays, hashes
   descriptor name with reviewed lowercase FNV1, shifts nextMask left, increments count, optionally
   calls descriptor+4 with assigned mask. No local capacity guard.
   
   PC1.67 original static instructions. Resource reader closure: descriptor C-string gets lowercase
   FNV1 hash, stored beside assigned mask; Model/Tree constants identify registered names, not
   ordinal component-vector slots. Registration capacity/lifetime and startup ordering remain
   original registry responsibilities. */

uint __thiscall ObjectRegistry_RegisterComponentType(void *this,void *descriptor)

{
  uint uVar1;
  uint uVar2;
  
  uVar1 = *(uint *)((int)this + 0x11c4);
  uVar2 = HashLowercasedCStringFNV1(*(char **)descriptor);
  *(void **)((int)this + *(int *)((int)this + 0x11c8) * 4 + 0x1044) = descriptor;
  *(undefined4 *)((int)this + *(int *)((int)this + 0x11c8) * 4 + 0x1144) =
       *(undefined4 *)((int)this + 0x11c4);
  *(uint *)((int)this + *(int *)((int)this + 0x11c8) * 4 + 0x10c4) = uVar2;
  *(int *)((int)this + 0x11c4) = *(int *)((int)this + 0x11c4) << 1;
  *(int *)((int)this + 0x11c8) = *(int *)((int)this + 0x11c8) + 1;
  if (*(code **)((int)descriptor + 4) != (code *)0x0) {
    (**(code **)((int)descriptor + 4))(uVar1);
  }
  return uVar1;
}

