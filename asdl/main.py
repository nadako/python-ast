import os.path
import asdl

class HaxeVisitor(asdl.VisitorBase):
    def __init__(self, file):
        super(HaxeVisitor, self).__init__()
        self.file = file

    def visitModule(self, mod):
        for dfn in mod.dfns:
            self.visit(dfn)

    def visitType(self, type):
        self.visit(type.value, type.name)

    def visitSum(self, sum, name):
        self.file.write("enum " + str(name).title() + " {\n")

        ctors = []
        for type in sum.types:
            ctor = "\t" + str(type.name).title()
            if type.fields:
                ctor += "("
                args = []
                for field in type.fields:
                    args.append(self.field_to_str(field))
                ctor += ", ".join(args)
                ctor += ")"
            ctor += ";"
            ctors.append(ctor)
        self.file.write("\n".join(ctors))

        self.file.write("\n}\n\n")

    def field_to_str(self, field):
        if not field.name:
            raise Exception("No field name")
        f = str(field.name)
        f += ":"
        t = str(field.type).title()
        if field.seq:
            t = "Array<" + t + ">"
        if field.opt:
            t = "Null<" + t + ">"
        f += t
        return f


    def visitProduct(self, product, name):
        self.file.write("typedef ");
        self.file.write(str(name).title())
        self.file.write(" = {\n")

        fields = []
        for field in product.fields:
            fields.append("\t" + self.field_to_str(field))
        self.file.write(",\n".join(fields))

        self.file.write("\n}\n\n")


dir = os.path.dirname(__file__)

mod = asdl.parse(dir + "/Python.asdl")
if not asdl.check(mod):
    raise Exception("wrong!")

file = open(dir + "/../src/Python.hx", "w")
file.write("// THIS FILE IS GENERATED FROM Python.asdl\n\n")
file.write("typedef Identifier = String;\n\n")
file.write("typedef Object = String; // used for Num O_o\n\n")
HaxeVisitor(file).visit(mod)
file.close()
