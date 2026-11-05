/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack stream instruction review. ECX file stream RET4 one origin word.
   SetFilePointerEx queries current position using zero64 displacement and FILE_CURRENT=1; original
   call pushes FIVE DWORD slots (handle,low0,high0,out64ptr,method1). Origin0 returns low current
   position; origin2 returns current minus virtual length(+1C); unsupported origins return0;
   selected errors returnFFFFFFFF. Truncation/overflow at32 bits remains relevant; high temporary is
   not a64-bit API return. Imported Win32 union typing can distort decompiled argument expressions.
    */

uint __thiscall FileReadStream_GetPosition(void *this,uint origin)

{
  BOOL BVar1;
  uint uVar2;
  DWORD unaff_ESI;
  int in_stack_00000008;
  undefined4 local_8;
  uint local_4;
  
  local_8 = 0;
  local_4 = 0;
  BVar1 = SetFilePointerEx(*(HANDLE *)((int)this + 4),(LARGE_INTEGER)(ZEXT48(&local_8) << 0x20),
                           (PLARGE_INTEGER)0x1,unaff_ESI);
  if (BVar1 != 0) {
    if (in_stack_00000008 == 0) {
      return local_4;
    }
    if (in_stack_00000008 != 2) {
      return 0;
    }
    uVar2 = (**(code **)(*(int *)this + 0x1c))(this);
    if (uVar2 != 0xffffffff) {
      return local_4 - uVar2;
    }
  }
  return 0xffffffff;
}

