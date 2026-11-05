/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscall four-key64byte pointer RET4; EAX pointer to node+40
   pair{UInt32id,UInt32referenceCount}. Looks up key, ifabsent inserts copied64bytekey with
   counters0/0. No full-ID allocation here; A90E70 allocates and writesID. Names are analystroles;
   not a C# ownership/cache contract. */

undefined * __thiscall FloorKeyMap_GetOrCreateCounters(void *this,undefined *fourKeys)

{
  int iVar1;
  byte *pbVar2;
  int local_54 [3];
  byte local_48 [64];
  undefined4 local_8;
  undefined4 local_4;
  
  FUN_00a8f320(this,local_54,fourKeys);
  if (local_54[0] == *(int *)(*(int *)((int)this + 4) + *(int *)((int)this + 8) * 4)) {
    pbVar2 = local_48;
    for (iVar1 = 0x10; iVar1 != 0; iVar1 = iVar1 + -1) {
      *(undefined4 *)pbVar2 = *(undefined4 *)fourKeys;
      fourKeys = (undefined *)((int)fourKeys + 4);
      pbVar2 = pbVar2 + 4;
    }
    local_8 = 0;
    local_4 = 0;
    FUN_00a8f670(this,local_54,local_48);
  }
  return (undefined *)(local_54[0] + 0x40);
}

