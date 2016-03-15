import Python;

class Main {
    static function main() {
        trace(printStmt(Return(null)));
    }

    static function printStmt(stmt:Stmt):String {
        return switch (stmt) {
            case Return(value):
                if (value != null)
                    'return ${printExpr(value)}\n';
                else
                    'return\n';
            default:
                '<TODO>';
        }
    }

    static function printExpr(expr:Expr):String {
        return "<TODO>";
    }
}
