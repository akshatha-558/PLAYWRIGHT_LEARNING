# migrate.ps1 — Restructure repo into tiered categories
# Run from repo root:  .\migrate.ps1
# All moves use `git mv` to preserve history.

Write-Host "=== Step 1: Create new directory structure ===" -ForegroundColor Cyan

$dirs = @(
    "01-javascript-basics/01-introduction"
    "01-javascript-basics/02-variables-hoisting"
    "01-javascript-basics/03-literals-data-types"
    "01-javascript-basics/04-operators"
    "02-control-flow/01-conditionals"
    "02-control-flow/02-user-input"
    "02-control-flow/03-loops"
    "03-data-structures/01-arrays"
    "03-data-structures/02-strings"
    "03-data-structures/03-objects"
    "03-data-structures/04-2d-arrays"
    "04-functions"
    "05-asynchronous-js/01-callbacks"
    "05-asynchronous-js/02-promises"
    "05-asynchronous-js/03-async-await"
    "06-playwright-automation"
    "07-typescript-oop/01-typescript-basics"
    "07-typescript-oop/02-classes-objects"
    "07-typescript-oop/03-encapsulation"
    "07-typescript-oop/04-inheritance"
    "07-typescript-oop/05-polymorphism"
    "07-typescript-oop/06-oop-interview-questions"
    "08-practice-tasks"
)

foreach ($d in $dirs) {
    $null = New-Item -ItemType Directory -Path $d -Force
}

Write-Host "=== Step 2: Move files with git mv (preserves history) ===" -ForegroundColor Cyan

# -------------------------------------------------------
# 01-javascript-basics / 01-introduction
# -------------------------------------------------------
git mv "chapter-01-basics/1_basic.js"             "01-javascript-basics/01-introduction/1-basic.js"
git mv "chapter-01-basics/2_js.js"                "01-javascript-basics/01-introduction/2-js.js"
git mv "chapter-01-basics/3_jsverify_Setup.js"    "01-javascript-basics/01-introduction/3-jsverify-setup.js"
git mv "chapter-01-basics/4_hotcode.js"           "01-javascript-basics/01-introduction/4-hotcode.js"
git mv "chapter-02-javascript-basic/5_js.js"      "01-javascript-basics/01-introduction/5-js.js"

# -------------------------------------------------------
# 01-javascript-basics / 02-variables-hoisting
# -------------------------------------------------------
git mv "chapter-03-identifier-literals/6-identifier-rules.js"  "01-javascript-basics/02-variables-hoisting/6-identifier-rules.js"
git mv "chapter-03-identifier-literals/7-identifer_part2.js"    "01-javascript-basics/02-variables-hoisting/7-identifier-part2.js"
git mv "chapter-03-identifier-literals/8-comment.js"            "01-javascript-basics/02-variables-hoisting/8-comment.js"
git mv "chapter-03-identifier-literals/01-Test.js"              "01-javascript-basics/02-variables-hoisting/01-test.js"
git mv "chapter-03-identifier-literals/identiferrule.js"       "01-javascript-basics/02-variables-hoisting/identifier-rule.js"
git mv "chapter-03-identifier-literals/VS_code shortcuts.js"   "01-javascript-basics/02-variables-hoisting/vs-code-shortcuts.js"

