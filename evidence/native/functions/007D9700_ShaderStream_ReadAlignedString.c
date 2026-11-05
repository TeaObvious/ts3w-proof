/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67: DWORD byte length followed by that many raw bytes; skips to4-byte alignment. Used
   by SSET reader.237 SSET records contain144 distinct names in original precomp; repeated
   capability forms are not unique families. */

void __thiscall ShaderStream_ReadAlignedString(void *this,undefined4 *param_1)

{
  byte *pbVar1;
  bool bVar2;
  uint uVar3;
  void *local_4;
  
  local_4 = this;
  uVar3 = FUN_004dd980(*(int **)((int)this + 8),(uint *)&local_4);
  pbVar1 = (byte *)((int)this + 0x14);
  *pbVar1 = *pbVar1 & (byte)uVar3;
  if (*pbVar1 != 0) {
    uVar3 = (uint)local_4 & 3;
    FUN_00409e00(param_1,(uint)local_4);
    bVar2 = FUN_004dd8b0(*(int **)((int)this + 8),*param_1,(int)local_4);
    *(byte *)((int)this + 0x14) = *(byte *)((int)this + 0x14) & bVar2;
    if (uVar3 != 0) {
      (**(code **)(**(int **)((int)this + 8) + 0x28))(4 - uVar3,1);
    }
  }
  return;
}

