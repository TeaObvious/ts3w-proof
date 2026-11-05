/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Original CAW 1.22.10 Sims3Common.dll: Original CAW manager vtable10B18F10 slot+34 points here.
   Add/remove operation updates owned per-database lookup/cache associations and delegates
   to108E82E0. Removal purges entries associated with this database identity, then informs the
   external resource service. This does not rebuild or clear the global associated filename-map
   list, whose lifetime is resource-system ownership. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

undefined1 __thiscall
CAW_ResourceSystemChangeDatabaseRegistration(void *this,char param_1,int *param_2,int param_3)

{
  int iVar1;
  uint *puVar2;
  undefined4 *puVar3;
  undefined1 uVar4;
  uint uVar5;
  ushort *puVar6;
  undefined4 uVar7;
  undefined4 *puVar8;
  undefined4 *puVar9;
  int *piVar10;
  int iVar11;
  uint uStack_210;
  int *piStack_20c;
  wchar_t awStack_208 [260];
  
  if (((param_1 == '\0') && (param_2 != (int *)0x0)) &&
     (uVar5 = (**(code **)(param_2[1] + 0xc))(0x226a1de), uVar5 != 0)) {
    iVar1 = *(int *)((int)this + 0x720);
    for (iVar11 = *(int *)((int)this + 0x71c); iVar11 != iVar1; iVar11 = iVar11 + 0x14) {
      if (*(void **)(iVar11 + 0x10) != (void *)0x0) {
        FUN_108da9e0(*(void **)(iVar11 + 0x10),uVar5,0);
      }
    }
  }
  FUN_109166c0((LPCRITICAL_SECTION)((int)this + 0x48),(uint *)&DAT_10b18c74);
  puVar6 = (ushort *)(**(code **)(*param_2 + 0x28))();
  FUN_10921d20((ushort *)awStack_208,puVar6,(ushort *)0x0,5);
  uVar7 = FUN_10920fb0(5);
  if ((char)uVar7 == '\0') {
    _wcslwr(awStack_208);
  }
  uVar5 = FUN_1092d120((ushort *)awStack_208,0x811c9dc5,0);
  if (param_1 == '\0') {
    FUN_109166c0((void *)((int)this + 0x210),(uint *)&DAT_10b18c74);
    puVar3 = *(undefined4 **)((int)this + 0x2b4);
    for (puVar8 = *(undefined4 **)((int)this + 0x2b0); puVar8 != puVar3; puVar8 = puVar8 + 1) {
      piVar10 = (int *)(**(code **)(*(int *)*puVar8 + 4))();
      if (param_2 == piVar10) {
        puVar3 = puVar8 + 1;
        if (puVar3 < *(undefined4 **)((int)this + 0x2b4)) {
          memmove(puVar8,puVar3,(int)*(undefined4 **)((int)this + 0x2b4) - (int)puVar3);
        }
        *(int *)((int)this + 0x2b4) = *(int *)((int)this + 0x2b4) + -4;
        break;
      }
    }
    puVar8 = *(undefined4 **)((int)this + 0x2a0);
    puVar3 = *(undefined4 **)((int)this + 0x2a4);
    if (puVar8 != puVar3) {
LAB_10529610:
      if ((int *)puVar8[1] != param_2) goto code_r0x10529615;
      puVar9 = puVar8 + 2;
      if (puVar9 < puVar3) {
        do {
          *puVar8 = *puVar9;
          puVar8[1] = puVar9[1];
          puVar9 = puVar9 + 2;
          puVar8 = puVar8 + 2;
        } while (puVar9 != puVar3);
      }
      *(int *)((int)this + 0x2a4) = *(int *)((int)this + 0x2a4) + -8;
    }
LAB_1052964b:
    FUN_10916780((LPCRITICAL_SECTION)((int)this + 0x210));
  }
  else {
    for (iVar11 = *(int *)((int)this + 0x2a0); iVar11 != *(int *)((int)this + 0x2a4);
        iVar11 = iVar11 + 8) {
      if (*(int **)(iVar11 + 4) == param_2) {
        if (iVar11 != *(int *)((int)this + 0x2a4)) goto LAB_10529656;
        break;
      }
    }
    puVar2 = *(uint **)((int)this + 0x2a4);
    piStack_20c = param_2;
    uStack_210 = uVar5;
    if (puVar2 < *(uint **)((int)this + 0x2a8)) {
      *(uint **)((int)this + 0x2a4) = puVar2 + 2;
      if (puVar2 != (uint *)0x0) {
        *puVar2 = uVar5;
        puVar2[1] = (uint)param_2;
      }
    }
    else {
      FUN_101f5b70((void *)((int)this + 0x2a0),puVar2,&uStack_210);
    }
  }
LAB_10529656:
  uVar4 = CAW_ResourceManagerChangeDatabaseOwner(this,param_1,param_2,param_3);
  FUN_10916780((LPCRITICAL_SECTION)((int)this + 0x48));
  if ((param_1 == '\0') && (piVar10 = (int *)FUN_105197d0(), piVar10 != (int *)0x0)) {
    (**(code **)(*piVar10 + 0x28))(param_2);
  }
  return uVar4;
code_r0x10529615:
  puVar8 = puVar8 + 2;
  if (puVar8 == puVar3) goto LAB_1052964b;
  goto LAB_10529610;
}