git mv "chapter-04-js-concepts/9-va-let-hoist.js"       "01-javascript-basics/02-variables-hoisting/9-va-let-hoist.js"
git mv "chapter-04-js-concepts/10-function.js"          "01-javascript-basics/02-variables-hoisting/10-function.js"
git mv "chapter-04-js-concepts/11-var-explained.js"     "01-javascript-basics/02-variables-hoisting/11-var-explained.js"
git mv "chapter-04-js-concepts/12-let-pepople--love.js" "01-javascript-basics/02-variables-hoisting/12-let-people-love.js"
git mv "chapter-04-js-concepts/13-const-explained.js"   "01-javascript-basics/02-variables-hoisting/13-const-explained.js"
git mv "chapter-04-js-concepts/14-var-func-scope.js"    "01-javascript-basics/02-variables-hoisting/14-var-func-scope.js"
git mv "chapter-04-js-concepts/15-let-scope-expalined.js" "01-javascript-basics/02-variables-hoisting/15-let-scope-explained.js"
git mv "chapter-04-js-concepts/16-hoisting.js"          "01-javascript-basics/02-variables-hoisting/16-hoisting.js"
git mv "chapter-04-js-concepts/17-hoisting_fun.js"      "01-javascript-basics/02-variables-hoisting/17-hoisting-fun.js"
git mv "chapter-04-js-concepts/18-let-hoisting.js"      "01-javascript-basics/02-variables-hoisting/18-let-hoisting.js"
git mv "chapter-04-js-concepts/19-let-hoisting-block.js" "01-javascript-basics/02-variables-hoisting/19-let-hoisting-block.js"
git mv "chapter-04-js-concepts/20-const.js"             "01-javascript-basics/02-variables-hoisting/20-const.js"
git mv "chapter-04-js-concepts/21-jr-qa.js"             "01-javascript-basics/02-variables-hoisting/21-jr-qa.js"

# -------------------------------------------------------
# 01-javascript-basics / 03-literals-data-types
# -------------------------------------------------------
git mv "chapter-05-literals/22_Literal.js"               "01-javascript-basics/03-literals-data-types/22-literal.js"
git mv "chapter-05-literals/23_null_undefined.js"        "01-javascript-basics/03-literals-data-types/23-null-undefined.js"
git mv "chapter-05-literals/24_null.js"                  "01-javascript-basics/03-literals-data-types/24-null.js"
git mv "chapter-05-literals/25_Literal_All.js"           "01-javascript-basics/03-literals-data-types/25-literal-all.js"
git mv "chapter-05-literals/26_Literal_Number_all.js"    "01-javascript-basics/03-literals-data-types/26-literal-number-all.js"
git mv "chapter-05-literals/27_String.js"                "01-javascript-basics/03-literals-data-types/27-string.js"
git mv "chapter-05-literals/28_Template_Literal.js"      "01-javascript-basics/03-literals-data-types/28-template-literal.js"
git mv "chapter-05-literals/29_Backtick_single_double.js" "01-javascript-basics/03-literals-data-types/29-backtick-single-double.js"

# -------------------------------------------------------
# 01-javascript-basics / 04-operators
# -------------------------------------------------------
git mv "chapter-06-operators/30_Operator.js"          "01-javascript-basics/04-operators/30-operator.js"
git mv "chapter-06-operators/31_Arithmetic_OP.js"    "01-javascript-basics/04-operators/31-arithmetic-op.js"
git mv "chapter-06-operators/32_Modulus_OP.js"       "01-javascript-basics/04-operators/32-modulus-op.js"
git mv "chapter-06-operators/33_Expo_OP.js"           "01-javascript-basics/04-operators/33-expo-op.js"
git mv "chapter-06-operators/34_IQ.js"                "01-javascript-basics/04-operators/34-iq.js"
git mv "chapter-06-operators/35_Comparsion_OP.js"     "01-javascript-basics/04-operators/35-comparison-op.js"

# -------------------------------------------------------
# 02-control-flow / 01-conditionals
# -------------------------------------------------------
git mv "chapter-07-if-else/48-ifelse.js"              "02-control-flow/01-conditionals/48-ifelse.js"
git mv "chapter-07-if-else/49-if-elseif-else.js"      "02-control-flow/01-conditionals/49-if-elseif-else.js"
git mv "chapter-07-if-else/50-real-ex-ifelse.js"      "02-control-flow/01-conditionals/50-real-ex-ifelse.js"
git mv "chapter-07-if-else/51-api-ex-if-ifelse-else.js" "02-control-flow/01-conditionals/51-api-ex-if-ifelse-else.js"
git mv "chapter-07-if-else/52=iq-ex-ifelse.js"        "02-control-flow/01-conditionals/52-iq-ex-ifelse.js"
git mv "chapter-07-if-else/53-if-elseif-real.js"      "02-control-flow/01-conditionals/53-if-elseif-real.js"
git mv "chapter-07-if-else/54-iq-ex.js"               "02-control-flow/01-conditionals/54-iq-ex.js"
git mv "chapter-07-if-else/55-iq-ex.js"               "02-control-flow/01-conditionals/55-iq-ex.js"
git mv "chapter-07-if-else/56-even-odd.js"            "02-control-flow/01-conditionals/56-even-odd.js"
git mv "chapter-07-if-else/57-grade.js"               "02-control-flow/01-conditionals/57-grade.js"
git mv "chapter-07-if-else/58-leapyear.js"            "02-control-flow/01-conditionals/58-leapyear.js"

