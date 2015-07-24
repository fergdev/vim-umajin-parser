" ---------------------------------------------
"
"       Lexer
"
" ---------------------------------------------

let Lexer = {}

" Lexer class ...
"

" ---------------------------------------------
" Constructor
" ---------------------------------------------
function! Lexer.new(sourceText)
    let newLexer = copy(self)
    let newLexer._scanner = Scanner.New(sourceText) " New scanner

    return newLexer 
end

" ---------------------------------------------
" Constructs and returns the next token in the source text 
" ---------------------------------------------
function! Lexer.get()
    "Read past and ignore and whitespace characters or comments

endfunction!
