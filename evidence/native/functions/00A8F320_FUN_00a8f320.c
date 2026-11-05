/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Analyst role: Four-key forward hash lookup; descriptive label, not recovered original symbol.
   ECX map plus output two-pointer iterator/key64 pointer, RET8 void. AFBB80 hash modulo map+8 bucket count; starts map+4 bucket, follows node+48, compares all64 bytes via7892B0. Miss returns sentinel bucket[count], with bucket-slot pointer in output+4. No zero-count guard or returned-node lifetime lease. */

void __thiscall FUN_00a8f320(void *this,undefined4 *param_1,byte *param_2)

{
  uint uVar1;
  bool bVar2;
  uint uVar3;
  undefined *local_8;
  int local_4;
  
  uVar3 = FUN_00afbb80(param_2);
  uVar1 = *(uint *)((int)this + 8);
  uVar3 = uVar3 % uVar1;
  local_4 = *(int *)((int)this + 4);
  local_8 = *(undefined **)(local_4 + uVar3 * 4);
  do {
    if (local_8 == (undefined *)0x0) {
LAB_00a8f365:
      local_8 = *(undefined **)(local_4 + uVar1 * 4);
      uVar3 = uVar1;
LAB_00a8f373:
      local_4 = local_4 + uVar3 * 4;
      *param_1 = local_8;
      param_1[1] = local_4;
      return;
    }
    bVar2 = ResourceKeyQuad_Equals(param_2,local_8);
    if (bVar2) {
      if (local_8 != (undefined *)0x0) goto LAB_00a8f373;
      goto LAB_00a8f365;
    }
    local_8 = *(undefined **)(local_8 + 0x48);
  } while( true );
}
