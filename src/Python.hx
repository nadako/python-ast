// THIS FILE IS GENERATED FROM Python.asdl

typedef Identifier = String;

typedef Object = String; // used for Num O_o

enum Mod {
	Module(body:Array<Stmt>);
	Interactive(body:Array<Stmt>);
	Expression(body:Expr);
	Suite(body:Array<Stmt>);
}

enum Stmt {
	Functiondef(name:Identifier, args:Arguments, body:Array<Stmt>, decorator_list:Array<Expr>, returns:Null<Expr>);
	Classdef(name:Identifier, bases:Array<Expr>, keywords:Array<Keyword>, starargs:Null<Expr>, kwargs:Null<Expr>, body:Array<Stmt>, decorator_list:Array<Expr>);
	Return(value:Null<Expr>);
	Delete(targets:Array<Expr>);
	Assign(targets:Array<Expr>, value:Expr);
	Augassign(target:Expr, op:Operator, value:Expr);
	For(target:Expr, iter:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	While(test:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	If(test:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	With(context_expr:Expr, optional_vars:Null<Expr>, body:Array<Stmt>);
	Raise(exc:Null<Expr>, cause:Null<Expr>);
	Tryexcept(body:Array<Stmt>, handlers:Array<Excepthandler>, orelse:Array<Stmt>);
	Tryfinally(body:Array<Stmt>, finalbody:Array<Stmt>);
	Assert(test:Expr, msg:Null<Expr>);
	Import(names:Array<Alias>);
	Importfrom(module:Null<Identifier>, names:Array<Alias>, level:Null<Int>);
	Global(names:Array<Identifier>);
	Nonlocal(names:Array<Identifier>);
	Expr(value:Expr);
	Pass;
	Break;
	Continue;
}

enum Expr {
	Boolop(op:Boolop, values:Array<Expr>);
	Binop(left:Expr, op:Operator, right:Expr);
	Unaryop(op:Unaryop, operand:Expr);
	Lambda(args:Arguments, body:Expr);
	Ifexp(test:Expr, body:Expr, orelse:Expr);
	Dict(keys:Array<Expr>, values:Array<Expr>);
	Set(elts:Array<Expr>);
	Listcomp(elt:Expr, generators:Array<Comprehension>);
	Setcomp(elt:Expr, generators:Array<Comprehension>);
	Dictcomp(key:Expr, value:Expr, generators:Array<Comprehension>);
	Generatorexp(elt:Expr, generators:Array<Comprehension>);
	Yield(value:Null<Expr>);
	Compare(left:Expr, ops:Array<Cmpop>, comparators:Array<Expr>);
	Call(func:Expr, args:Array<Expr>, keywords:Array<Keyword>, starargs:Null<Expr>, kwargs:Null<Expr>);
	Num(n:Object);
	Str(s:String);
	Bytes(s:String);
	Ellipsis;
	Attribute(value:Expr, attr:Identifier, ctx:Expr_Context);
	Subscript(value:Expr, slice:Slice, ctx:Expr_Context);
	Starred(value:Expr, ctx:Expr_Context);
	Name(id:Identifier, ctx:Expr_Context);
	List(elts:Array<Expr>, ctx:Expr_Context);
	Tuple(elts:Array<Expr>, ctx:Expr_Context);
}

enum Expr_Context {
	Load;
	Store;
	Del;
	Augload;
	Augstore;
	Param;
}

enum Slice {
	Slice(lower:Null<Expr>, upper:Null<Expr>, step:Null<Expr>);
	Extslice(dims:Array<Slice>);
	Index(value:Expr);
}

enum Boolop {
	And;
	Or;
}

enum Operator {
	Add;
	Sub;
	Mult;
	Div;
	Mod;
	Pow;
	Lshift;
	Rshift;
	Bitor;
	Bitxor;
	Bitand;
	Floordiv;
}

enum Unaryop {
	Invert;
	Not;
	Uadd;
	Usub;
}

enum Cmpop {
	Eq;
	Noteq;
	Lt;
	Lte;
	Gt;
	Gte;
	Is;
	Isnot;
	In;
	Notin;
}

typedef Comprehension = {
	target:Expr,
	iter:Expr,
	ifs:Array<Expr>
}

enum Excepthandler {
	Excepthandler(type:Null<Expr>, name:Null<Identifier>, body:Array<Stmt>);
}

typedef Arguments = {
	args:Array<Arg>,
	vararg:Null<Identifier>,
	varargannotation:Null<Expr>,
	kwonlyargs:Array<Arg>,
	kwarg:Null<Identifier>,
	kwargannotation:Null<Expr>,
	defaults:Array<Expr>,
	kw_defaults:Array<Expr>
}

typedef Arg = {
	arg:Identifier,
	annotation:Null<Expr>
}

typedef Keyword = {
	arg:Identifier,
	value:Expr
}

typedef Alias = {
	name:Identifier,
	asname:Null<Identifier>
}