git mv "chapter-08-switch-statement/59_switch.js"     "02-control-flow/01-conditionals/59-switch.js"
git mv "chapter-08-switch-statement/60-nobreak.js"    "02-control-flow/01-conditionals/60-nobreak.js"
git mv "chapter-08-switch-statement/60-switch-group.js" "02-control-flow/01-conditionals/60-switch-group.js"
git mv "chapter-08-switch-statement/61-default.js"    "02-control-flow/01-conditionals/61-default.js"
git mv "chapter-08-switch-statement/62-api.js"        "02-control-flow/01-conditionals/62-api.js"
git mv "chapter-08-switch-statement/64-iq.js"         "02-control-flow/01-conditionals/64-iq.js"
git mv "chapter-08-switch-statement/65-iq.js"         "02-control-flow/01-conditionals/65-iq.js"
git mv "chapter-08-switch-statement/66_iq.js"         "02-control-flow/01-conditionals/66-iq.js"
git mv "chapter-08-switch-statement/67-iq.js"         "02-control-flow/01-conditionals/67-iq.js"

# -------------------------------------------------------
# 02-control-flow / 02-user-input
# -------------------------------------------------------
git mv "chapter-09-user-input/68-user-input.js"       "02-control-flow/02-user-input/68-user-input.js"
git mv "chapter-09-user-input/69-node-readline.js"    "02-control-flow/02-user-input/69-node-readline.js"
git mv "chapter-09-user-input/70-prompt-sync.js"      "02-control-flow/02-user-input/70-prompt-sync.js"

# -------------------------------------------------------
# 02-control-flow / 03-loops
# -------------------------------------------------------
git mv "chapter-10-loops/71-for-loop.js"                "02-control-flow/03-loops/71-for-loop.js"
git mv "chapter-10-loops/72-for-loop.js"                "02-control-flow/03-loops/72-for-loop.js"
git mv "chapter-10-loops/73-for-loop-1.js"              "02-control-flow/03-loops/73-for-loop-1.js"
git mv "chapter-10-loops/74-loops-iq.js"                "02-control-flow/03-loops/74-loops-iq.js"
git mv "chapter-10-loops/75-for-in-of-each-loops.js.js" "02-control-flow/03-loops/75-for-in-of-each-loops.js"
git mv "chapter-10-loops/76-while-loop.js"              "02-control-flow/03-loops/76-while-loop.js"
git mv "chapter-10-loops/77-do-while.js"                "02-control-flow/03-loops/77-do-while.js"
git mv "chapter-10-loops/78-do-while.js"                "02-control-flow/03-loops/78-do-while.js"
git mv "chapter-10-loops/79-iq.js"                      "02-control-flow/03-loops/79-iq.js"
git mv "chapter-10-loops/80-iq.js"                      "02-control-flow/03-loops/80-iq.js"
git mv "chapter-10-loops/81-iq.js"                      "02-control-flow/03-loops/81-iq.js"
git mv "chapter-10-loops/82-iq.js"                      "02-control-flow/03-loops/82-iq.js"

