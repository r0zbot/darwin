structure DarwinTokens =
  struct
    datatype token
      = KW_let
      | KW_in
      | KW_title
      | SSTRING of (string list)
      | ID of string
      | NUM of Int.int
      | REAL of Real.real
      | SINT of (Int.int list)
      | EQ
      | PLUS
      | DOT
      | EEQ
      | SFLOAT of (Real.real list)
      | TIMES
      | DIV
      | MINUS
      | COMMA
      | SBOOL of (Bool.bool list)
      | LP
      | RP
      | BOOL of bool
      | AND
      | OR
      | NOT
      | SPACE
      | GT
      | LT
      | LEQ
      | GEQ
      | NEQ
      | KW_variables
      | SEMI
      | TIPO of string
      | DOTDOT
      | KW_comands
      | STR of string
      | KW_Print
      | KW_endvars
      | KW_terminate
      | KW_SUM
      | KW_PROD
      | EMPTY
      | KW_GETS
      | KW_IF
      | KW_THEN
      | KW_ELSE
      | KW_WHILE
      | KW_DO
      | KW_END
      | KW_TOSTRING
      | KW_MEAN
      | KW_CORR
      | KW_MEDIAN
      | KW_STDEV
      | KW_VAR
      | KW_RT
      | KW_POW
      | KW_GETF
      | KW_COV
      | KW_SUBS
      | KW_LINREG
      | TUPLE of Grammar.tipo
      | VOID
      | KW_GETI
      | KW_TOFLOAT
      | KW_TOINT
      | CONCAT
      | EOF
    val allToks = [
            KW_let, KW_in, KW_title, EQ, PLUS, DOT, EEQ, TIMES, DIV, MINUS, COMMA, LP, RP, AND, OR, NOT, SPACE, GT, LT, LEQ, GEQ, NEQ, KW_variables, SEMI, DOTDOT, KW_comands, KW_Print, KW_endvars, KW_terminate, KW_SUM, KW_PROD, EMPTY, KW_GETS, KW_IF, KW_THEN, KW_ELSE, KW_WHILE, KW_DO, KW_END, KW_TOSTRING, KW_MEAN, KW_CORR, KW_MEDIAN, KW_STDEV, KW_VAR, KW_RT, KW_POW, KW_GETF, KW_COV, KW_SUBS, KW_LINREG, VOID, KW_GETI, KW_TOFLOAT, KW_TOINT, CONCAT, EOF
           ]
    fun toString tok =
(case (tok)
 of (KW_let) => "let"
  | (KW_in) => "in"
  | (KW_title) => "title"
  | (SSTRING(_)) => "SSTRING"
  | (ID(_)) => "ID"
  | (NUM(_)) => "NUM"
  | (REAL(_)) => "REAL"
  | (SINT(_)) => "SINT"
  | (EQ) => "="
  | (PLUS) => "+"
  | (DOT) => "."
  | (EEQ) => "=="
  | (SFLOAT(_)) => "SFLOAT"
  | (TIMES) => "*"
  | (DIV) => "/"
  | (MINUS) => "-"
  | (COMMA) => ","
  | (SBOOL(_)) => "SBOOL"
  | (LP) => "("
  | (RP) => ")"
  | (BOOL(_)) => "BOOL"
  | (AND) => "&&"
  | (OR) => "||"
  | (NOT) => "!"
  | (SPACE) => " "
  | (GT) => ">"
  | (LT) => "<"
  | (LEQ) => "<="
  | (GEQ) => ">="
  | (NEQ) => "!="
  | (KW_variables) => "variables"
  | (SEMI) => "SEMI"
  | (TIPO(_)) => "TIPO"
  | (DOTDOT) => ":="
  | (KW_comands) => "commands"
  | (STR(_)) => "STR"
  | (KW_Print) => "print"
  | (KW_endvars) => "end variables"
  | (KW_terminate) => "terminate"
  | (KW_SUM) => "sum"
  | (KW_PROD) => "prod"
  | (EMPTY) => "{}"
  | (KW_GETS) => "getString"
  | (KW_IF) => "if"
  | (KW_THEN) => "then"
  | (KW_ELSE) => "else"
  | (KW_WHILE) => "while"
  | (KW_DO) => "do"
  | (KW_END) => "end"
  | (KW_TOSTRING) => "toString"
  | (KW_MEAN) => "mean"
  | (KW_CORR) => "correlation"
  | (KW_MEDIAN) => "median"
  | (KW_STDEV) => "stdDeviation"
  | (KW_VAR) => "variance"
  | (KW_RT) => "rt"
  | (KW_POW) => "pow"
  | (KW_GETF) => "getFloat"
  | (KW_COV) => "covariance"
  | (KW_SUBS) => "subSample"
  | (KW_LINREG) => "linearRegression"
  | (TUPLE(_)) => "TUPLE"
  | (VOID) => "void"
  | (KW_GETI) => "getInt"
  | (KW_TOFLOAT) => "toFloat"
  | (KW_TOINT) => "toInt"
  | (CONCAT) => "++"
  | (EOF) => "EOF"
(* end case *))
    fun isKW tok =
(case (tok)
 of (KW_let) => false
  | (KW_in) => false
  | (KW_title) => true
  | (SSTRING(_)) => false
  | (ID(_)) => false
  | (NUM(_)) => false
  | (REAL(_)) => false
  | (SINT(_)) => false
  | (EQ) => false
  | (PLUS) => false
  | (DOT) => false
  | (EEQ) => false
  | (SFLOAT(_)) => false
  | (TIMES) => false
  | (DIV) => false
  | (MINUS) => false
  | (COMMA) => false
  | (SBOOL(_)) => false
  | (LP) => false
  | (RP) => false
  | (BOOL(_)) => false
  | (AND) => false
  | (OR) => false
  | (NOT) => false
  | (SPACE) => false
  | (GT) => false
  | (LT) => false
  | (LEQ) => false
  | (GEQ) => false
  | (NEQ) => false
  | (KW_variables) => true
  | (SEMI) => false
  | (TIPO(_)) => false
  | (DOTDOT) => false
  | (KW_comands) => true
  | (STR(_)) => false
  | (KW_Print) => false
  | (KW_endvars) => true
  | (KW_terminate) => true
  | (KW_SUM) => true
  | (KW_PROD) => true
  | (EMPTY) => false
  | (KW_GETS) => true
  | (KW_IF) => true
  | (KW_THEN) => true
  | (KW_ELSE) => true
  | (KW_WHILE) => true
  | (KW_DO) => true
  | (KW_END) => true
  | (KW_TOSTRING) => true
  | (KW_MEAN) => true
  | (KW_CORR) => true
  | (KW_MEDIAN) => true
  | (KW_STDEV) => true
  | (KW_VAR) => true
  | (KW_RT) => true
  | (KW_POW) => true
  | (KW_GETF) => true
  | (KW_COV) => true
  | (KW_SUBS) => true
  | (KW_LINREG) => true
  | (TUPLE(_)) => false
  | (VOID) => false
  | (KW_GETI) => true
  | (KW_TOFLOAT) => true
  | (KW_TOINT) => true
  | (CONCAT) => false
  | (EOF) => false
(* end case *))
    fun isEOF EOF = true
      | isEOF _ = false
  end (* DarwinTokens *)

functor DarwinParseFn (Lex : ANTLR_LEXER) = struct

  local
    structure Tok =
DarwinTokens
    structure UserCode =
      struct

    open ParseTree

    fun insere(hm,n,"int") = AtomMap.insert(hm, n, Grammar.Primitivo(Grammar.Int_ 0))
      | insere(hm,n,"string") = AtomMap.insert(hm, n, Grammar.Primitivo(Grammar.String_ ""))
      | insere(hm,n,"float") = AtomMap.insert(hm, n, Grammar.Primitivo(Grammar.Float_ 0.0))
      | insere(hm,n,"boolean") = AtomMap.insert(hm, n, Grammar.Primitivo(Grammar.Boolean_ false))
      | insere(hm,n,_) = AtomMap.insert(hm, n, Grammar.Void)

    fun getInt x = (Grammar.extractInt x)
    fun getFloat x = (Grammar.extractFloat x)
    fun getString x = (Grammar.extractString x)
    fun getBool x = (Grammar.extractBool x)
    fun getList x = (Grammar.extractList x)

    fun exprTypes e1 e2 = (Grammar.typeof e1) = (Grammar.typeof e2)
    fun isType e1 t = (Grammar.typeof e1) = t

    fun getVar v = AtomMap.appi (fn (k,w) => print (
        let val _ = print(Atom.toString k)
            val _ = print (Grammar.show w)
        in
            ""
        end)) v

