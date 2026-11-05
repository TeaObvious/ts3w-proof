/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 ECX key-map, no stackwords/plainRET, fullEAX first unused positiveUInt32 storageID.
   StartsESI1, unsignedDIV bucketcount thenexactrawIDequality; incrementsuntilunoccupied, no max+1
   shortcut. Ghidra physical thiscall correction replaces seededfastcall pointer-as-int; no
   bytechanges. */

uint __thiscall FloorKeyMap_FirstFreePositiveId(void *this)

{
  int iVar1;
  uint uVar2;
  uint **ppuVar3;
  uint uVar4;
  uint *local_18;
  int local_14;
  uint *local_10;
  int local_c;
  
  iVar1 = *(int *)((int)this + 0x24);
  uVar2 = *(uint *)((int)this + 0x28);
  uVar4 = 1;
  do {
    for (local_18 = *(uint **)(iVar1 + (uVar4 % uVar2) * 4); local_18 != (uint *)0x0;
        local_18 = (uint *)local_18[0x12]) {
      if (uVar4 == *local_18) {
        local_14 = iVar1 + (uVar4 % uVar2) * 4;
        ppuVar3 = &local_18;
        goto LAB_00a8ea7d;
      }
    }
    local_c = iVar1 + uVar2 * 4;
    local_10 = *(uint **)(iVar1 + uVar2 * 4);
    ppuVar3 = &local_10;
LAB_00a8ea7d:
    if (*ppuVar3 == *(uint **)(iVar1 + uVar2 * 4)) {
      return uVar4;
    }
    uVar4 = uVar4 + 1;
  } while( true );
}

