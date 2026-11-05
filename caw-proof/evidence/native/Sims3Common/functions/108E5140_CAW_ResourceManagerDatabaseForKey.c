/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Resource-manager virtual+44 delegates exact-key selection
   to virtual+40 and returns its winning database. Used by ResourceMgr_GetNameForKey before the
   distinct directory-database filename query. Analyst-assigned helper names are not recovered
   original symbols. Original instructions govern decompiler ABI/register artifacts. */

void * __thiscall CAW_ResourceManagerDatabaseForKey(void *this,ResourceKeyWords *key)

{
  void *pvVar1;
  
  pvVar1 = (void *)(**(code **)(*(int *)this + 0x40))(key,&key);
  return pvVar1;
}

