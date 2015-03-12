" Copyright 2011 Google Inc. All Rights Reserved.
" Author: bohdan@google.com (Bohdan Vlasyuk)
"
" Syntax file for PDQL (PowerDrill Query Language, see http://goto/pdql).

if exists("b:current_syntax")
  finish
endif

syn case ignore

runtime! syntax/mysql.vim
unlet b:current_syntax

runtime! syntax/proto.vim
unlet b:current_syntax

syn case ignore

" Additional keywords
syn keyword pdqlKeyword top over using group view define function const
syn keyword pdqlKeyword if while contains
" Decl types
syn keyword pdqlType boolean double long string

" Most common builtin functions
syn keyword pdqlBuiltins avg bool count concat endwith fingerprint_28 forall
syn keyword pdqlBuiltins is_null is_empty is_explicitly_defined format_ip
syn keyword pdqlBuiltins ln log max min
syn keyword pdqlBuiltins length parse_ip parse_time_usec pow right startswith
syn keyword pdqlBuiltins strftime_usec reduce return
syn keyword pdqlBuiltins sum time_usec_to_date var
syn keyword pdqlBuiltins regexp extract_regexp

" FROM xxx(...)
syn keyword pdqlSystemTypes bunyan bigtable columnio csv dremel logs
syn keyword pdqlSystemTypes mill recordio pd ration

syn match pdqlAnnotation /\$\w\+\s*=\s*\S\+\s*,/

hi link pdqlKeyword Keyword
hi link pdqlType Type
hi link pdqlBuiltins Identifier
hi link pdqlSystemTypes Type
hi link pdqlOperators Operator
hi link pdqlAnnotation Special

let b:current_syntax = "pdql"
