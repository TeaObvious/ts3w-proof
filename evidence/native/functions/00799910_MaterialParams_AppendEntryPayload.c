/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Analyst PC1.67 static: ECX parameter builder; hash,kind,payloadPointer,DWORDcount; RET0x10.
   Append16-byte hash/kind/count/byteOffset entry before copying count DWORDs or extending zero
   payload when pointer is null. Does not replace equal hashes or upload GPU data; original
   allocation behavior remains. Role name is descriptive, not a recovered original symbol. */

void __thiscall
MaterialParams_AppendEntryPayload
          (void *this,undefined4 param_1,undefined4 param_2,void *param_3,int param_4)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 local_10;
  undefined4 local_c;
  int local_8;
  int local_4;
  
  iVar2 = param_4;
  local_c = param_2;
  puVar1 = *(undefined4 **)((int)this + 0x14);
  local_4 = (*(int *)((int)this + 4) - *(int *)this >> 2) * 4;
  local_10 = param_1;
  local_8 = param_4;
  if (puVar1 < *(undefined4 **)((int)this + 0x18)) {
    *(undefined4 **)((int)this + 0x14) = puVar1 + 4;
    if (puVar1 != (undefined4 *)0x0) {
      *puVar1 = param_1;
      puVar1[1] = param_2;
      puVar1[2] = param_4;
      puVar1[3] = local_4;
    }
  }
  else {
    FUN_00cca0b0((void *)((int)this + 0x10),puVar1,&local_10);
  }
  if (param_3 != (void *)0x0) {
    FUN_009b3250(this,*(void **)((int)this + 4),param_3,(void *)((int)param_3 + iVar2 * 4));
    return;
  }
  param_1 = 0;
  FUN_00c2a4e0(this,(*(int *)((int)this + 4) - *(int *)this >> 2) + iVar2,&param_1);
  return;
}

