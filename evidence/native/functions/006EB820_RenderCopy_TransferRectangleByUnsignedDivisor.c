/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 bounded rectangle-transfer comparison (2026-10-17). Complete existing006EB820..006EB911
   body242 pristine bytes/85 actual Listing rows. Physical RET8 cleans8stackbytes while retained
   inferredC exposes onepointer; do not repair the prototype. At006EB88A EBP is loaded from
   current[ESP+0x70] and used by unsignedDIV at006EB8AC/006EB8C8. Mapping that location to a
   particular incoming argument depends on preceding child/virtual-call stack cleanup, which is NOT
   authenticated by this bounded body or RET8 alone. A context child runs before descriptor-null
   admission. Nonnull descriptor calls initialization/materialization children; object at
   context+0xC virtual+0x98 signed-negative result skips transfer branch. A four-DWORD stack record
   is copied after00610600; child stack/data contracts and exact record/API identity remain
   unexpanded. Destination origins descriptor+4/+8; wrapping unsigned32 differences (+C minus+4) and
   (+10 minus+8) are divided by EBP and added to origins; no local zero-divisor guard. Virtual+0x88
   receives rectangle/object arguments and literal DWORD2; return ignored. Nonnull object value
   later loaded from the current stack receives virtual+8 cleanup and temporary cleanup child
   follow. API/interface/filter-enum/surface-format/crop/row/mip/depth/pixel/scheduling identities
   are NOT established solely by virtual slots/literal2; no D3D9 equivalence claim. Actual callers
   are006EDC90,006EE470,006F0C40, confirmed at006EDCAC/006EE6A2/006F0E9D; caller and child policy
   unexpanded. Analyst name denotes observed rectangle arithmetic/virtual transfer role, not a
   recovered interface declaration. Preserve ID2445, physical ABI/types/body/bytes/Listing/flow/refs
   and other comments. */

void RenderCopy_TransferRectangleByUnsignedDivisor(undefined4 *param_1)

{
  int *piVar1;
  undefined4 *puVar2;
  void *this;
  int iVar3;
  int iStack_54;
  int iStack_50;
  int iStack_4c;
  int iStack_48;
  undefined1 auStack_44 [16];
  undefined4 auStack_34 [3];
  undefined4 local_28 [6];
  undefined4 uStack_10;
  int *piStack_8;
  uint uStack_4;
  
  this = (void *)FUN_0060e910();
  puVar2 = param_1;
  if (param_1 != (undefined4 *)0x0) {
    FUN_00618720(local_28);
    FUN_00619bf0((void *)*puVar2,0);
    piVar1 = *(int **)((int)this + 0xc);
    param_1 = (undefined4 *)0x0;
    iVar3 = (**(code **)(*piVar1 + 0x98))(piVar1,0,&param_1);
    if (-1 < iVar3) {
      FUN_00610600(this,(int *)&stack0xffffff9c);
      iStack_54 = puVar2[1];
      iStack_50 = puVar2[2];
      iStack_4c = (uint)(puVar2[3] - iStack_54) / uStack_4 + iStack_54;
      iStack_48 = (uint)(puVar2[4] - iStack_50) / uStack_4 + iStack_50;
      (**(code **)(*piVar1 + 0x88))(piVar1,piStack_8,auStack_44,uStack_10,&iStack_54,2);
    }
    if (piStack_8 != (int *)0x0) {
      (**(code **)(*piStack_8 + 8))(piStack_8);
    }
    FUN_006183f0(auStack_34);
  }
  return;
}

