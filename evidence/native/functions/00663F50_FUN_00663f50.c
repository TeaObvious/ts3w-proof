/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintQuadtree_VisitSegmentCells.
   Original Ghidra database symbol: FUN_00663f50; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00663f50,0066422a), [00664230,0066424b); 6 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* The selected segment-gather wrapper passes a null distance callback and uses 66AA30, not 66A680. Four children are visited in order 0..3. Terminal descriptors trigger the callback only after cell admission; callback AL0 or the 13-frame stack cap stops traversal. The selected 663220 callback always returns AL1, so collection itself does not stop at the first record or wall. BADSPACEBASE in the final generated destructor loop is a stack-model artifact: Listing 66421C..3D explicitly destroys 13 descriptors in reverse. Six bytes between the two owned body ranges are not owned instructions. */



void __thiscall
FUN_00663f50(void *this,undefined4 param_1,float param_2,float param_3,float param_4,float param_5,
            float param_6,undefined *param_7,undefined *param_8,undefined4 param_9)

{
  char cVar1;
  undefined4 uVar2;
  uint uVar3;
  int iVar4;
  undefined4 *puVar5;
  uint uVar6;
  undefined1 *this_00;
  float local_244;
  void *local_240;
  int local_23c [13];
  int local_208 [13];
  undefined4 local_1d4 [9];
  undefined1 local_1b0 [432];
  
  puVar5 = local_1d4;
  iVar4 = 0xc;
  local_240 = this;
  do {
    FUN_00669eb0(puVar5);
    puVar5 = puVar5 + 9;
    iVar4 = iVar4 + -1;
  } while (-1 < iVar4);
  FUN_00669f00(local_1d4,this,0,0,*(undefined4 *)((int)this + 0x38),0,0,*(int *)((int)this + 0x44),0
               ,*(undefined4 *)((int)this + 0x24),0);
  local_23c[0] = 0;
  local_208[0] = 3;
  uVar6 = 1;
  uVar2 = FUN_00669f80((int)local_1d4);
  if ((char)uVar2 == '\0') {
    this_00 = local_1b0;
    puVar5 = local_1d4;
    do {
      iVar4 = local_23c[uVar6 - 1];
      if (local_23c[uVar6 + 0xc] < iVar4) {
        uVar6 = uVar6 - 1;
        this_00 = this_00 + -0x24;
        puVar5 = puVar5 + -9;
      }
      else {
        uVar2 = FUN_00669f80((int)puVar5);
        if ((char)uVar2 != '\0') break;
        FUN_0066a310(puVar5,iVar4,this_00);
        local_23c[uVar6 - 1] = iVar4 + 1;
        if (param_8 == (undefined *)0x0) {
          uVar3 = FUN_0066aa30(this_00,param_2,param_3,param_4,param_5,param_6);
          if ((char)uVar3 != '\0') {
            uVar2 = FUN_00669f80((int)this_00);
            if ((char)uVar2 != '\0') {
              cVar1 = (*(code *)param_7)(param_1,this_00,param_9);
              goto LAB_006641ef;
            }
LAB_006641f5:
            if (0xc < uVar6) break;
            local_23c[uVar6 + 0xd] = 3;
            local_23c[uVar6] = 0;
            uVar6 = uVar6 + 1;
            this_00 = this_00 + 0x24;
            puVar5 = puVar5 + 9;
          }
        }
        else {
          local_244 = 0.0;
          uVar2 = FUN_0066a680(this_00,param_2,param_3,param_4,param_5,param_6,&local_244);
          if ((char)uVar2 != '\0') {
            uVar2 = FUN_00669f80((int)this_00);
            if ((char)uVar2 == '\0') goto LAB_006641f5;
            cVar1 = (*(code *)param_8)(param_1,this_00,param_9,local_244);
LAB_006641ef:
            if (cVar1 == '\0') break;
          }
        }
      }
    } while (0 < (int)uVar6);
  }
  else if (param_8 == (undefined *)0x0) {
    uVar6 = FUN_0066aa30(local_1d4,param_2,param_3,param_4,param_5,param_6);
    if ((char)uVar6 != '\0') {
      (*(code *)param_7)(param_1,local_1d4,param_9);
    }
  }
  else {
    local_244 = 0.0;
    uVar2 = FUN_0066a680(local_1d4,param_2,param_3,param_4,param_5,param_6,&local_244);
    if ((char)uVar2 != '\0') {
      (*(code *)param_8)(param_1,local_1d4,param_9,local_244);
    }
  }
  iVar4 = 0xc;
  do {
    register0x00000010 = (BADSPACEBASE *)((int)register0x00000010 + -0x24);
    FUN_00669ef0((undefined4 *)register0x00000010);
    iVar4 = iVar4 + -1;
  } while (-1 < iVar4);
  return;
}

