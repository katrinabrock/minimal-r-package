
print('Case A, tinytest: Breakpoint fails')
tinytest::run_test_file('test_example6.R')

print('Case B, diagnostic: Breakpoint works')
expr <- expression({
  1==1 # breakpoint here
})
eval(expr)

print('Case C, repro without tinytest: Breakpoint fails')
expr <- parse('test_example6.R')[[1]]
eval(expr)

print('Case D, workaround: Breakpoint works')
expr <- parse(text = 'source("test_example6.R")')[[1]]
eval(expr)