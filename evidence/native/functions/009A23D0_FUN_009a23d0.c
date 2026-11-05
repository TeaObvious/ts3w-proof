/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note; existing FUN name retained.
   ECX table receiver, output iterator and string descriptor stackwords, RET8. Literal UTF16 FNV1-style multiply1000193 then XOR codeunit, no folding in this body; unsigned bucket remainder,2050 comparator then found/end iterator output. It is lookup, not insertion; full2050 equality/case and4E50 insertion remain open. */
void __thiscall FUN_009a23d0(void *this,undefined4 *param_1,undefined4 *param_2)

{
  ushort uVar1;
  uint uVar2;
  ushort *puVar3;
  uint uVar4;
  undefined4 *local_8;
  int local_4;
  
  puVar3 = (ushort *)*param_2;
  uVar4 = 0x811c9dc5;
  uVar1 = *puVar3;
  while (uVar1 != 0) {
    puVar3 = puVar3 + 1;
    uVar4 = uVar4 * 0x1000193 ^ (uint)uVar1;
    uVar1 = *puVar3;
  }
  uVar2 = *(uint *)((int)this + 8);
  local_4 = *(int *)((int)this + 4);
  local_8 = FUN_009a2050(*(undefined4 **)(local_4 + (uVar4 % uVar2) * 4),param_2);
  if (local_8 == (undefined4 *)0x0) {
    local_8 = *(undefined4 **)(local_4 + uVar2 * 4);
  }
  else {
    uVar2 = uVar4 % uVar2;
  }
  local_4 = local_4 + uVar2 * 4;
  *param_1 = local_8;
  param_1[1] = local_4;
  return;
}

