/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */

/* Retained historical annotation 1, previous C line 5; earlier snapshot context. */
/* Original PC 1.67 TS3W.exe; analyst display name FootprintSet_InsertUniquePointer.
   Original Ghidra database symbol: FUN_00628ca0; database unchanged.
   Names in this reviewed rendering are analyst aliases, not recovered EA symbols.
   The generated types/ABI are inferred; instruction-level qualifications follow.
   Owned ranges (exclusive ends): [00628ca0,00628d27); 0 envelope gap bytes are not owned instructions.
*/

/* Retained historical annotation 2, previous C line 12; earlier snapshot context. */
/* Key comparison is unsigned pointer identity, not GUID, type or geometry equality (628CB5..628CE9). Existing keys return the existing node and inserted=false without incrementing set+14. The displayed declaration omits a third physical stack word: both returns pop 0x0c; 629850 supplies a trailing zero word. Do not use the inferred two-parameter C declaration as the ABI. */

/* Retained historical annotation 3, previous C line 29; earlier snapshot context. */
/* 00628CB5..C2: compare unsigned pointer keys, not footprint contents. */



undefined4 * __thiscall FUN_00628ca0(void *this,undefined4 *param_1,uint *param_2)

{
  uint *puVar1;
  int *piVar2;
  int *piVar3;
  bool bVar4;
  
  puVar1 = param_2;
  piVar2 = (int *)((int)this + 4);
  bVar4 = true;
  if (*(int **)((int)this + 0xc) != (int *)0x0) {
    piVar3 = *(int **)((int)this + 0xc);
    do {
      piVar2 = piVar3;
      bVar4 = *param_2 < (uint)piVar2[4];
      if (bVar4) {
        piVar3 = (int *)piVar2[1];
      }
      else {
        piVar3 = (int *)*piVar2;
      }
    } while (piVar3 != (int *)0x0);
  }
  piVar3 = piVar2;
  if (bVar4) {
    if (piVar2 == *(int **)((int)this + 8)) goto LAB_00628cf5;
    piVar3 = FUN_004e1070(piVar2);
  }
  if (*puVar1 <= (uint)piVar3[4]) {
    *param_1 = piVar3;
    *(undefined1 *)(param_1 + 1) = 0;
    return param_1;
  }
LAB_00628cf5:
  FUN_00627400(this,&param_2,piVar2,puVar1,'\0');
  *param_1 = param_2;
  *(undefined1 *)(param_1 + 1) = 1;
  return param_1;
}

