package hxbit;

#if hxbit_visibility
/**
	The visibility groups of the `@:visible(group)` fields, set with `hxbit.Macros.initVisibility` (with `-D hxbit_visibility`).
**/
typedef VisibilityGroup = haxe.macro.MacroType<[hxbit.Macros.buildVisibilityGroups()]>;
#else
/**
	The visibility groups of the `@:visible(group)` fields, set with `hxbit.Macros.initVisibility` (with `-D hxbit_visibility`).
**/
enum VisibilityGroup {
}
#end