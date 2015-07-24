" ---------------------------------------------
" List of keywords
" ---------------------------------------------
let Keywords = ["if", "then","else", "end", "define", "instance"]

" ---------------------------------------------
" List of symbols that are one char long
" ---------------------------------------------
let OneCharacterSymbols = ["=", "(",")","/","*","+","-",".",";"]

" ---------------------------------------------
" List of symbols that are one char long
" ---------------------------------------------
let TwoCharacterSymbols = ["==", "<=", ">=", "!=", "++", "**", "--", "+=", "-=", "||"]

" ---------------------------------------------
" List of symbols that are one char long
" ---------------------------------------------
let StartMultiComment = "/*"
let EndMultiComment = "*/"

let IDENTIFIER_STARTCHARS = ["A", "B", "C", "D", "a","b","c","d"]
let IDENTIFIER_CHARS = ["A", "B", "C", "D", "a","b","c","d", "1","2","3","4","5"]

let NUMBER_STARTCHARS = ["1","2","3","4","5", "6", "7", "8","9", "0"]
let NUMBER_CHARS = NUMBER_STARTCHARS + ["."] 

let STRING_STARTCHARS = ["'", '"']
let WHITESPACE_CHARS = [" ", "\t", "\n"]
" ---------------------------------------------
" TokenTypes for thigns other than symbols and keywords
" ---------------------------------------------
let STRING = "String"
let IDENTIFIER = "Identifier"
let NUMBER = "Number"
let WHITESPACE = "WHITESPACE"
let COMMENT = "Comment"
let EOF = "Eof"
