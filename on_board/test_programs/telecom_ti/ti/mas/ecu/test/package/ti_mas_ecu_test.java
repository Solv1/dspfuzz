/*
 *  Do not modify this file; it is automatically 
 *  generated and any modifications will be overwritten.
 *
 * @(#) xdc-y50
 */
import java.util.*;
import org.mozilla.javascript.*;
import xdc.services.intern.xsr.*;
import xdc.services.spec.Session;

public class ti_mas_ecu_test
{
    static final String VERS = "@(#) xdc-y50\n";

    static final Proto.Elm $$T_Bool = Proto.Elm.newBool();
    static final Proto.Elm $$T_Num = Proto.Elm.newNum();
    static final Proto.Elm $$T_Str = Proto.Elm.newStr();
    static final Proto.Elm $$T_Obj = Proto.Elm.newObj();

    static final Proto.Fxn $$T_Met = new Proto.Fxn(null, null, 0, -1, false);
    static final Proto.Map $$T_Map = new Proto.Map($$T_Obj);
    static final Proto.Arr $$T_Vec = new Proto.Arr($$T_Obj);

    static final XScriptO $$DEFAULT = Value.DEFAULT;
    static final Object $$UNDEF = Undefined.instance;

    static final Proto.Obj $$Package = (Proto.Obj)Global.get("$$Package");
    static final Proto.Obj $$Module = (Proto.Obj)Global.get("$$Module");
    static final Proto.Obj $$Instance = (Proto.Obj)Global.get("$$Instance");
    static final Proto.Obj $$Params = (Proto.Obj)Global.get("$$Params");

    static final Object $$objFldGet = Global.get("$$objFldGet");
    static final Object $$objFldSet = Global.get("$$objFldSet");
    static final Object $$proxyGet = Global.get("$$proxyGet");
    static final Object $$proxySet = Global.get("$$proxySet");
    static final Object $$delegGet = Global.get("$$delegGet");
    static final Object $$delegSet = Global.get("$$delegSet");

    Scriptable xdcO;
    Session ses;
    Value.Obj om;

    boolean isROV;
    boolean isCFG;

    Proto.Obj pkgP;
    Value.Obj pkgV;

    ArrayList<Object> imports = new ArrayList<Object>();
    ArrayList<Object> loggables = new ArrayList<Object>();
    ArrayList<Object> mcfgs = new ArrayList<Object>();
    ArrayList<Object> icfgs = new ArrayList<Object>();
    ArrayList<String> inherits = new ArrayList<String>();
    ArrayList<Object> proxies = new ArrayList<Object>();
    ArrayList<Object> sizes = new ArrayList<Object>();
    ArrayList<Object> tdefs = new ArrayList<Object>();

    void $$IMPORTS()
    {
        Global.callFxn("loadPackage", xdcO, "ti.mas.types");
        Global.callFxn("loadPackage", xdcO, "ti.mas.fract");
        Global.callFxn("loadPackage", xdcO, "ti.mas.util");
        Global.callFxn("loadPackage", xdcO, "ti.mas.sdk");
        Global.callFxn("loadPackage", xdcO, "ti.mas.ecu");
        Global.callFxn("loadPackage", xdcO, "ti.mas.vpe");
        Global.callFxn("loadPackage", xdcO, "ti.mas.mhm");
        Global.callFxn("loadPackage", xdcO, "xdc");
        Global.callFxn("loadPackage", xdcO, "xdc.corevers");
    }

    void $$OBJECTS()
    {
        pkgP = (Proto.Obj)om.bind("ti.mas.ecu.test.Package", new Proto.Obj());
        pkgV = (Value.Obj)om.bind("ti.mas.ecu.test", new Value.Obj("ti.mas.ecu.test", pkgP));
    }

    void $$SINGLETONS()
    {
        pkgP.init("ti.mas.ecu.test.Package", (Proto.Obj)om.findStrict("xdc.IPackage.Module", "ti.mas.ecu.test"));
        pkgP.bind("$capsule", $$UNDEF);
        pkgV.init2(pkgP, "ti.mas.ecu.test", Value.DEFAULT, false);
        pkgV.bind("$name", "ti.mas.ecu.test");
        pkgV.bind("$category", "Package");
        pkgV.bind("$$qn", "ti.mas.ecu.test.");
        pkgV.bind("$vers", Global.newArray("1, 0, 0, 0"));
        Value.Map atmap = (Value.Map)pkgV.getv("$attr");
        atmap.seal("length");
        imports.clear();
        imports.add(Global.newArray("ti.mas.types", Global.newArray(5, 0, 8, 1)));
        imports.add(Global.newArray("ti.mas.fract", Global.newArray(2, 0, 8, 1)));
        imports.add(Global.newArray("ti.mas.util", Global.newArray(5, 0, 0, 0)));
        imports.add(Global.newArray("ti.mas.sdk", Global.newArray(4, 0, 0, 0)));
        imports.add(Global.newArray("ti.mas.ecu", Global.newArray(2, 0, 0, 3)));
        imports.add(Global.newArray("ti.mas.vpe", Global.newArray(4, 0, 0, 1)));
        imports.add(Global.newArray("ti.mas.mhm", Global.newArray(2, 0, 0, 0)));
        imports.add(Global.newArray("*ti.mas.swtools", Global.newArray(3, 0, 0, 0)));
        pkgV.bind("$imports", imports);
        StringBuilder sb = new StringBuilder();
        sb.append("var pkg = xdc.om['ti.mas.ecu.test'];\n");
        sb.append("if (pkg.$vers.length >= 3) {\n");
            sb.append("pkg.$vers.push(Packages.xdc.services.global.Vers.getDate(xdc.csd() + '/..'));\n");
        sb.append("}\n");
        sb.append("pkg.build.libraries = [\n");
        sb.append("];\n");
        sb.append("pkg.build.libDesc = [\n");
        sb.append("];\n");
        Global.eval(sb.toString());
    }

    void $$INITIALIZATION()
    {
        Value.Obj vo;

        if (isCFG) {
        }//isCFG
        Global.callFxn("init", pkgV);
        ((Value.Arr)om.findStrict("$packages", "ti.mas.ecu.test")).add(pkgV);
    }

    public void exec( Scriptable xdcO, Session ses )
    {
        this.xdcO = xdcO;
        this.ses = ses;
        om = (Value.Obj)xdcO.get("om", null);

        Object o = om.geto("$name");
        String s = o instanceof String ? (String)o : null;
        isCFG = s != null && s.equals("cfg");
        isROV = s != null && s.equals("rov");

        $$IMPORTS();
        $$OBJECTS();
        if (isROV) {
        }//isROV
        $$SINGLETONS();
        $$INITIALIZATION();
    }
}