fun program_PROD_1_ACT (d, STR, commands, SEMI, KW_title, KW_variables, variables, KW_comands, STR_SPAN : (Lex.pos * Lex.pos), commands_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), KW_title_SPAN : (Lex.pos * Lex.pos), KW_variables_SPAN : (Lex.pos * Lex.pos), variables_SPAN : (Lex.pos * Lex.pos), KW_comands_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ()
fun commands_PROD_1_ACT (SR, SEMI, principal, atree, prints, SR_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), prints_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (prints)
fun commands_PROD_2_ACT (SR, SEMI, principal, assign, atree, SR_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), assign_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (assign)
fun commands_PROD_3_ACT (SR, conditional, principal, atree, SR_SPAN : (Lex.pos * Lex.pos), conditional_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (conditional)
fun assign_PROD_1_ACT (ID, expr, DOTDOT, ID_SPAN : (Lex.pos * Lex.pos), expr_SPAN : (Lex.pos * Lex.pos), DOTDOT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (let
                                fun k w = Grammar.updateHt(w,Atom.atom ID,expr)
                                val assi = (!tree) @ ([ParseTree.Assign(fn(w)=> k(w))])
                            in
                                v := k(!v);
                                tree:= assi;
                                assi
                            end)
fun expr_PROD_1_ACT (exp_arit, exp_arit_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (exp_arit)
fun expr_PROD_2_ACT (exp_bool, exp_bool_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (exp_bool)
fun expr_PROD_3_ACT (exp_string, exp_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.String_ exp_string))
fun expr_PROD_4_ACT (funcs_float, funcs_float_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.Float_ funcs_float))
fun expr_PROD_5_ACT (funcs_int, funcs_int_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.Int_ funcs_int))
fun expr_PROD_6_ACT (funcs_string, funcs_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.String_ funcs_string))
fun expr_PROD_7_ACT (funcs_list, funcs_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (funcs_list)
fun expr_PROD_8_ACT (val_list, val_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (val_list)
fun val_list_PROD_1_ACT (SINT, SINT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.Sample (List.map (fn(x) => Grammar.Primitivo(Grammar.Int_ x)) SINT) )
fun val_list_PROD_2_ACT (SFLOAT, SFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.Sample (List.map (fn(x) => Grammar.Primitivo(Grammar.Float_ x)) SFLOAT) )
fun val_list_PROD_3_ACT (SBOOL, SBOOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.Sample (List.map (fn(x) => Grammar.Primitivo(Grammar.Boolean_ x)) SBOOL) )
fun val_list_PROD_4_ACT (SSTRING, SSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.Sample (List.map (fn(x) => Grammar.Primitivo(Grammar.String_ x)) SSTRING) )
fun val_list_PROD_5_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (valOf(AtomMap.find (!v, Atom.atom ID)))
fun prints_PROD_1_ACT (LP, RP, KW_Print, auxtree, principal, exp_string, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_Print_SPAN : (Lex.pos * Lex.pos), exp_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (
            let
                val _ = if principal then
                    (tree := (!tree) @ [(ParseTree.Print(exp_string))]) else ()
            in
                ps := exp_string::(!ps);
                auxtree @ [(ParseTree.Print(exp_string))]
            end
     )
fun funcs_string_PROD_1_ACT (LP, RP, expr, KW_TOSTRING, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), expr_SPAN : (Lex.pos * Lex.pos), KW_TOSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.show expr)
fun funcs_string_PROD_2_ACT (LP, RP, KW_LINREG, COMMA, float_list1, float_list2, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_LINREG_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.linearRegression(float_list1,float_list2))
fun funcs_string_PROD_3_ACT (LP, RP, exp_arit, KW_GETS, COMMA, string_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETS_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), string_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.nth(string_list,getInt exp_arit))
fun funcs_int_PROD_1_ACT (LP, RP, exp_arit, KW_GETI, COMMA, int_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETI_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), int_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.nth(int_list,getInt exp_arit))
fun funcs_int_PROD_2_ACT (LP, RP, KW_TOINT, exp_arit, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_TOINT_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Real.round(getFloat exp_arit))
fun funcs_float_PROD_1_ACT (LP, RP, EMPTY, KW_SUM, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), EMPTY_SPAN : (Lex.pos * Lex.pos), KW_SUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( 0.0)
fun funcs_float_PROD_2_ACT (LP, RP, float_list, KW_SUM, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), KW_SUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.foldl op+ 0.0 float_list)
fun funcs_float_PROD_3_ACT (LP, RP, KW_PROD, EMPTY, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_PROD_SPAN : (Lex.pos * Lex.pos), EMPTY_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (0.0)
fun funcs_float_PROD_4_ACT (LP, RP, KW_PROD, float_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_PROD_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.foldl op* 1.0 float_list)
fun funcs_float_PROD_5_ACT (LP, RP, KW_MEAN, float_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_MEAN_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.mean float_list)
fun funcs_float_PROD_6_ACT (LP, RP, KW_CORR, COMMA, float_list1, float_list2, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_CORR_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.correlation(float_list1, float_list2))
fun funcs_float_PROD_7_ACT (LP, RP, KW_STDEV, float_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_STDEV_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.standardDeviation(float_list))
fun funcs_float_PROD_8_ACT (LP, RP, KW_MEDIAN, float_list, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_MEDIAN_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.median(float_list))
fun funcs_float_PROD_9_ACT (LP, RP, float_list, KW_VAR, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), KW_VAR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.variance(float_list))
fun funcs_float_PROD_10_ACT (LP, RP, COMMA, float_list1, float_list2, KW_COV, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), KW_COV_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Statistics.covariance(float_list1, float_list2))
fun funcs_float_PROD_11_ACT (LP, RP, exp_arit, KW_GETF, float_list, COMMA, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETF_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.nth(float_list,getInt exp_arit))
fun funcs_float_PROD_12_ACT (LP, RP, exp_arit, KW_TOFLOAT, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_TOFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (valOf (Real.fromString((Int.toString (getInt exp_arit))^".0")))
fun funcs_list_PROD_1_ACT (LP, RP, exp_arit1, exp_arit2, KW_SUBS, val_list, COMMA1, COMMA2, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit1_SPAN : (Lex.pos * Lex.pos), exp_arit2_SPAN : (Lex.pos * Lex.pos), KW_SUBS_SPAN : (Lex.pos * Lex.pos), val_list_SPAN : (Lex.pos * Lex.pos), COMMA1_SPAN : (Lex.pos * Lex.pos), COMMA2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Sample (List.take((List.drop(getList val_list,getInt(exp_arit2))),getInt(exp_arit1))))
fun float_list_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.map getFloat (getList (valOf(AtomMap.find (!v, Atom.atom ID)))))
fun float_list_PROD_2_ACT (SFLOAT, SFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (SFLOAT)
fun string_list_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.map getString (getList (valOf(AtomMap.find (!v, Atom.atom ID)))))
fun string_list_PROD_2_ACT (SSTRING, SSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (SSTRING)
fun int_list_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (List.map getInt (getList (valOf(AtomMap.find (!v, Atom.atom ID)))))
fun int_list_PROD_2_ACT (SINT, SINT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (SINT)
fun exp_bool_PROD_1_ACT (rel_op, addExp1, addExp2, rel_op_SPAN : (Lex.pos * Lex.pos), addExp1_SPAN : (Lex.pos * Lex.pos), addExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.oper(rel_op,addExp1,addExp2))
fun op_bool_PROD_1_ACT (AND, atom_bool1, atom_bool2, AND_SPAN : (Lex.pos * Lex.pos), atom_bool1_SPAN : (Lex.pos * Lex.pos), atom_bool2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ((Grammar.Primitivo(Grammar.Boolean_((getBool atom_bool1) andalso (getBool atom_bool2)))))
fun op_bool_PROD_2_ACT (OR, atom_bool1, atom_bool2, OR_SPAN : (Lex.pos * Lex.pos), atom_bool1_SPAN : (Lex.pos * Lex.pos), atom_bool2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ((Grammar.Primitivo(Grammar.Boolean_((getBool atom_bool1) orelse (getBool atom_bool2)))))
fun op_str_PROD_1_ACT (atom_string1, atom_string2, CONCAT, atom_string1_SPAN : (Lex.pos * Lex.pos), atom_string2_SPAN : (Lex.pos * Lex.pos), CONCAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ("\""^ String.implode((List.filter (fn(x) => not(x = #"\"")) (String.explode(atom_string1 ^ atom_string2)))) ^ "\"")
fun atom_string_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (getString(valOf(AtomMap.find (!v, Atom.atom ID))) )
fun atom_string_PROD_2_ACT (STR, STR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (STR)
fun atom_string_PROD_3_ACT (funcs_string, funcs_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (funcs_string)
fun rel_op_PROD_1_ACT (EEQ, EEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ("==")
fun rel_op_PROD_2_ACT (NEQ, NEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ("!=")
fun rel_op_PROD_3_ACT (GEQ, GEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (">=")
fun rel_op_PROD_4_ACT (LEQ, LEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ("<=")
fun rel_op_PROD_5_ACT (LT, LT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ("<")
fun rel_op_PROD_6_ACT (GT, GT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (">")
fun atom_bool_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (valOf(AtomMap.find (!v, Atom.atom ID)))
fun atom_bool_PROD_2_ACT (BOOL, BOOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.Primitivo (Grammar.Boolean_ BOOL))
fun loop_PROD_1_ACT (commands, KW_WHILE, exp_bool, KW_DO, KW_END, commands_SPAN : (Lex.pos * Lex.pos), KW_WHILE_SPAN : (Lex.pos * Lex.pos), exp_bool_SPAN : (Lex.pos * Lex.pos), KW_DO_SPAN : (Lex.pos * Lex.pos), KW_END_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ()
fun conditional_PROD_1_ACT (exp_bool, KW_ELSE, KW_THEN, commands1, commands2, KW_IF, KW_END, exp_bool_SPAN : (Lex.pos * Lex.pos), KW_ELSE_SPAN : (Lex.pos * Lex.pos), KW_THEN_SPAN : (Lex.pos * Lex.pos), commands1_SPAN : (Lex.pos * Lex.pos), commands2_SPAN : (Lex.pos * Lex.pos), KW_IF_SPAN : (Lex.pos * Lex.pos), KW_END_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (
        let
            val ifi = (!tree) @ [ParseTree.If((getBool exp_bool),commands1,commands2)]
        in
            tree := ifi;
            ifi
        end
      )
fun addExp_PROD_1_ACT (PLUS, multExp1, multExp2, PLUS_SPAN : (Lex.pos * Lex.pos), multExp1_SPAN : (Lex.pos * Lex.pos), multExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.oper("+",multExp1,multExp2))
fun addExp_PROD_2_ACT (multExp1, multExp2, MINUS, multExp1_SPAN : (Lex.pos * Lex.pos), multExp2_SPAN : (Lex.pos * Lex.pos), MINUS_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.oper("-",multExp1,multExp2))
fun multExp_PROD_1_ACT (DIV, powExp1, powExp2, DIV_SPAN : (Lex.pos * Lex.pos), powExp1_SPAN : (Lex.pos * Lex.pos), powExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.oper("/",powExp1,powExp2) )
fun multExp_PROD_2_ACT (TIMES, powExp1, powExp2, TIMES_SPAN : (Lex.pos * Lex.pos), powExp1_SPAN : (Lex.pos * Lex.pos), powExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.oper("*",powExp1,powExp2) )
fun powExp_PROD_1_ACT (LP, RP, COMMA, prefixExp1, prefixExp2, KW_POW, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), prefixExp1_SPAN : (Lex.pos * Lex.pos), prefixExp2_SPAN : (Lex.pos * Lex.pos), KW_POW_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.oper("pow",prefixExp1,prefixExp2))
fun powExp_PROD_2_ACT (LP, RP, COMMA, KW_RT, prefixExp1, prefixExp2, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), KW_RT_SPAN : (Lex.pos * Lex.pos), prefixExp1_SPAN : (Lex.pos * Lex.pos), prefixExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.oper("rt",prefixExp1,prefixExp2))
fun prefixExp_PROD_2_ACT (MINUS, prefixExp, MINUS_SPAN : (Lex.pos * Lex.pos), prefixExp_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ( Grammar.oper("neg",prefixExp,prefixExp) )
fun atomicExp_PROD_1_ACT (ID, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (valOf(AtomMap.find (!v, Atom.atom ID)))
fun atomicExp_PROD_2_ACT (NUM, NUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.Int_ NUM))
fun atomicExp_PROD_3_ACT (REAL, REAL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (Grammar.Primitivo (Grammar.Float_ REAL))
fun variables_PROD_1_ACT (SR, KW_endvars, SR_SPAN : (Lex.pos * Lex.pos), KW_endvars_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  ((fn(_) => ()) SR)
fun declaration_PROD_1_ACT (ID, SEMI, TIPO, ID_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), TIPO_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps, v, ts, tree) = 
  (v:=insere(!v,Atom.atom ID,Atom.toString(Atom.atom TIPO));
                       ts:=AtomMap.insert(!ts,Atom.atom ID,TIPO))
fun assign_PROD_1_PRED (ID, expr, DOTDOT, ps, v, ts, tree) = 
  (AtomMap.inDomain(!v,Atom.atom ID)
                        andalso (isType expr (valOf (AtomMap.find (!ts, Atom.atom ID)))))
fun funcs_string_PROD_3_PRED (LP, RP, exp_arit, KW_GETS, COMMA, string_list, ps, v, ts, tree) = 
  (isType exp_arit "int")
fun funcs_int_PROD_1_PRED (LP, RP, exp_arit, KW_GETI, COMMA, int_list, ps, v, ts, tree) = 
  (isType exp_arit "int")
fun funcs_int_PROD_2_PRED (LP, RP, KW_TOINT, exp_arit, ps, v, ts, tree) = 
  (isType exp_arit "float")
fun funcs_float_PROD_11_PRED (LP, RP, exp_arit, KW_GETF, float_list, COMMA, ps, v, ts, tree) = 
  (isType exp_arit "int")
fun funcs_float_PROD_12_PRED (LP, RP, exp_arit, KW_TOFLOAT, ps, v, ts, tree) = 
  (isType exp_arit "int")
fun funcs_list_PROD_1_PRED (LP, RP, exp_arit1, exp_arit2, KW_SUBS, val_list, COMMA1, COMMA2, ps, v, ts, tree) = 
  ((isType exp_arit1 "int") andalso (isType exp_arit2 "int"))
fun exp_bool_PROD_1_PRED (rel_op, addExp1, addExp2, ps, v, ts, tree) = 
  (exprTypes addExp1 addExp2)
fun op_bool_PROD_1_PRED (AND, atom_bool1, atom_bool2, ps, v, ts, tree) = 
  (exprTypes atom_bool1 atom_bool2)
fun op_bool_PROD_2_PRED (OR, atom_bool1, atom_bool2, ps, v, ts, tree) = 
  (exprTypes atom_bool1 atom_bool2)
fun atom_string_PROD_1_PRED (ID, ps, v, ts, tree) = 
  (
        AtomMap.inDomain(!v,Atom.atom ID) andalso (isType (valOf(AtomMap.find (!v, Atom.atom ID))) "string")
     )
fun addExp_PROD_1_PRED (PLUS, multExp1, multExp2, ps, v, ts, tree) = 
  (exprTypes multExp1 multExp2)
fun addExp_PROD_2_PRED (multExp1, multExp2, MINUS, ps, v, ts, tree) = 
  (exprTypes multExp1 multExp2)
fun multExp_PROD_1_PRED (DIV, powExp1, powExp2, ps, v, ts, tree) = 
  ((isType powExp1 "float") andalso (isType powExp2 "float") andalso (exprTypes powExp1 powExp2))
fun multExp_PROD_2_PRED (TIMES, powExp1, powExp2, ps, v, ts, tree) = 
  (exprTypes powExp1 powExp2)
fun powExp_PROD_1_PRED (LP, RP, COMMA, prefixExp1, prefixExp2, KW_POW, ps, v, ts, tree) = 
  ((isType prefixExp1 "float") andalso (isType prefixExp2 "float"))
fun powExp_PROD_2_PRED (LP, RP, COMMA, KW_RT, prefixExp1, prefixExp2, ps, v, ts, tree) = 
  ((isType prefixExp1 "float") andalso (isType prefixExp2 "float"))
fun ARGS_8 (d, STR, SEMI, KW_title, KW_variables, variables, KW_comands, ps, v, ts, tree) = 
  (!tree,true)
fun ARGS_11 (SEMI, principal, atree, prints, ps, v, ts, tree) = 
  (atree,principal)
fun ARGS_10 (principal, atree, ps, v, ts, tree) = 
  (atree,principal)
fun ARGS_13 (SEMI, principal, assign, atree, ps, v, ts, tree) = 
  (atree,principal)
fun ARGS_15 (conditional, principal, atree, ps, v, ts, tree) = 
  (atree,principal)
fun ARGS_83 (exp_bool, KW_THEN, KW_IF, ps, v, ts, tree) = 
  (nil,false)
fun ARGS_84 (exp_bool, KW_ELSE, KW_THEN, commands1, KW_IF, ps, v, ts, tree) = 
  (nil,false)
fun mkps_REFC() : (string list) ref = ref (nil)
fun mkv_REFC() : ((Grammar.tipo) AtomMap.map) ref = ref (AtomMap.empty)
fun mkts_REFC() : (string AtomMap.map) ref = ref (AtomMap.empty)
fun mktree_REFC() : (ParseTree.RoseTree) ref = ref (nil)
      end (* UserCode *)

    structure Err = AntlrErrHandler(
      structure Tok = Tok
      structure Lex = Lex)

(* replace functor with inline structure for better optimization
    structure EBNF = AntlrEBNF(
      struct
	type strm = Err.wstream
	val getSpan = Err.getSpan
      end)
*)
    structure EBNF =
      struct
	fun optional (pred, parse, strm) =
	      if pred strm
		then let
		  val (y, span, strm') = parse strm
		  in
		    (SOME y, span, strm')
		  end
		else (NONE, Err.getSpan strm, strm)

	fun closure (pred, parse, strm) = let
	      fun iter (strm, (left, right), ys) =
		    if pred strm
		      then let
			val (y, (_, right'), strm') = parse strm
			in iter (strm', (left, right'), y::ys)
			end
		      else (List.rev ys, (left, right), strm)
	      in
		iter (strm, Err.getSpan strm, [])
	      end

	fun posclos (pred, parse, strm) = let
	      val (y, (left, _), strm') = parse strm
	      val (ys, (_, right), strm'') = closure (pred, parse, strm')
	      in
		(y::ys, (left, right), strm'')
	      end
      end

    fun mk lexFn = let
val ps_REFC = UserCode.mkps_REFC()
val v_REFC = UserCode.mkv_REFC()
val ts_REFC = UserCode.mkts_REFC()
val tree_REFC = UserCode.mktree_REFC()
fun getS() = {ps = !ps_REFC, v = !v_REFC, ts = !ts_REFC, tree = !tree_REFC}
fun putS{ps, v, ts, tree} = (ps_REFC := ps; v_REFC := v; ts_REFC := ts; tree_REFC := tree)
fun unwrap (ret, strm, repairs) = (ret, strm, repairs, getS())
        val (eh, lex) = Err.mkErrHandler {get = getS, put = putS}
	fun fail() = Err.failure eh
	fun tryProds (strm, prods) = let
	  fun try [] = fail()
	    | try (prod :: prods) =
	        (Err.whileDisabled eh (fn() => prod strm))
		handle Err.ParseError => try (prods)
          in try prods end
fun matchKW_let strm = (case (lex(strm))
 of (Tok.KW_let, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_in strm = (case (lex(strm))
 of (Tok.KW_in, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_title strm = (case (lex(strm))
 of (Tok.KW_title, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSSTRING strm = (case (lex(strm))
 of (Tok.SSTRING(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchID strm = (case (lex(strm))
 of (Tok.ID(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchNUM strm = (case (lex(strm))
 of (Tok.NUM(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchREAL strm = (case (lex(strm))
 of (Tok.REAL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchSINT strm = (case (lex(strm))
 of (Tok.SINT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchEQ strm = (case (lex(strm))
 of (Tok.EQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchPLUS strm = (case (lex(strm))
 of (Tok.PLUS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchDOT strm = (case (lex(strm))
 of (Tok.DOT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchEEQ strm = (case (lex(strm))
 of (Tok.EEQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSFLOAT strm = (case (lex(strm))
 of (Tok.SFLOAT(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchTIMES strm = (case (lex(strm))
 of (Tok.TIMES, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchDIV strm = (case (lex(strm))
 of (Tok.DIV, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchMINUS strm = (case (lex(strm))
 of (Tok.MINUS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchCOMMA strm = (case (lex(strm))
 of (Tok.COMMA, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSBOOL strm = (case (lex(strm))
 of (Tok.SBOOL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchLP strm = (case (lex(strm))
 of (Tok.LP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchRP strm = (case (lex(strm))
 of (Tok.RP, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchBOOL strm = (case (lex(strm))
 of (Tok.BOOL(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchAND strm = (case (lex(strm))
 of (Tok.AND, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchOR strm = (case (lex(strm))
 of (Tok.OR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchNOT strm = (case (lex(strm))
 of (Tok.NOT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSPACE strm = (case (lex(strm))
 of (Tok.SPACE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchGT strm = (case (lex(strm))
 of (Tok.GT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchLT strm = (case (lex(strm))
 of (Tok.LT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchLEQ strm = (case (lex(strm))
 of (Tok.LEQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchGEQ strm = (case (lex(strm))
 of (Tok.GEQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchNEQ strm = (case (lex(strm))
 of (Tok.NEQ, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_variables strm = (case (lex(strm))
 of (Tok.KW_variables, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSEMI strm = (case (lex(strm))
 of (Tok.SEMI, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchTIPO strm = (case (lex(strm))
 of (Tok.TIPO(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchDOTDOT strm = (case (lex(strm))
 of (Tok.DOTDOT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_comands strm = (case (lex(strm))
 of (Tok.KW_comands, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchSTR strm = (case (lex(strm))
 of (Tok.STR(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchKW_Print strm = (case (lex(strm))
 of (Tok.KW_Print, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_endvars strm = (case (lex(strm))
 of (Tok.KW_endvars, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_terminate strm = (case (lex(strm))
 of (Tok.KW_terminate, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_SUM strm = (case (lex(strm))
 of (Tok.KW_SUM, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_PROD strm = (case (lex(strm))
 of (Tok.KW_PROD, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchEMPTY strm = (case (lex(strm))
 of (Tok.EMPTY, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_GETS strm = (case (lex(strm))
 of (Tok.KW_GETS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_IF strm = (case (lex(strm))
 of (Tok.KW_IF, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_THEN strm = (case (lex(strm))
 of (Tok.KW_THEN, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_ELSE strm = (case (lex(strm))
 of (Tok.KW_ELSE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_WHILE strm = (case (lex(strm))
 of (Tok.KW_WHILE, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_DO strm = (case (lex(strm))
 of (Tok.KW_DO, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_END strm = (case (lex(strm))
 of (Tok.KW_END, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_TOSTRING strm = (case (lex(strm))
 of (Tok.KW_TOSTRING, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_MEAN strm = (case (lex(strm))
 of (Tok.KW_MEAN, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_CORR strm = (case (lex(strm))
 of (Tok.KW_CORR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_MEDIAN strm = (case (lex(strm))
 of (Tok.KW_MEDIAN, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_STDEV strm = (case (lex(strm))
 of (Tok.KW_STDEV, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_VAR strm = (case (lex(strm))
 of (Tok.KW_VAR, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_RT strm = (case (lex(strm))
 of (Tok.KW_RT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_POW strm = (case (lex(strm))
 of (Tok.KW_POW, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_GETF strm = (case (lex(strm))
 of (Tok.KW_GETF, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_COV strm = (case (lex(strm))
 of (Tok.KW_COV, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_SUBS strm = (case (lex(strm))
 of (Tok.KW_SUBS, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_LINREG strm = (case (lex(strm))
 of (Tok.KW_LINREG, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchTUPLE strm = (case (lex(strm))
 of (Tok.TUPLE(x), span, strm') => (x, span, strm')
  | _ => fail()
(* end case *))
fun matchVOID strm = (case (lex(strm))
 of (Tok.VOID, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_GETI strm = (case (lex(strm))
 of (Tok.KW_GETI, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_TOFLOAT strm = (case (lex(strm))
 of (Tok.KW_TOFLOAT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchKW_TOINT strm = (case (lex(strm))
 of (Tok.KW_TOINT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchCONCAT strm = (case (lex(strm))
 of (Tok.CONCAT, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))
fun matchEOF strm = (case (lex(strm))
 of (Tok.EOF, span, strm') => ((), span, strm')
  | _ => fail()
(* end case *))

val (program_NT) = 
let
fun addExp_NT (strm) = let
      fun addExp_PROD_1 (strm) = let
            val (multExp1_RES, multExp1_SPAN, strm') = multExp_NT(strm)
            val (PLUS_RES, PLUS_SPAN, strm') = matchPLUS(strm')
            val (multExp2_RES, multExp2_SPAN, strm') = multExp_NT(strm')
            in
              if (UserCode.addExp_PROD_1_PRED (PLUS_RES, multExp1_RES, multExp2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(multExp1_SPAN), #2(multExp2_SPAN))
                  in
                    (UserCode.addExp_PROD_1_ACT (PLUS_RES, multExp1_RES, multExp2_RES, PLUS_SPAN : (Lex.pos * Lex.pos), multExp1_SPAN : (Lex.pos * Lex.pos), multExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun addExp_PROD_2 (strm) = let
            val (multExp1_RES, multExp1_SPAN, strm') = multExp_NT(strm)
            val (MINUS_RES, MINUS_SPAN, strm') = matchMINUS(strm')
            val (multExp2_RES, multExp2_SPAN, strm') = multExp_NT(strm')
            in
              if (UserCode.addExp_PROD_2_PRED (multExp1_RES, multExp2_RES, MINUS_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(multExp1_SPAN), #2(multExp2_SPAN))
                  in
                    (UserCode.addExp_PROD_2_ACT (multExp1_RES, multExp2_RES, MINUS_RES, multExp1_SPAN : (Lex.pos * Lex.pos), multExp2_SPAN : (Lex.pos * Lex.pos), MINUS_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun addExp_PROD_3 (strm) = let
            val (multExp_RES, multExp_SPAN, strm') = multExp_NT(strm)
            val FULL_SPAN = (#1(multExp_SPAN), #2(multExp_SPAN))
            in
              ((multExp_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | (Tok.NUM(_), _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | (Tok.REAL(_), _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | (Tok.KW_RT, _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | (Tok.KW_POW, _, strm') =>
              tryProds(strm, [addExp_PROD_1, addExp_PROD_2, addExp_PROD_3])
          | _ => fail()
        (* end case *))
      end
and multExp_NT (strm) = let
      fun multExp_PROD_1 (strm) = let
            val (powExp1_RES, powExp1_SPAN, strm') = powExp_NT(strm)
            val (DIV_RES, DIV_SPAN, strm') = matchDIV(strm')
            val (powExp2_RES, powExp2_SPAN, strm') = powExp_NT(strm')
            in
              if (UserCode.multExp_PROD_1_PRED (DIV_RES, powExp1_RES, powExp2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(powExp1_SPAN), #2(powExp2_SPAN))
                  in
                    (UserCode.multExp_PROD_1_ACT (DIV_RES, powExp1_RES, powExp2_RES, DIV_SPAN : (Lex.pos * Lex.pos), powExp1_SPAN : (Lex.pos * Lex.pos), powExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun multExp_PROD_2 (strm) = let
            val (powExp1_RES, powExp1_SPAN, strm') = powExp_NT(strm)
            val (TIMES_RES, TIMES_SPAN, strm') = matchTIMES(strm')
            val (powExp2_RES, powExp2_SPAN, strm') = powExp_NT(strm')
            in
              if (UserCode.multExp_PROD_2_PRED (TIMES_RES, powExp1_RES, powExp2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(powExp1_SPAN), #2(powExp2_SPAN))
                  in
                    (UserCode.multExp_PROD_2_ACT (TIMES_RES, powExp1_RES, powExp2_RES, TIMES_SPAN : (Lex.pos * Lex.pos), powExp1_SPAN : (Lex.pos * Lex.pos), powExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun multExp_PROD_3 (strm) = let
            val (powExp_RES, powExp_SPAN, strm') = powExp_NT(strm)
            val FULL_SPAN = (#1(powExp_SPAN), #2(powExp_SPAN))
            in
              ((powExp_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | (Tok.NUM(_), _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | (Tok.REAL(_), _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | (Tok.KW_RT, _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | (Tok.KW_POW, _, strm') =>
              tryProds(strm, [multExp_PROD_1, multExp_PROD_2, multExp_PROD_3])
          | _ => fail()
        (* end case *))
      end
and powExp_NT (strm) = let
      fun powExp_PROD_1 (strm) = let
            val (KW_POW_RES, KW_POW_SPAN, strm') = matchKW_POW(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (prefixExp1_RES, prefixExp1_SPAN, strm') = prefixExp_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (prefixExp2_RES, prefixExp2_SPAN, strm') = prefixExp_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.powExp_PROD_1_PRED (LP_RES, RP_RES, COMMA_RES, prefixExp1_RES, prefixExp2_RES, KW_POW_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_POW_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.powExp_PROD_1_ACT (LP_RES, RP_RES, COMMA_RES, prefixExp1_RES, prefixExp2_RES, KW_POW_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), prefixExp1_SPAN : (Lex.pos * Lex.pos), prefixExp2_SPAN : (Lex.pos * Lex.pos), KW_POW_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun powExp_PROD_2 (strm) = let
            val (KW_RT_RES, KW_RT_SPAN, strm') = matchKW_RT(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (prefixExp1_RES, prefixExp1_SPAN, strm') = prefixExp_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (prefixExp2_RES, prefixExp2_SPAN, strm') = prefixExp_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.powExp_PROD_2_PRED (LP_RES, RP_RES, COMMA_RES, KW_RT_RES, prefixExp1_RES, prefixExp2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_RT_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.powExp_PROD_2_ACT (LP_RES, RP_RES, COMMA_RES, KW_RT_RES, prefixExp1_RES, prefixExp2_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), KW_RT_SPAN : (Lex.pos * Lex.pos), prefixExp1_SPAN : (Lex.pos * Lex.pos), prefixExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun powExp_PROD_3 (strm) = let
            val (atomicExp_RES, atomicExp_SPAN, strm') = atomicExp_NT(strm)
            val FULL_SPAN = (#1(atomicExp_SPAN), #2(atomicExp_SPAN))
            in
              ((atomicExp_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') => powExp_PROD_3(strm)
          | (Tok.NUM(_), _, strm') => powExp_PROD_3(strm)
          | (Tok.REAL(_), _, strm') => powExp_PROD_3(strm)
          | (Tok.LP, _, strm') => powExp_PROD_3(strm)
          | (Tok.KW_POW, _, strm') => powExp_PROD_1(strm)
          | (Tok.KW_RT, _, strm') => powExp_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and atomicExp_NT (strm) = let
      fun atomicExp_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.atomicExp_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atomicExp_PROD_2 (strm) = let
            val (NUM_RES, NUM_SPAN, strm') = matchNUM(strm)
            val FULL_SPAN = (#1(NUM_SPAN), #2(NUM_SPAN))
            in
              (UserCode.atomicExp_PROD_2_ACT (NUM_RES, NUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atomicExp_PROD_3 (strm) = let
            val (REAL_RES, REAL_SPAN, strm') = matchREAL(strm)
            val FULL_SPAN = (#1(REAL_SPAN), #2(REAL_SPAN))
            in
              (UserCode.atomicExp_PROD_3_ACT (REAL_RES, REAL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atomicExp_PROD_4 (strm) = let
            val (LP_RES, LP_SPAN, strm') = matchLP(strm)
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(LP_SPAN), #2(RP_SPAN))
            in
              ((exp_arit_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.LP, _, strm') => atomicExp_PROD_4(strm)
          | (Tok.NUM(_), _, strm') => atomicExp_PROD_2(strm)
          | (Tok.ID(_), _, strm') => atomicExp_PROD_1(strm)
          | (Tok.REAL(_), _, strm') => atomicExp_PROD_3(strm)
          | _ => fail()
        (* end case *))
      end
and exp_arit_NT (strm) = let
      fun exp_arit_PROD_1 (strm) = let
            val (addExp_RES, addExp_SPAN, strm') = addExp_NT(strm)
            val FULL_SPAN = (#1(addExp_SPAN), #2(addExp_SPAN))
            in
              ((addExp_RES), FULL_SPAN, strm')
            end
      fun exp_arit_PROD_2 (strm) = let
            val (atomicExp_RES, atomicExp_SPAN, strm') = atomicExp_NT(strm)
            val FULL_SPAN = (#1(atomicExp_SPAN), #2(atomicExp_SPAN))
            in
              ((atomicExp_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') =>
              tryProds(strm, [exp_arit_PROD_1, exp_arit_PROD_2])
          | (Tok.NUM(_), _, strm') =>
              tryProds(strm, [exp_arit_PROD_1, exp_arit_PROD_2])
          | (Tok.REAL(_), _, strm') =>
              tryProds(strm, [exp_arit_PROD_1, exp_arit_PROD_2])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [exp_arit_PROD_1, exp_arit_PROD_2])
          | (Tok.KW_RT, _, strm') => exp_arit_PROD_1(strm)
          | (Tok.KW_POW, _, strm') => exp_arit_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
and prefixExp_NT (strm) = let
      fun prefixExp_PROD_1 (strm) = let
            val (atomicExp_RES, atomicExp_SPAN, strm') = atomicExp_NT(strm)
            val FULL_SPAN = (#1(atomicExp_SPAN), #2(atomicExp_SPAN))
            in
              ((atomicExp_RES), FULL_SPAN, strm')
            end
      fun prefixExp_PROD_2 (strm) = let
            val (MINUS_RES, MINUS_SPAN, strm') = matchMINUS(strm)
            val (prefixExp_RES, prefixExp_SPAN, strm') = prefixExp_NT(strm')
            val FULL_SPAN = (#1(MINUS_SPAN), #2(prefixExp_SPAN))
            in
              (UserCode.prefixExp_PROD_2_ACT (MINUS_RES, prefixExp_RES, MINUS_SPAN : (Lex.pos * Lex.pos), prefixExp_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.MINUS, _, strm') => prefixExp_PROD_2(strm)
          | (Tok.ID(_), _, strm') => prefixExp_PROD_1(strm)
          | (Tok.NUM(_), _, strm') => prefixExp_PROD_1(strm)
          | (Tok.REAL(_), _, strm') => prefixExp_PROD_1(strm)
          | (Tok.LP, _, strm') => prefixExp_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun rel_op_NT (strm) = let
      fun rel_op_PROD_1 (strm) = let
            val (EEQ_RES, EEQ_SPAN, strm') = matchEEQ(strm)
            val FULL_SPAN = (#1(EEQ_SPAN), #2(EEQ_SPAN))
            in
              (UserCode.rel_op_PROD_1_ACT (EEQ_RES, EEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun rel_op_PROD_2 (strm) = let
            val (NEQ_RES, NEQ_SPAN, strm') = matchNEQ(strm)
            val FULL_SPAN = (#1(NEQ_SPAN), #2(NEQ_SPAN))
            in
              (UserCode.rel_op_PROD_2_ACT (NEQ_RES, NEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun rel_op_PROD_3 (strm) = let
            val (GEQ_RES, GEQ_SPAN, strm') = matchGEQ(strm)
            val FULL_SPAN = (#1(GEQ_SPAN), #2(GEQ_SPAN))
            in
              (UserCode.rel_op_PROD_3_ACT (GEQ_RES, GEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun rel_op_PROD_4 (strm) = let
            val (LEQ_RES, LEQ_SPAN, strm') = matchLEQ(strm)
            val FULL_SPAN = (#1(LEQ_SPAN), #2(LEQ_SPAN))
            in
              (UserCode.rel_op_PROD_4_ACT (LEQ_RES, LEQ_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun rel_op_PROD_5 (strm) = let
            val (LT_RES, LT_SPAN, strm') = matchLT(strm)
            val FULL_SPAN = (#1(LT_SPAN), #2(LT_SPAN))
            in
              (UserCode.rel_op_PROD_5_ACT (LT_RES, LT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun rel_op_PROD_6 (strm) = let
            val (GT_RES, GT_SPAN, strm') = matchGT(strm)
            val FULL_SPAN = (#1(GT_SPAN), #2(GT_SPAN))
            in
              (UserCode.rel_op_PROD_6_ACT (GT_RES, GT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.GT, _, strm') => rel_op_PROD_6(strm)
          | (Tok.LEQ, _, strm') => rel_op_PROD_4(strm)
          | (Tok.NEQ, _, strm') => rel_op_PROD_2(strm)
          | (Tok.EEQ, _, strm') => rel_op_PROD_1(strm)
          | (Tok.GEQ, _, strm') => rel_op_PROD_3(strm)
          | (Tok.LT, _, strm') => rel_op_PROD_5(strm)
          | _ => fail()
        (* end case *))
      end
fun exp_bool_NT (strm) = let
      fun exp_bool_PROD_1 (strm) = let
            val (addExp1_RES, addExp1_SPAN, strm') = addExp_NT(strm)
            val (rel_op_RES, rel_op_SPAN, strm') = rel_op_NT(strm')
            val (addExp2_RES, addExp2_SPAN, strm') = addExp_NT(strm')
            in
              if (UserCode.exp_bool_PROD_1_PRED (rel_op_RES, addExp1_RES, addExp2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(addExp1_SPAN), #2(addExp2_SPAN))
                  in
                    (UserCode.exp_bool_PROD_1_ACT (rel_op_RES, addExp1_RES, addExp2_RES, rel_op_SPAN : (Lex.pos * Lex.pos), addExp1_SPAN : (Lex.pos * Lex.pos), addExp2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun exp_bool_PROD_2 (strm) = let
            val (op_bool_RES, op_bool_SPAN, strm') = op_bool_NT(strm)
            val FULL_SPAN = (#1(op_bool_SPAN), #2(op_bool_SPAN))
            in
              ((op_bool_RES), FULL_SPAN, strm')
            end
      fun exp_bool_PROD_3 (strm) = let
            val (atom_bool_RES, atom_bool_SPAN, strm') = atom_bool_NT(strm)
            val FULL_SPAN = (#1(atom_bool_SPAN), #2(atom_bool_SPAN))
            in
              ((atom_bool_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.NUM(_), _, strm') => exp_bool_PROD_1(strm)
          | (Tok.REAL(_), _, strm') => exp_bool_PROD_1(strm)
          | (Tok.KW_RT, _, strm') => exp_bool_PROD_1(strm)
          | (Tok.KW_POW, _, strm') => exp_bool_PROD_1(strm)
          | (Tok.ID(_), _, strm') =>
              tryProds(strm, [exp_bool_PROD_1, exp_bool_PROD_2,
                exp_bool_PROD_3])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [exp_bool_PROD_1, exp_bool_PROD_2,
                exp_bool_PROD_3])
          | (Tok.BOOL(_), _, strm') =>
              tryProds(strm, [exp_bool_PROD_2, exp_bool_PROD_3])
          | _ => fail()
        (* end case *))
      end
and atom_bool_NT (strm) = let
      fun atom_bool_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.atom_bool_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atom_bool_PROD_2 (strm) = let
            val (BOOL_RES, BOOL_SPAN, strm') = matchBOOL(strm)
            val FULL_SPAN = (#1(BOOL_SPAN), #2(BOOL_SPAN))
            in
              (UserCode.atom_bool_PROD_2_ACT (BOOL_RES, BOOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atom_bool_PROD_3 (strm) = let
            val (LP_RES, LP_SPAN, strm') = matchLP(strm)
            val (exp_bool_RES, exp_bool_SPAN, strm') = exp_bool_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(LP_SPAN), #2(RP_SPAN))
            in
              ((exp_bool_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.LP, _, strm') => atom_bool_PROD_3(strm)
          | (Tok.ID(_), _, strm') => atom_bool_PROD_1(strm)
          | (Tok.BOOL(_), _, strm') => atom_bool_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and op_bool_NT (strm) = let
      fun op_bool_PROD_1 (strm) = let
            val (atom_bool1_RES, atom_bool1_SPAN, strm') = atom_bool_NT(strm)
            val (AND_RES, AND_SPAN, strm') = matchAND(strm')
            val (atom_bool2_RES, atom_bool2_SPAN, strm') = atom_bool_NT(strm')
            in
              if (UserCode.op_bool_PROD_1_PRED (AND_RES, atom_bool1_RES, atom_bool2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(atom_bool1_SPAN), #2(atom_bool2_SPAN))
                  in
                    (UserCode.op_bool_PROD_1_ACT (AND_RES, atom_bool1_RES, atom_bool2_RES, AND_SPAN : (Lex.pos * Lex.pos), atom_bool1_SPAN : (Lex.pos * Lex.pos), atom_bool2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun op_bool_PROD_2 (strm) = let
            val (atom_bool1_RES, atom_bool1_SPAN, strm') = atom_bool_NT(strm)
            val (OR_RES, OR_SPAN, strm') = matchOR(strm')
            val (atom_bool2_RES, atom_bool2_SPAN, strm') = atom_bool_NT(strm')
            in
              if (UserCode.op_bool_PROD_2_PRED (OR_RES, atom_bool1_RES, atom_bool2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(atom_bool1_SPAN), #2(atom_bool2_SPAN))
                  in
                    (UserCode.op_bool_PROD_2_ACT (OR_RES, atom_bool1_RES, atom_bool2_RES, OR_SPAN : (Lex.pos * Lex.pos), atom_bool1_SPAN : (Lex.pos * Lex.pos), atom_bool2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') =>
              tryProds(strm, [op_bool_PROD_1, op_bool_PROD_2])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [op_bool_PROD_1, op_bool_PROD_2])
          | (Tok.BOOL(_), _, strm') =>
              tryProds(strm, [op_bool_PROD_1, op_bool_PROD_2])
          | _ => fail()
        (* end case *))
      end
fun val_list_NT (strm) = let
      fun val_list_PROD_1 (strm) = let
            val (SINT_RES, SINT_SPAN, strm') = matchSINT(strm)
            val FULL_SPAN = (#1(SINT_SPAN), #2(SINT_SPAN))
            in
              (UserCode.val_list_PROD_1_ACT (SINT_RES, SINT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun val_list_PROD_2 (strm) = let
            val (SFLOAT_RES, SFLOAT_SPAN, strm') = matchSFLOAT(strm)
            val FULL_SPAN = (#1(SFLOAT_SPAN), #2(SFLOAT_SPAN))
            in
              (UserCode.val_list_PROD_2_ACT (SFLOAT_RES, SFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun val_list_PROD_3 (strm) = let
            val (SBOOL_RES, SBOOL_SPAN, strm') = matchSBOOL(strm)
            val FULL_SPAN = (#1(SBOOL_SPAN), #2(SBOOL_SPAN))
            in
              (UserCode.val_list_PROD_3_ACT (SBOOL_RES, SBOOL_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun val_list_PROD_4 (strm) = let
            val (SSTRING_RES, SSTRING_SPAN, strm') = matchSSTRING(strm)
            val FULL_SPAN = (#1(SSTRING_SPAN), #2(SSTRING_SPAN))
            in
              (UserCode.val_list_PROD_4_ACT (SSTRING_RES, SSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun val_list_PROD_5 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.val_list_PROD_5_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') => val_list_PROD_5(strm)
          | (Tok.SBOOL(_), _, strm') => val_list_PROD_3(strm)
          | (Tok.SINT(_), _, strm') => val_list_PROD_1(strm)
          | (Tok.SFLOAT(_), _, strm') => val_list_PROD_2(strm)
          | (Tok.SSTRING(_), _, strm') => val_list_PROD_4(strm)
          | _ => fail()
        (* end case *))
      end
fun funcs_list_NT (strm) = let
      val (KW_SUBS_RES, KW_SUBS_SPAN, strm') = matchKW_SUBS(strm)
      val (LP_RES, LP_SPAN, strm') = matchLP(strm')
      val (val_list_RES, val_list_SPAN, strm') = val_list_NT(strm')
      val (COMMA1_RES, COMMA1_SPAN, strm') = matchCOMMA(strm')
      val (exp_arit1_RES, exp_arit1_SPAN, strm') = exp_arit_NT(strm')
      val (COMMA2_RES, COMMA2_SPAN, strm') = matchCOMMA(strm')
      val (exp_arit2_RES, exp_arit2_SPAN, strm') = exp_arit_NT(strm')
      val (RP_RES, RP_SPAN, strm') = matchRP(strm')
      in
        if (UserCode.funcs_list_PROD_1_PRED (LP_RES, RP_RES, exp_arit1_RES, exp_arit2_RES, KW_SUBS_RES, val_list_RES, COMMA1_RES, COMMA2_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
          then let
            val FULL_SPAN = (#1(KW_SUBS_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_list_PROD_1_ACT (LP_RES, RP_RES, exp_arit1_RES, exp_arit2_RES, KW_SUBS_RES, val_list_RES, COMMA1_RES, COMMA2_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit1_SPAN : (Lex.pos * Lex.pos), exp_arit2_SPAN : (Lex.pos * Lex.pos), KW_SUBS_SPAN : (Lex.pos * Lex.pos), val_list_SPAN : (Lex.pos * Lex.pos), COMMA1_SPAN : (Lex.pos * Lex.pos), COMMA2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
          else fail()
      end
fun string_list_NT (strm) = let
      fun string_list_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.string_list_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun string_list_PROD_2 (strm) = let
            val (SSTRING_RES, SSTRING_SPAN, strm') = matchSSTRING(strm)
            val FULL_SPAN = (#1(SSTRING_SPAN), #2(SSTRING_SPAN))
            in
              (UserCode.string_list_PROD_2_ACT (SSTRING_RES, SSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.SSTRING(_), _, strm') => string_list_PROD_2(strm)
          | (Tok.ID(_), _, strm') => string_list_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun float_list_NT (strm) = let
      fun float_list_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.float_list_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun float_list_PROD_2 (strm) = let
            val (SFLOAT_RES, SFLOAT_SPAN, strm') = matchSFLOAT(strm)
            val FULL_SPAN = (#1(SFLOAT_SPAN), #2(SFLOAT_SPAN))
            in
              (UserCode.float_list_PROD_2_ACT (SFLOAT_RES, SFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.SFLOAT(_), _, strm') => float_list_PROD_2(strm)
          | (Tok.ID(_), _, strm') => float_list_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun int_list_NT (strm) = let
      fun int_list_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
            in
              (UserCode.int_list_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun int_list_PROD_2 (strm) = let
            val (SINT_RES, SINT_SPAN, strm') = matchSINT(strm)
            val FULL_SPAN = (#1(SINT_SPAN), #2(SINT_SPAN))
            in
              (UserCode.int_list_PROD_2_ACT (SINT_RES, SINT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.SINT(_), _, strm') => int_list_PROD_2(strm)
          | (Tok.ID(_), _, strm') => int_list_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun funcs_int_NT (strm) = let
      fun funcs_int_PROD_1 (strm) = let
            val (KW_GETI_RES, KW_GETI_SPAN, strm') = matchKW_GETI(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (int_list_RES, int_list_SPAN, strm') = int_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.funcs_int_PROD_1_PRED (LP_RES, RP_RES, exp_arit_RES, KW_GETI_RES, COMMA_RES, int_list_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_GETI_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.funcs_int_PROD_1_ACT (LP_RES, RP_RES, exp_arit_RES, KW_GETI_RES, COMMA_RES, int_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETI_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), int_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun funcs_int_PROD_2 (strm) = let
            val (KW_TOINT_RES, KW_TOINT_SPAN, strm') = matchKW_TOINT(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.funcs_int_PROD_2_PRED (LP_RES, RP_RES, KW_TOINT_RES, exp_arit_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_TOINT_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.funcs_int_PROD_2_ACT (LP_RES, RP_RES, KW_TOINT_RES, exp_arit_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_TOINT_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      in
        (case (lex(strm))
         of (Tok.KW_TOINT, _, strm') => funcs_int_PROD_2(strm)
          | (Tok.KW_GETI, _, strm') => funcs_int_PROD_1(strm)
          | _ => fail()
        (* end case *))
      end
fun funcs_float_NT (strm) = let
      fun funcs_float_PROD_1 (strm) = let
            val (KW_SUM_RES, KW_SUM_SPAN, strm') = matchKW_SUM(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (EMPTY_RES, EMPTY_SPAN, strm') = matchEMPTY(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_SUM_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_1_ACT (LP_RES, RP_RES, EMPTY_RES, KW_SUM_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), EMPTY_SPAN : (Lex.pos * Lex.pos), KW_SUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_2 (strm) = let
            val (KW_SUM_RES, KW_SUM_SPAN, strm') = matchKW_SUM(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_SUM_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_2_ACT (LP_RES, RP_RES, float_list_RES, KW_SUM_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), KW_SUM_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_3 (strm) = let
            val (KW_PROD_RES, KW_PROD_SPAN, strm') = matchKW_PROD(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (EMPTY_RES, EMPTY_SPAN, strm') = matchEMPTY(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_PROD_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_3_ACT (LP_RES, RP_RES, KW_PROD_RES, EMPTY_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_PROD_SPAN : (Lex.pos * Lex.pos), EMPTY_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_4 (strm) = let
            val (KW_PROD_RES, KW_PROD_SPAN, strm') = matchKW_PROD(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_PROD_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_4_ACT (LP_RES, RP_RES, KW_PROD_RES, float_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_PROD_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_5 (strm) = let
            val (KW_MEAN_RES, KW_MEAN_SPAN, strm') = matchKW_MEAN(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_MEAN_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_5_ACT (LP_RES, RP_RES, KW_MEAN_RES, float_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_MEAN_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_6 (strm) = let
            val (KW_CORR_RES, KW_CORR_SPAN, strm') = matchKW_CORR(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list1_RES, float_list1_SPAN, strm') = float_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (float_list2_RES, float_list2_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_CORR_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_6_ACT (LP_RES, RP_RES, KW_CORR_RES, COMMA_RES, float_list1_RES, float_list2_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_CORR_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_7 (strm) = let
            val (KW_STDEV_RES, KW_STDEV_SPAN, strm') = matchKW_STDEV(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_STDEV_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_7_ACT (LP_RES, RP_RES, KW_STDEV_RES, float_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_STDEV_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_8 (strm) = let
            val (KW_MEDIAN_RES, KW_MEDIAN_SPAN, strm') = matchKW_MEDIAN(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_MEDIAN_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_8_ACT (LP_RES, RP_RES, KW_MEDIAN_RES, float_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_MEDIAN_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_9 (strm) = let
            val (KW_VAR_RES, KW_VAR_SPAN, strm') = matchKW_VAR(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_VAR_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_9_ACT (LP_RES, RP_RES, float_list_RES, KW_VAR_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), KW_VAR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_10 (strm) = let
            val (KW_COV_RES, KW_COV_SPAN, strm') = matchKW_COV(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list1_RES, float_list1_SPAN, strm') = float_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (float_list2_RES, float_list2_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_COV_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_float_PROD_10_ACT (LP_RES, RP_RES, COMMA_RES, float_list1_RES, float_list2_RES, KW_COV_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), KW_COV_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_float_PROD_11 (strm) = let
            val (KW_GETF_RES, KW_GETF_SPAN, strm') = matchKW_GETF(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list_RES, float_list_SPAN, strm') = float_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.funcs_float_PROD_11_PRED (LP_RES, RP_RES, exp_arit_RES, KW_GETF_RES, float_list_RES, COMMA_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_GETF_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.funcs_float_PROD_11_ACT (LP_RES, RP_RES, exp_arit_RES, KW_GETF_RES, float_list_RES, COMMA_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETF_SPAN : (Lex.pos * Lex.pos), float_list_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun funcs_float_PROD_12 (strm) = let
            val (KW_TOFLOAT_RES, KW_TOFLOAT_SPAN, strm') = matchKW_TOFLOAT(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.funcs_float_PROD_12_PRED (LP_RES, RP_RES, exp_arit_RES, KW_TOFLOAT_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_TOFLOAT_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.funcs_float_PROD_12_ACT (LP_RES, RP_RES, exp_arit_RES, KW_TOFLOAT_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_TOFLOAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      in
        (case (lex(strm))
         of (Tok.KW_TOFLOAT, _, strm') => funcs_float_PROD_12(strm)
          | (Tok.KW_COV, _, strm') => funcs_float_PROD_10(strm)
          | (Tok.KW_MEDIAN, _, strm') => funcs_float_PROD_8(strm)
          | (Tok.KW_CORR, _, strm') => funcs_float_PROD_6(strm)
          | (Tok.KW_SUM, _, strm') =>
              (case (lex(strm'))
               of (Tok.LP, _, strm') =>
                    (case (lex(strm'))
                     of (Tok.ID(_), _, strm') => funcs_float_PROD_2(strm)
                      | (Tok.SFLOAT(_), _, strm') => funcs_float_PROD_2(strm)
                      | (Tok.EMPTY, _, strm') => funcs_float_PROD_1(strm)
                      | _ => fail()
                    (* end case *))
                | _ => fail()
              (* end case *))
          | (Tok.KW_PROD, _, strm') =>
              (case (lex(strm'))
               of (Tok.LP, _, strm') =>
                    (case (lex(strm'))
                     of (Tok.ID(_), _, strm') => funcs_float_PROD_4(strm)
                      | (Tok.SFLOAT(_), _, strm') => funcs_float_PROD_4(strm)
                      | (Tok.EMPTY, _, strm') => funcs_float_PROD_3(strm)
                      | _ => fail()
                    (* end case *))
                | _ => fail()
              (* end case *))
          | (Tok.KW_MEAN, _, strm') => funcs_float_PROD_5(strm)
          | (Tok.KW_STDEV, _, strm') => funcs_float_PROD_7(strm)
          | (Tok.KW_VAR, _, strm') => funcs_float_PROD_9(strm)
          | (Tok.KW_GETF, _, strm') => funcs_float_PROD_11(strm)
          | _ => fail()
        (* end case *))
      end
fun expr_NT (strm) = let
      fun expr_PROD_1 (strm) = let
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm)
            val FULL_SPAN = (#1(exp_arit_SPAN), #2(exp_arit_SPAN))
            in
              (UserCode.expr_PROD_1_ACT (exp_arit_RES, exp_arit_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_2 (strm) = let
            val (exp_bool_RES, exp_bool_SPAN, strm') = exp_bool_NT(strm)
            val FULL_SPAN = (#1(exp_bool_SPAN), #2(exp_bool_SPAN))
            in
              (UserCode.expr_PROD_2_ACT (exp_bool_RES, exp_bool_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_3 (strm) = let
            val (exp_string_RES, exp_string_SPAN, strm') = exp_string_NT(strm)
            val FULL_SPAN = (#1(exp_string_SPAN), #2(exp_string_SPAN))
            in
              (UserCode.expr_PROD_3_ACT (exp_string_RES, exp_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_4 (strm) = let
            val (funcs_float_RES, funcs_float_SPAN, strm') = funcs_float_NT(strm)
            val FULL_SPAN = (#1(funcs_float_SPAN), #2(funcs_float_SPAN))
            in
              (UserCode.expr_PROD_4_ACT (funcs_float_RES, funcs_float_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_5 (strm) = let
            val (funcs_int_RES, funcs_int_SPAN, strm') = funcs_int_NT(strm)
            val FULL_SPAN = (#1(funcs_int_SPAN), #2(funcs_int_SPAN))
            in
              (UserCode.expr_PROD_5_ACT (funcs_int_RES, funcs_int_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_6 (strm) = let
            val (funcs_string_RES, funcs_string_SPAN, strm') = funcs_string_NT(strm)
            val FULL_SPAN = (#1(funcs_string_SPAN), #2(funcs_string_SPAN))
            in
              (UserCode.expr_PROD_6_ACT (funcs_string_RES, funcs_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_7 (strm) = let
            val (funcs_list_RES, funcs_list_SPAN, strm') = funcs_list_NT(strm)
            val FULL_SPAN = (#1(funcs_list_SPAN), #2(funcs_list_SPAN))
            in
              (UserCode.expr_PROD_7_ACT (funcs_list_RES, funcs_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun expr_PROD_8 (strm) = let
            val (val_list_RES, val_list_SPAN, strm') = val_list_NT(strm)
            val FULL_SPAN = (#1(val_list_SPAN), #2(val_list_SPAN))
            in
              (UserCode.expr_PROD_8_ACT (val_list_RES, val_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.SSTRING(_), _, strm') => expr_PROD_8(strm)
          | (Tok.SINT(_), _, strm') => expr_PROD_8(strm)
          | (Tok.SFLOAT(_), _, strm') => expr_PROD_8(strm)
          | (Tok.SBOOL(_), _, strm') => expr_PROD_8(strm)
          | (Tok.KW_SUM, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_PROD, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_MEAN, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_CORR, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_MEDIAN, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_STDEV, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_VAR, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_GETF, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_COV, _, strm') => expr_PROD_4(strm)
          | (Tok.KW_TOFLOAT, _, strm') => expr_PROD_4(strm)
          | (Tok.BOOL(_), _, strm') => expr_PROD_2(strm)
          | (Tok.NUM(_), _, strm') =>
              tryProds(strm, [expr_PROD_1, expr_PROD_2])
          | (Tok.REAL(_), _, strm') =>
              tryProds(strm, [expr_PROD_1, expr_PROD_2])
          | (Tok.KW_RT, _, strm') => tryProds(strm, [expr_PROD_1, expr_PROD_2])
          | (Tok.KW_POW, _, strm') =>
              tryProds(strm, [expr_PROD_1, expr_PROD_2])
          | (Tok.ID(_), _, strm') =>
              tryProds(strm, [expr_PROD_1, expr_PROD_2, expr_PROD_3,
                expr_PROD_8])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [expr_PROD_1, expr_PROD_2, expr_PROD_3])
          | (Tok.KW_GETS, _, strm') =>
              tryProds(strm, [expr_PROD_3, expr_PROD_6])
          | (Tok.KW_TOSTRING, _, strm') =>
              tryProds(strm, [expr_PROD_3, expr_PROD_6])
          | (Tok.KW_LINREG, _, strm') =>
              tryProds(strm, [expr_PROD_3, expr_PROD_6])
          | (Tok.STR(_), _, strm') => expr_PROD_3(strm)
          | (Tok.KW_GETI, _, strm') => expr_PROD_5(strm)
          | (Tok.KW_TOINT, _, strm') => expr_PROD_5(strm)
          | (Tok.KW_SUBS, _, strm') => expr_PROD_7(strm)
          | _ => fail()
        (* end case *))
      end
and funcs_string_NT (strm) = let
      fun funcs_string_PROD_1 (strm) = let
            val (KW_TOSTRING_RES, KW_TOSTRING_SPAN, strm') = matchKW_TOSTRING(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (expr_RES, expr_SPAN, strm') = expr_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_TOSTRING_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_string_PROD_1_ACT (LP_RES, RP_RES, expr_RES, KW_TOSTRING_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), expr_SPAN : (Lex.pos * Lex.pos), KW_TOSTRING_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_string_PROD_2 (strm) = let
            val (KW_LINREG_RES, KW_LINREG_SPAN, strm') = matchKW_LINREG(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (float_list1_RES, float_list1_SPAN, strm') = float_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (float_list2_RES, float_list2_SPAN, strm') = float_list_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(KW_LINREG_SPAN), #2(RP_SPAN))
            in
              (UserCode.funcs_string_PROD_2_ACT (LP_RES, RP_RES, KW_LINREG_RES, COMMA_RES, float_list1_RES, float_list2_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_LINREG_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), float_list1_SPAN : (Lex.pos * Lex.pos), float_list2_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun funcs_string_PROD_3 (strm) = let
            val (KW_GETS_RES, KW_GETS_SPAN, strm') = matchKW_GETS(strm)
            val (LP_RES, LP_SPAN, strm') = matchLP(strm')
            val (string_list_RES, string_list_SPAN, strm') = string_list_NT(strm')
            val (COMMA_RES, COMMA_SPAN, strm') = matchCOMMA(strm')
            val (exp_arit_RES, exp_arit_SPAN, strm') = exp_arit_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            in
              if (UserCode.funcs_string_PROD_3_PRED (LP_RES, RP_RES, exp_arit_RES, KW_GETS_RES, COMMA_RES, string_list_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(KW_GETS_SPAN), #2(RP_SPAN))
                  in
                    (UserCode.funcs_string_PROD_3_ACT (LP_RES, RP_RES, exp_arit_RES, KW_GETS_RES, COMMA_RES, string_list_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), exp_arit_SPAN : (Lex.pos * Lex.pos), KW_GETS_SPAN : (Lex.pos * Lex.pos), COMMA_SPAN : (Lex.pos * Lex.pos), string_list_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      in
        (case (lex(strm))
         of (Tok.KW_GETS, _, strm') => funcs_string_PROD_3(strm)
          | (Tok.KW_TOSTRING, _, strm') => funcs_string_PROD_1(strm)
          | (Tok.KW_LINREG, _, strm') => funcs_string_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and exp_string_NT (strm) = let
      fun exp_string_PROD_1 (strm) = let
            val (op_str_RES, op_str_SPAN, strm') = op_str_NT(strm)
            val FULL_SPAN = (#1(op_str_SPAN), #2(op_str_SPAN))
            in
              ((op_str_RES), FULL_SPAN, strm')
            end
      fun exp_string_PROD_2 (strm) = let
            val (atom_string_RES, atom_string_SPAN, strm') = atom_string_NT(strm)
            val FULL_SPAN = (#1(atom_string_SPAN), #2(atom_string_SPAN))
            in
              ((atom_string_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.ID(_), _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | (Tok.LP, _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | (Tok.STR(_), _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | (Tok.KW_GETS, _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | (Tok.KW_TOSTRING, _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | (Tok.KW_LINREG, _, strm') =>
              tryProds(strm, [exp_string_PROD_1, exp_string_PROD_2])
          | _ => fail()
        (* end case *))
      end
and atom_string_NT (strm) = let
      fun atom_string_PROD_1 (strm) = let
            val (ID_RES, ID_SPAN, strm') = matchID(strm)
            in
              if (UserCode.atom_string_PROD_1_PRED (ID_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
                then let
                  val FULL_SPAN = (#1(ID_SPAN), #2(ID_SPAN))
                  in
                    (UserCode.atom_string_PROD_1_ACT (ID_RES, ID_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                      FULL_SPAN, strm')
                  end
                else fail()
            end
      fun atom_string_PROD_2 (strm) = let
            val (STR_RES, STR_SPAN, strm') = matchSTR(strm)
            val FULL_SPAN = (#1(STR_SPAN), #2(STR_SPAN))
            in
              (UserCode.atom_string_PROD_2_ACT (STR_RES, STR_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atom_string_PROD_3 (strm) = let
            val (funcs_string_RES, funcs_string_SPAN, strm') = funcs_string_NT(strm)
            val FULL_SPAN = (#1(funcs_string_SPAN), #2(funcs_string_SPAN))
            in
              (UserCode.atom_string_PROD_3_ACT (funcs_string_RES, funcs_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun atom_string_PROD_4 (strm) = let
            val (LP_RES, LP_SPAN, strm') = matchLP(strm)
            val (exp_string_RES, exp_string_SPAN, strm') = exp_string_NT(strm')
            val (RP_RES, RP_SPAN, strm') = matchRP(strm')
            val FULL_SPAN = (#1(LP_SPAN), #2(RP_SPAN))
            in
              ((exp_string_RES), FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.LP, _, strm') => atom_string_PROD_4(strm)
          | (Tok.STR(_), _, strm') => atom_string_PROD_2(strm)
          | (Tok.ID(_), _, strm') => atom_string_PROD_1(strm)
          | (Tok.KW_GETS, _, strm') => atom_string_PROD_3(strm)
          | (Tok.KW_TOSTRING, _, strm') => atom_string_PROD_3(strm)
          | (Tok.KW_LINREG, _, strm') => atom_string_PROD_3(strm)
          | _ => fail()
        (* end case *))
      end
and op_str_NT (strm) = let
      val (atom_string1_RES, atom_string1_SPAN, strm') = atom_string_NT(strm)
      val (CONCAT_RES, CONCAT_SPAN, strm') = matchCONCAT(strm')
      val (atom_string2_RES, atom_string2_SPAN, strm') = atom_string_NT(strm')
      val FULL_SPAN = (#1(atom_string1_SPAN), #2(atom_string2_SPAN))
      in
        (UserCode.op_str_PROD_1_ACT (atom_string1_RES, atom_string2_RES, CONCAT_RES, atom_string1_SPAN : (Lex.pos * Lex.pos), atom_string2_SPAN : (Lex.pos * Lex.pos), CONCAT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
fun assign_NT (strm) = let
      val (ID_RES, ID_SPAN, strm') = matchID(strm)
      val (DOTDOT_RES, DOTDOT_SPAN, strm') = matchDOTDOT(strm')
      val (expr_RES, expr_SPAN, strm') = expr_NT(strm')
      in
        if (UserCode.assign_PROD_1_PRED (ID_RES, expr_RES, DOTDOT_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC))
          then let
            val FULL_SPAN = (#1(ID_SPAN), #2(expr_SPAN))
            in
              (UserCode.assign_PROD_1_ACT (ID_RES, expr_RES, DOTDOT_RES, ID_SPAN : (Lex.pos * Lex.pos), expr_SPAN : (Lex.pos * Lex.pos), DOTDOT_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
          else fail()
      end
fun prints_NT (auxtree_RES, principal_RES) (strm) = let
      val (KW_Print_RES, KW_Print_SPAN, strm') = matchKW_Print(strm)
      val (LP_RES, LP_SPAN, strm') = matchLP(strm')
      val (exp_string_RES, exp_string_SPAN, strm') = exp_string_NT(strm')
      val (RP_RES, RP_SPAN, strm') = matchRP(strm')
      val FULL_SPAN = (#1(KW_Print_SPAN), #2(RP_SPAN))
      in
        (UserCode.prints_PROD_1_ACT (LP_RES, RP_RES, KW_Print_RES, auxtree_RES, principal_RES, exp_string_RES, LP_SPAN : (Lex.pos * Lex.pos), RP_SPAN : (Lex.pos * Lex.pos), KW_Print_SPAN : (Lex.pos * Lex.pos), exp_string_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
fun commands_NT (atree_RES, principal_RES) (strm) = let
      fun commands_PROD_1 (strm) = let
            val (prints_RES, prints_SPAN, strm') = (prints_NT (UserCode.ARGS_10 (principal_RES, atree_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm)
            val (SEMI_RES, SEMI_SPAN, strm') = matchSEMI(strm')
            fun commands_PROD_1_SUBRULE_1_NT (strm) = let
                  val (commands_RES, commands_SPAN, strm') = (commands_NT (UserCode.ARGS_11 (SEMI_RES, principal_RES, atree_RES, prints_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm)
                  val FULL_SPAN = (#1(commands_SPAN), #2(commands_SPAN))
                  in
                    ((commands_RES), FULL_SPAN, strm')
                  end
            fun commands_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.ID(_), _, strm') => true
                    | (Tok.KW_Print, _, strm') => true
                    | (Tok.KW_IF, _, strm') => true
                    | _ => false
                  (* end case *))
            val (SR_RES, SR_SPAN, strm') = EBNF.optional(commands_PROD_1_SUBRULE_1_PRED, commands_PROD_1_SUBRULE_1_NT, strm')
            val FULL_SPAN = (#1(prints_SPAN), #2(SR_SPAN))
            in
              (UserCode.commands_PROD_1_ACT (SR_RES, SEMI_RES, principal_RES, atree_RES, prints_RES, SR_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), prints_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun commands_PROD_2 (strm) = let
            val (assign_RES, assign_SPAN, strm') = assign_NT(strm)
            val (SEMI_RES, SEMI_SPAN, strm') = matchSEMI(strm')
            fun commands_PROD_2_SUBRULE_1_NT (strm) = let
                  val (commands_RES, commands_SPAN, strm') = (commands_NT (UserCode.ARGS_13 (SEMI_RES, principal_RES, assign_RES, atree_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm)
                  val FULL_SPAN = (#1(commands_SPAN), #2(commands_SPAN))
                  in
                    ((commands_RES), FULL_SPAN, strm')
                  end
            fun commands_PROD_2_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.ID(_), _, strm') => true
                    | (Tok.KW_Print, _, strm') => true
                    | (Tok.KW_IF, _, strm') => true
                    | _ => false
                  (* end case *))
            val (SR_RES, SR_SPAN, strm') = EBNF.optional(commands_PROD_2_SUBRULE_1_PRED, commands_PROD_2_SUBRULE_1_NT, strm')
            val FULL_SPAN = (#1(assign_SPAN), #2(SR_SPAN))
            in
              (UserCode.commands_PROD_2_ACT (SR_RES, SEMI_RES, principal_RES, assign_RES, atree_RES, SR_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), assign_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      fun commands_PROD_3 (strm) = let
            val (conditional_RES, conditional_SPAN, strm') = conditional_NT(strm)
            fun commands_PROD_3_SUBRULE_1_NT (strm) = let
                  val (commands_RES, commands_SPAN, strm') = (commands_NT (UserCode.ARGS_15 (conditional_RES, principal_RES, atree_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm)
                  val FULL_SPAN = (#1(commands_SPAN), #2(commands_SPAN))
                  in
                    ((commands_RES), FULL_SPAN, strm')
                  end
            fun commands_PROD_3_SUBRULE_1_PRED (strm) = (case (lex(strm))
                   of (Tok.ID(_), _, strm') => true
                    | (Tok.KW_Print, _, strm') => true
                    | (Tok.KW_IF, _, strm') => true
                    | _ => false
                  (* end case *))
            val (SR_RES, SR_SPAN, strm') = EBNF.optional(commands_PROD_3_SUBRULE_1_PRED, commands_PROD_3_SUBRULE_1_NT, strm')
            val FULL_SPAN = (#1(conditional_SPAN), #2(SR_SPAN))
            in
              (UserCode.commands_PROD_3_ACT (SR_RES, conditional_RES, principal_RES, atree_RES, SR_SPAN : (Lex.pos * Lex.pos), conditional_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
                FULL_SPAN, strm')
            end
      in
        (case (lex(strm))
         of (Tok.KW_IF, _, strm') => commands_PROD_3(strm)
          | (Tok.KW_Print, _, strm') => commands_PROD_1(strm)
          | (Tok.ID(_), _, strm') => commands_PROD_2(strm)
          | _ => fail()
        (* end case *))
      end
and conditional_NT (strm) = let
      val (KW_IF_RES, KW_IF_SPAN, strm') = matchKW_IF(strm)
      val (exp_bool_RES, exp_bool_SPAN, strm') = exp_bool_NT(strm')
      val (KW_THEN_RES, KW_THEN_SPAN, strm') = matchKW_THEN(strm')
      val (commands1_RES, commands1_SPAN, strm') = (commands_NT (UserCode.ARGS_83 (exp_bool_RES, KW_THEN_RES, KW_IF_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm')
      val (KW_ELSE_RES, KW_ELSE_SPAN, strm') = matchKW_ELSE(strm')
      val (commands2_RES, commands2_SPAN, strm') = (commands_NT (UserCode.ARGS_84 (exp_bool_RES, KW_ELSE_RES, KW_THEN_RES, commands1_RES, KW_IF_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm')
      val (KW_END_RES, KW_END_SPAN, strm') = matchKW_END(strm')
      val FULL_SPAN = (#1(KW_IF_SPAN), #2(KW_END_SPAN))
      in
        (UserCode.conditional_PROD_1_ACT (exp_bool_RES, KW_ELSE_RES, KW_THEN_RES, commands1_RES, commands2_RES, KW_IF_RES, KW_END_RES, exp_bool_SPAN : (Lex.pos * Lex.pos), KW_ELSE_SPAN : (Lex.pos * Lex.pos), KW_THEN_SPAN : (Lex.pos * Lex.pos), commands1_SPAN : (Lex.pos * Lex.pos), commands2_SPAN : (Lex.pos * Lex.pos), KW_IF_SPAN : (Lex.pos * Lex.pos), KW_END_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
fun declaration_NT (strm) = let
      val (TIPO_RES, TIPO_SPAN, strm') = matchTIPO(strm)
      val (ID_RES, ID_SPAN, strm') = matchID(strm')
      val (SEMI_RES, SEMI_SPAN, strm') = matchSEMI(strm')
      val FULL_SPAN = (#1(TIPO_SPAN), #2(SEMI_SPAN))
      in
        (UserCode.declaration_PROD_1_ACT (ID_RES, SEMI_RES, TIPO_RES, ID_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), TIPO_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
fun variables_NT (strm) = let
      fun variables_PROD_1_SUBRULE_1_NT (strm) = let
            val (declaration_RES, declaration_SPAN, strm') = declaration_NT(strm)
            val FULL_SPAN = (#1(declaration_SPAN), #2(declaration_SPAN))
            in
              ((declaration_RES), FULL_SPAN, strm')
            end
      fun variables_PROD_1_SUBRULE_1_PRED (strm) = (case (lex(strm))
             of (Tok.TIPO(_), _, strm') => true
              | _ => false
            (* end case *))
      val (SR_RES, SR_SPAN, strm') = EBNF.closure(variables_PROD_1_SUBRULE_1_PRED, variables_PROD_1_SUBRULE_1_NT, strm)
      val (KW_endvars_RES, KW_endvars_SPAN, strm') = matchKW_endvars(strm')
      val FULL_SPAN = (#1(SR_SPAN), #2(KW_endvars_SPAN))
      in
        (UserCode.variables_PROD_1_ACT (SR_RES, KW_endvars_RES, SR_SPAN : (Lex.pos * Lex.pos), KW_endvars_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
fun program_NT (d_RES) (strm) = let
      val (KW_title_RES, KW_title_SPAN, strm') = matchKW_title(strm)
      val (STR_RES, STR_SPAN, strm') = matchSTR(strm')
      val (SEMI_RES, SEMI_SPAN, strm') = matchSEMI(strm')
      val (KW_variables_RES, KW_variables_SPAN, strm') = matchKW_variables(strm')
      val (variables_RES, variables_SPAN, strm') = variables_NT(strm')
      val (KW_comands_RES, KW_comands_SPAN, strm') = matchKW_comands(strm')
      val (commands_RES, commands_SPAN, strm') = (commands_NT (UserCode.ARGS_8 (d_RES, STR_RES, SEMI_RES, KW_title_RES, KW_variables_RES, variables_RES, KW_comands_RES, ps_REFC, v_REFC, ts_REFC, tree_REFC)))(strm')
      val FULL_SPAN = (#1(KW_title_SPAN), #2(commands_SPAN))
      in
        (UserCode.program_PROD_1_ACT (d_RES, STR_RES, commands_RES, SEMI_RES, KW_title_RES, KW_variables_RES, variables_RES, KW_comands_RES, STR_SPAN : (Lex.pos * Lex.pos), commands_SPAN : (Lex.pos * Lex.pos), SEMI_SPAN : (Lex.pos * Lex.pos), KW_title_SPAN : (Lex.pos * Lex.pos), KW_variables_SPAN : (Lex.pos * Lex.pos), variables_SPAN : (Lex.pos * Lex.pos), KW_comands_SPAN : (Lex.pos * Lex.pos), FULL_SPAN : (Lex.pos * Lex.pos), ps_REFC, v_REFC, ts_REFC, tree_REFC),
          FULL_SPAN, strm')
      end
in
  (program_NT)
end
val program_NT =  fn x => fn s => unwrap (Err.launch (eh, lexFn, program_NT x , true) s)

in (program_NT) end
  in
fun parse lexFn  x s = let val (program_NT) = mk lexFn in program_NT x s end

  end

end
