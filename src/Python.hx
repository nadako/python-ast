// THIS FILE IS GENERATED FROM Python.asdl

typedef Identifier = String;

typedef Bytes = String;

typedef Singleton = String;

typedef Object = String; // used for Num O_o

enum Mod {
	Module(body:Array<Stmt>);
	Interactive(body:Array<Stmt>);
	Expression(body:Expr);
	Suite(body:Array<Stmt>);
}

enum Stmt {
	Functiondef(name:Identifier, args:Arguments, body:Array<Stmt>, decorator_list:Array<Expr>, returns:Null<Expr>);
	Asyncfunctiondef(name:Identifier, args:Arguments, body:Array<Stmt>, decorator_list:Array<Expr>, returns:Null<Expr>);
	Classdef(name:Identifier, bases:Array<Expr>, keywords:Array<Keyword>, body:Array<Stmt>, decorator_list:Array<Expr>);
	Return(value:Null<Expr>);
	Delete(targets:Array<Expr>);
	Assign(targets:Array<Expr>, value:Expr);
	Augassign(target:Expr, op:Operator, value:Expr);
	For(target:Expr, iter:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	Asyncfor(target:Expr, iter:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	While(test:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	If(test:Expr, body:Array<Stmt>, orelse:Array<Stmt>);
	With(items:Array<Withitem>, body:Array<Stmt>);
	Asyncwith(items:Array<Withitem>, body:Array<Stmt>);
	Raise(exc:Null<Expr>, cause:Null<Expr>);
	Try(body:Array<Stmt>, handlers:Array<Excepthandler>, orelse:Array<Stmt>, finalbody:Array<Stmt>);
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
	Await(value:Expr);
	Yield(value:Null<Expr>);
	Yieldfrom(value:Expr);
	Compare(left:Expr, ops:Array<Cmpop>, comparators:Array<Expr>);
	Call(func:Expr, args:Array<Expr>, keywords:Array<Keyword>);
	Num(n:Object);
	Str(s:String);
	Bytes(s:Bytes);
	Nameconstant(value:Singleton);
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
	Matmult;
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
	vararg:Null<Arg>,
	kwonlyargs:Array<Arg>,
	kw_defaults:Array<Expr>,
	kwarg:Null<Arg>,
	defaults:Array<Expr>
}

typedef Arg = {
	arg:Identifier,
	annotation:Null<Expr>
}

typedef Keyword = {
	arg:Null<Identifier>,
	value:Expr
}

typedef Alias = {
	name:Identifier,
	asname:Null<Identifier>
}

typedef Withitem = {
	context_expr:Expr,
	optional_vars:Null<Expr>
}

