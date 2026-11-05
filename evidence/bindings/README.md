# Original managed-to-native bindings

The [registration map](registration-map.json) retains all 1,775 verified
PC 1.67 name-to-function records, including each original eight-byte pointer
pair and matching managed declaration metadata. [tables.json](tables.json)
retains the bounds, null sentinels, getters and descriptor vtables for the 43
native tables. The executable stores adjacent `{native function pointer,
registration-name pointer}` pairs and ends each table with a zero pair.

The [consumer trace](consumer-trace.md) follows one descriptor into the native
script host and shows its `(name,function)` binder call. It establishes a
reachable static use of the table format; it does not claim that every
registration ran in a retail session. The [callpaths](callpaths.json) join
registration names to original managed declarations and direct caller IL
sites. The [aliases](aliases.json) identify 20 native target addresses shared
by multiple names. The [exceptions](exceptions.json) retain five table names
without an exact ScriptCore declaration, one ambiguous same-name overload and
17 managed declarations without a matching table name.

The [API index](../../API-INDEX.tsv) and [API pages](../../api/README.md) are
the normal lookup route. A table row establishes an entry identity; argument
counts, calling convention, return behavior and side effects require the
[managed code](../managed/README.md) and [native instructions](../native/README.md).

[managed-native-reuse.tsv](managed-native-reuse.tsv) joins all 1,775 registration
records with their 1,877 direct original ScriptCore IL callsites and the
selected first-hop direct native calls from the registered entry. It has 4,971 rows because a managed callsite can reach an entry that contains multiple
static call instructions; 3,868 rows name one of those calls. Blank managed
fields mean no direct callsite was retained; blank native-callee fields mean
no direct edge is present in the selected native-call index. The table does
not assert runtime execution, transitive reachability through a branch,
complete native coverage, or callers in other managed assemblies. Query the
existing [callpath records](callpaths.json), [original caller IL](../managed/callers.il.txt)
and [native direct-call index](../native/direct-calls.tsv) for each row's
underlying evidence.
