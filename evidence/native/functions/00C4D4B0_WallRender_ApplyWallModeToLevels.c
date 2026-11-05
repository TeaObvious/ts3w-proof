/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst-assigned name. PC1.67 static instruction review. Iterates inclusive signed min/max owner
   levels. Every nonactive level gets visibility1. Active level gets1 exactly for numeric mode1 or3;
   otherwise0. Auxiliary cutaway call00C329F0 gets(rendererbyte24!=0 &&mode==3). Clears dirty
   byte2C. Numeric mode names require separate caller proof. */

void __thiscall WallRender_ApplyWallModeToLevels(void *this)

{
  int iVar1;
  int level;
  int level_00;
  undefined1 local_4;
  
  iVar1 = *(int *)((int)this + 4);
  level = *(int *)(iVar1 + 0x29c);
  level_00 = *(int *)(iVar1 + 0x68);
  if (level_00 <= *(int *)(iVar1 + 0x6c)) {
    do {
      if (level_00 != level) {
        WallRender_SetLevelVisibility(this,level_00,1);
      }
      level_00 = level_00 + 1;
    } while (level_00 <= *(int *)(*(int *)((int)this + 4) + 0x6c));
  }
  if ((*(int *)((int)this + 0x28) == 1) || (local_4 = 0, *(int *)((int)this + 0x28) == 3)) {
    local_4 = 1;
  }
  WallRender_SetLevelVisibility(this,level,local_4);
  if ((*(char *)((int)this + 0x24) == '\0') || (local_4 = '\x01', *(int *)((int)this + 0x28) != 3))
  {
    local_4 = '\0';
  }
  if (*(void **)((int)this + 8) != (void *)0x0) {
    FUN_00c329f0(*(void **)((int)this + 8),local_4);
  }
  *(undefined1 *)((int)this + 0x2c) = 0;
  return;
}