# -------------------------------------------------------
# 03-data-structures / 01-arrays
# -------------------------------------------------------
git mv "chapter-11-arrays/83_Array.js"                     "03-data-structures/01-arrays/83-array.js"
git mv "chapter-11-arrays/84_Array.js"                     "03-data-structures/01-arrays/84-array.js"
git mv "chapter-11-arrays/85-array.js"                     "03-data-structures/01-arrays/85-array.js"
git mv "chapter-11-arrays/86-array.adding-removing.js"     "03-data-structures/01-arrays/86-array-adding-removing.js"
git mv "chapter-11-arrays/87-arrays-adding-removing-2.js"  "03-data-structures/01-arrays/87-arrays-adding-removing-2.js"
git mv "chapter-11-arrays/88-real-example.js"              "03-data-structures/01-arrays/88-real-example.js"
git mv "chapter-11-arrays/89-real-example-2.js"            "03-data-structures/01-arrays/89-real-example-2.js"
git mv "chapter-11-arrays/90-iterate.js"                   "03-data-structures/01-arrays/90-iterate.js"
git mv "chapter-11-arrays/91-transform-array.js"           "03-data-structures/01-arrays/91-transform-array.js"
git mv "chapter-11-arrays/92-array.js"                     "03-data-structures/01-arrays/92-array.js"
git mv "chapter-11-arrays/93-array-slicing.js"             "03-data-structures/01-arrays/93-array-slicing.js"
git mv "chapter-11-arrays/94-concat.js"                    "03-data-structures/01-arrays/94-concat.js"
git mv "chapter-11-arrays/95-arrays-checking.js"           "03-data-structures/01-arrays/95-arrays-checking.js"

# -------------------------------------------------------
# 03-data-structures / 02-strings
# -------------------------------------------------------
git mv "chapter-13-strings/118_Strings.js"                "03-data-structures/02-strings/118-strings.js"
git mv "chapter-13-strings/119_String_Properties.js"     "03-data-structures/02-strings/119-string-properties.js"
git mv "chapter-13-strings/120_Search_Check_Str.js"      "03-data-structures/02-strings/120-search-check-str.js"
git mv "chapter-13-strings/121_Substring.js"             "03-data-structures/02-strings/121-substring.js"
git mv "chapter-13-strings/122_Transform_Str.js"         "03-data-structures/02-strings/122-transform-str.js"
git mv "chapter-13-strings/123_SC.js"                    "03-data-structures/02-strings/123-sc.js"
git mv "chapter-13-strings/javascript_stringcheatsheet.md" "03-data-structures/02-strings/javascript-string-cheatsheet.md"

# -------------------------------------------------------
# 03-data-structures / 03-objects
# -------------------------------------------------------
git mv "chapter-14-objects/124_Objects.js"                  "03-data-structures/03-objects/124-objects.js"
git mv "chapter-14-objects/125_Objects2.js"                 "03-data-structures/03-objects/125-objects2.js"
git mv "chapter-14-objects/126_Objects_Creation.js"         "03-data-structures/03-objects/126-objects-creation.js"
git mv "chapter-14-objects/127_Objects_REAL.js"             "03-data-structures/03-objects/127-objects-real.js"
git mv "chapter-14-objects/128_Primitive_Ref.js"            "03-data-structures/03-objects/128-primitive-ref.js"
git mv "chapter-14-objects/129_Ob_Examples.js"              "03-data-structures/03-objects/129-ob-examples.js"
git mv "chapter-14-objects/130_IQ.js"                       "03-data-structures/03-objects/130-iq.js"
git mv "chapter-14-objects/131_Object_Fn.js"                "03-data-structures/03-objects/131-object-fn.js"
git mv "chapter-14-objects/132_Obj_Decon.js"                "03-data-structures/03-objects/132-obj-destruct.js"
git mv "chapter-14-objects/133_Spead.js"                    "03-data-structures/03-objects/133-spread.js"
git mv "chapter-14-objects/134_Objects_GET_SET_Methods.js"  "03-data-structures/03-objects/134-objects-get-set-methods.js"
git mv "chapter-14-objects/135_IQ"                          "03-data-structures/03-objects/135-iq.js"
git mv "chapter-14-objects/136_Obj_REAL.js"                 "03-data-structures/03-objects/136-obj-real.js"
git mv "chapter-14-objects/137_Let_const_obj.js"            "03-data-structures/03-objects/137-let-const-obj.js"

# -------------------------------------------------------
# 03-data-structures / 04-2d-arrays
# -------------------------------------------------------
git mv "chapter-15-2d-array/138_2D_Array.js"           "03-data-structures/04-2d-arrays/138-2d-array.js"
git mv "chapter-15-2d-array/139_2d.js"                 "03-data-structures/04-2d-arrays/139-2d.js"
git mv "chapter-15-2d-array/140_REAL.js"               "03-data-structures/04-2d-arrays/140-real.js"
git mv "chapter-15-2d-array/141_2d_Array_Fn.js"        "03-data-structures/04-2d-arrays/141-2d-array-fn.js"
git mv "chapter-15-2d-array/142_IQ_Right_Pattern_Py.js" "03-data-structures/04-2d-arrays/142-iq-right-pattern-py.js"
git mv "chapter-15-2d-array/testdata.csv"               "03-data-structures/04-2d-arrays/testdata.csv"

