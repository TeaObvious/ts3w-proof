/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Inserts an absent instance key and copies the
   NUL-terminated raw byte name only when insertion reports new. An existing duplicate is retained
   without replacing its name, including an empty first value. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_KeyNameMapInsertFirst(void *this,ulonglong *instance,char *rawName)

{
  char *pcVar1;
  char *pcVar2;
  int local_c [2];
  char local_4;
  
  FUN_10521cd0((void *)((int)this + 0x28),local_c,(uint *)instance);
  if (local_4 != '\0') {
    *(char **)(local_c[0] + 0x14) = "Debug/KeyNameMap";
    pcVar1 = rawName;
    do {
      pcVar2 = pcVar1;
      pcVar1 = pcVar2 + 1;
    } while (*pcVar2 != '\0');
    FUN_1000e8a0((int *)(local_c[0] + 8),rawName,pcVar2);
    FUN_105247a0(this,((*(int *)(local_c[0] + 0xc) + *(int *)((int)this + 0x20)) -
                      *(int *)(local_c[0] + 8)) + 0x30);
  }
  return;
}

