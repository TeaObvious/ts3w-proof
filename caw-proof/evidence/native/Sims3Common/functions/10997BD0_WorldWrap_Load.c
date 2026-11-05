/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified CAW 1.22.10 Sims3Common.dll PE export WorldWrap_Load (RVA 0x997BD0). Pristine CSHostWrap
   declares int WorldWrap_Load(IntPtr world, LPWStr path); WorldWrap.Load creates component wrappers
   only when return == 1. Original x86 at 0x10997BD0 loads path from [ESP+8], world pointer into ECX
   from [ESP+4], calls 0x102426C0, and normalizes AL to integer 0/1. The callee rejects null/empty
   UTF-16 paths and follows resource-load steps. Static evidence does not establish successful
   loading of any particular project. */

bool __cdecl WorldWrap_Load(void *param_1,wchar_t *param_2)

{
  char cVar1;
  
                    /* 0x997bd0  2679  WorldWrap_Load */
  cVar1 = CAW_WorldLoadFromWidePath(param_1,param_2);
  return cVar1 != '\0';
}

