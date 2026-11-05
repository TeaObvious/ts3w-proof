/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* PC167_STATIC_ROTATE_0053daa0. Physical factory reads two stack words/RET8, allocates0x1B0
   aligned16 with native source-name metadata, returns0 on allocation failure or calls53D9E0. No
   caller-owned object or CLR allocation contract inferred. */

undefined4 * StaticRotate_Create(undefined4 param_1,int *param_2)

{
  uint *puVar1;
  undefined4 *puVar2;
  
  puVar1 = AllocateWithAllocatorHeader
                     (0x1b0,0x10,"UI/UTFWin/EA::UTFWinControls::StaticRotateEffect",param_2);
  if (puVar1 == (uint *)0x0) {
    return (undefined4 *)0x0;
  }
  puVar2 = StaticRotate_Initialize(puVar1);
  return puVar2;
}

