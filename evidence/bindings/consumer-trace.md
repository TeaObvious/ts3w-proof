# Static registration consumer trace

Target is original PC 1.67 `TS3W.exe` with SHA-256
`694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3`.
Addresses below are PE virtual addresses, and instruction facts come from its
file-backed `.text` bytes. Reproduce bounded disassembly with, for example,
`objdump -d -Mintel --start-address=0xd7eb1a --stop-address=0xd7eb7a TS3W.exe`.
Ghidra was used read-only to corroborate xrefs and the names of already defined
functions. Static reachability is not an observed game run.

1. `0x00EC9870` pushes callback `0x00EC96E0` into `0x0076B600`. The latter
   stores the callback and calls it at `0x0076B75B` when setting up the script
   host. `0x00EC96E0` calls the SACS descriptor wrapper `0x007675E0` at
   `0x00EC973A`.
2. `0x007675E0` allocates a `Scripting/ScriptFunctions` descriptor, calls
   constructor `0x007672D0`, and invokes host vtable slot `+0x48` with the
   descriptor. Host construction at `0x00D7E4BD` installs vtable
   `0x0108C6D0`; its `+0x48` entry at `0x0108C718` is `0x00D744E0`.
   `0x00D744E0` inserts the descriptor into the host list at object offset
   `0x1600` (`0x00D744E1` and `0x00D74500` through `0x00D7450D`).
3. The SACS descriptor installs vtable `0x01007DA8` at `0x007672D5`.
   Vtable slot `+0x0C` is `0x00766F00`, returning the `SACS` type-name address
   `0x01007DA0`. Slot `+0x10` is `0x007691D0` at `0x01007DB8`.
   Instructions at `0x007691D0` are `mov eax,[esp+4]`,
   `mov dword ptr [eax],0x01161DE0`, `ret 4`.
4. The consumer has a raw function entry at `0x00D7E9F0` (two `CC` bytes
   precede it). At `0x00D7EB1A`, it takes the first descriptor from
   `[esi+0x1600]`. At `0x00D7EB31` through `0x00D7EB3E`, it loads the
   descriptor from the list node and invokes vtable slot `+0x10` with an
   output pointer. At `0x00D7EB46`, it tests the returned table's first
   function pointer for zero. At `0x00D7EB50` through `0x00D7EB57`, it reads
   `[eax]` (native address) and `[eax+4]` (name address), then calls
   `0x00E82820(name,function)`. At `0x00D7EB63`, it advances eight bytes;
   `0x00D7EB69` tests the next native address. It then advances to the next
   descriptor list node and repeats.
5. `0x00E82820` passes the name to `0x00E48380` at `0x00E82831`, then
   forwards its `EAX` result along with the native address to `0x00E45BD0`
   at `0x00E82841`, using global table `0x011F536C`. This is the downstream
   registry insertion call. The returned value's exact representation and
   the table's internal key policy were not audited here.

The SACS table has 29 name/function pairs from `0x01161DE0` through
`0x01161EC0`, followed by zero/zero at `0x01161EC8`. The one-row `Random`
table and the 372-row `World` table obey the same getter and sentinel format.
The machine-readable `tables.json` and
[`registration-map.json`](registration-map.json) let reviewers verify
all 43 table bounds and each address/string/file offset.