# -------------------------------------------------------
# 04-functions
# -------------------------------------------------------
git mv "chapter-12-functions/96-function-basic.js"                "04-functions/96-function-basic.js"
git mv "chapter-12-functions/97-function-type1-basic.js"          "04-functions/97-function-type1-basic.js"
git mv "chapter-12-functions/98-function-type2-with-param-noreturn.js" "04-functions/98-function-type2-with-param-noreturn.js"
git mv "chapter-12-functions/99-fn-type3-withoutparam-returntype.js"   "04-functions/99-fn-type3-withoutparam-returntype.js"
git mv "chapter-12-functions/100-fn-type4-withparam-return.js"    "04-functions/100-fn-type4-withparam-return.js"
git mv "chapter-12-functions/101-template-literal.js"            "04-functions/101-template-literal.js"
git mv "chapter-12-functions/102-function-expression.js"         "04-functions/102-function-expression.js"
git mv "chapter-12-functions/103-arrow-fn.js"                    "04-functions/103-arrow-fn.js"
git mv "chapter-12-functions/104-arrow-fn.js"                    "04-functions/104-arrow-fn.js"
git mv "chapter-12-functions/105-iief.js"                        "04-functions/105-iife.js"
git mv "chapter-12-functions/106-default-param.js"               "04-functions/106-default-param.js"
git mv "chapter-12-functions/107.iq.js"                          "04-functions/107-iq.js"
git mv "chapter-12-functions/108-param.js"                       "04-functions/108-param.js"
git mv "chapter-12-functions/109-iq.js"                          "04-functions/109-iq.js"
git mv "chapter-12-functions/110-spead-iq.js"                    "04-functions/110-spread-iq.js"
git mv "chapter-12-functions/111-scope-fn.js"                    "04-functions/111-scope-fn.js"
git mv "chapter-12-functions/112-iq.js"                          "04-functions/112-iq.js"
git mv "chapter-12-functions/113-closure.js"                     "04-functions/113-closure.js"
git mv "chapter-12-functions/114-closure.js"                     "04-functions/114-closure.js"
git mv "chapter-12-functions/115.js"                             "04-functions/115.js"
git mv "chapter-12-functions/116-higher-orderfn.js"              "04-functions/116-higher-orderfn.js"
git mv "chapter-12-functions/117-pure.js"                        "04-functions/117-pure.js"

# -------------------------------------------------------
# 05-asynchronous-js / 01-callbacks
# -------------------------------------------------------
git mv "chapter-16-callback/143_Callback.js"          "05-asynchronous-js/01-callbacks/143-callback.js"
git mv "chapter-16-callback/144_CB.js"                "05-asynchronous-js/01-callbacks/144-cb.js"
git mv "chapter-16-callback/145_CB_Fn.js"             "05-asynchronous-js/01-callbacks/145-cb-fn.js"
git mv "chapter-16-callback/146_PW_CB.js"             "05-asynchronous-js/01-callbacks/146-pw-cb.js"
git mv "chapter-16-callback/147_JS_CB.js"             "05-asynchronous-js/01-callbacks/147-js-cb.js"
git mv "chapter-16-callback/148_Sync_CB.js"           "05-asynchronous-js/01-callbacks/148-sync-cb.js"
git mv "chapter-16-callback/149_Async_CB.js"          "05-asynchronous-js/01-callbacks/149-async-cb.js"
git mv "chapter-16-callback/150_CB_Hell.js"           "05-asynchronous-js/01-callbacks/150-cb-hell.js"
git mv "chapter-16-callback/151_CB_Hell_20_Steps.js"  "05-asynchronous-js/01-callbacks/151-cb-hell-20-steps.js"
git mv "chapter-16-callback/152_CB_Parameter.js"      "05-asynchronous-js/01-callbacks/152-cb-parameter.js"
git mv "chapter-16-callback/153_CB_Return.js"         "05-asynchronous-js/01-callbacks/153-cb-return.js"

# -------------------------------------------------------
# 05-asynchronous-js / 02-promises
# -------------------------------------------------------
git mv "chapter-17-promise/154_Promise.js"               "05-asynchronous-js/02-promises/154-promise.js"
git mv "chapter-17-promise/155_Promise_REAL_API.js"      "05-asynchronous-js/02-promises/155-promise-real-api.js"
git mv "chapter-17-promise/156_Promise_REAL_API_PART2.js" "05-asynchronous-js/02-promises/156-promise-real-api-part2.js"
git mv "chapter-17-promise/157_Finally.js"                "05-asynchronous-js/02-promises/157-finally.js"
git mv "chapter-17-promise/158_Call_Py_Problem.js"       "05-asynchronous-js/02-promises/158-call-py-problem.js"
git mv "chapter-17-promise/159_Promise_ALL.js"            "05-asynchronous-js/02-promises/159-promise-all.js"
git mv "chapter-17-promise/160_Promise_IQ.js"             "05-asynchronous-js/02-promises/160-promise-iq.js"

# -------------------------------------------------------
# 05-asynchronous-js / 03-async-await
# -------------------------------------------------------
git mv "chapter-18-async-await/161_Async.js"          "05-asynchronous-js/03-async-await/161-async.js"
git mv "chapter-18-async-await/162_Aysnc_P2.js"       "05-asynchronous-js/03-async-await/162-async-p2.js"
git mv "chapter-18-async-await/163_PyODom.js"         "05-asynchronous-js/03-async-await/163-pyodom.js"
git mv "chapter-18-async-await/164_Async_Ex.js"       "05-asynchronous-js/03-async-await/164-async-ex.js"
git mv "chapter-18-async-await/165_AA_Parallel.js"    "05-asynchronous-js/03-async-await/165-aa-parallel.js"
git mv "chapter-18-async-await/165_AA_Seq.js"         "05-asynchronous-js/03-async-await/165-aa-seq.js"
git mv "chapter-18-async-await/166_IQ.js"             "05-asynchronous-js/03-async-await/166-iq.js"
git mv "chapter-18-async-await/167_ACLogin.js"        "05-asynchronous-js/03-async-await/167-aclogin.js"

# -------------------------------------------------------
# 06-playwright-automation
# -------------------------------------------------------
git mv "chapter-19-playwright-basic/.gitignore"                "06-playwright-automation/.gitignore"
git mv "chapter-19-playwright-basic/package.json"              "06-playwright-automation/package.json"
git mv "chapter-19-playwright-basic/package-lock.json"         "06-playwright-automation/package-lock.json"
git mv "chapter-19-playwright-basic/playwright.config.ts"      "06-playwright-automation/playwright.config.ts"
git mv "chapter-19-playwright-basic/tests"                     "06-playwright-automation/tests"
git mv "chapter-19-playwright-basic/Playwright-Tasks"          "06-playwright-automation/Playwright-Tasks"

# -------------------------------------------------------
# 07-typescript-oop / 01-typescript-basics
# -------------------------------------------------------
git mv "chapter-20-typescript-oops/logger.js"                "07-typescript-oop/01-typescript-basics/logger.js"
git mv "chapter-20-typescript-oops/testutil.js"              "07-typescript-oop/01-typescript-basics/testutil.js"
git mv "chapter-20-typescript-oops/util.js"                  "07-typescript-oop/01-typescript-basics/util.js"
git mv "chapter-20-typescript-oops/EXPORT-IMPORT"            "07-typescript-oop/01-typescript-basics/EXPORT-IMPORT"

# -------------------------------------------------------
# 08-practice-tasks
# -------------------------------------------------------
git mv "javascript-playwright-tasks/01-jun-task-allexercise,md" "08-practice-tasks/01-jun-task-allexercise.md"
git mv "javascript-playwright-tasks/03-jun-task-1-str-reverse.js" "08-practice-tasks/03-jun-task-1-str-reverse.js"
git mv "javascript-playwright-tasks/03-jun-task-2-java-anagram.js" "08-practice-tasks/03-jun-task-2-java-anagram.js"
git mv "javascript-playwright-tasks/08-jun-task-1-reverse.js"     "08-practice-tasks/08-jun-task-1-reverse.js"
git mv "javascript-playwright-tasks/08-jun-task2-reverse2.js"    "08-practice-tasks/08-jun-task2-reverse2.js"
git mv "javascript-playwright-tasks/10-jun-task-allexercise.md"  "08-practice-tasks/10-jun-task-allexercise.md"
git mv "javascript-playwright-tasks/20-may-task-1-ifelse.js"     "08-practice-tasks/20-may-task-1-ifelse.js"
git mv "javascript-playwright-tasks/20-may-task-2-ifelse.js"     "08-practice-tasks/20-may-task-2-ifelse.js"
git mv "javascript-playwright-tasks/20-may-task-3-ifelse.js"     "08-practice-tasks/20-may-task-3-ifelse.js"
git mv "javascript-playwright-tasks/20-may-task-4-ifelse.js"     "08-practice-tasks/20-may-task-4-ifelse.js"
git mv "javascript-playwright-tasks/20-may-task-5-ifelse.js"     "08-practice-tasks/20-may-task-5-ifelse.js"
git mv "javascript-playwright-tasks/22-may-task-1-loops.js"      "08-practice-tasks/22-may-task-1-loops.js"
git mv "javascript-playwright-tasks/22-may-task-2-loops.js"      "08-practice-tasks/22-may-task-2-loops.js"

Write-Host "=== Step 3: Remove temp artifacts ===" -ForegroundColor Cyan

# Remove VS Code temp runner files
if (Test-Path "chapter-09-user-input/tempCodeRunnerFile.js") {
    git rm "chapter-09-user-input/tempCodeRunnerFile.js"
}

Write-Host "=== Step 4: Stage chapter README deletions ===" -ForegroundColor Cyan

# Chapter READMEs are stale after restructuring — remove from tracking
$readmes = @(
    "chapter-01-basics/README.md"
    "chapter-02-javascript-basic/README.md"
    "chapter-04-js-concepts/README.md"
    "chapter-05-literals/README.md"
    "chapter-07-if-else/README.md"
    "chapter-08-switch-statement/README.md"
    "chapter-09-user-input/README.md"
    "chapter-10-loops/README.md"
)

foreach ($r in $readmes) {
    if (Test-Path $r) {
        git rm $r
    }
}

Write-Host "=== Step 5: Remove empty old directories ===" -ForegroundColor Cyan

$oldDirs = @(
    "chapter-01-basics"
    "chapter-02-javascript-basic"
    "chapter-03-identifier-literals"
    "chapter-04-js-concepts"
    "chapter-05-literals"
    "chapter-06-operators"
    "chapter-07-if-else"
    "chapter-08-switch-statement"
    "chapter-09-user-input"
    "chapter-10-loops"
    "chapter-11-arrays"
    "chapter-12-functions"
    "chapter-13-strings"
    "chapter-14-objects"
    "chapter-15-2d-array"
    "chapter-16-callback"
    "chapter-17-promise"
    "chapter-18-async-await"
    "chapter-19-playwright-basic"
    "chapter-20-typescript-oops"
    "chapter-21-class-objects"
    "chapter-22-encapsulation"
    "chapter-23-inheritance"
    "chapter-24-polymorphism"
    "chapter-25-oops-iq"
    "javascript-playwright-tasks"
)

foreach ($d in $oldDirs) {
    if (Test-Path $d) {
        Remove-Item -Path $d -Recurse -Force
    }
}

Write-Host "=== DONE ===" -ForegroundColor Green
Write-Host "Run the following to review changes:" -ForegroundColor Yellow
Write-Host "  git status" -ForegroundColor White
Write-Host "  git diff --stat" -ForegroundColor White
Write-Host ""
Write-Host "Then commit:" -ForegroundColor Yellow
Write-Host "  git add -A && git commit -m 'refactor: restructure repo into tiered categories'" -ForegroundColor White
Write-Host ""
Write-Host "Note: Root README.md still references old paths — update manually after commit." -ForegroundColor Magenta
