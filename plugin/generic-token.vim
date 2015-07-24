" ---------------------------------------------
"
"       Token
"
" ---------------------------------------------
let Token = {}

" A token objec is the kind of thing that the Lexer returns
" It holds :
"  - the text of the token
"  - the type of token that it is
"  - the line number and column index where the token starts
"

" ---------------------------------------------
"  Constructor for the token class
"  @startChar - the character for the start of the token
" ---------------------------------------------
function! Token.New(startChar)

    let newToken = copy(self)

    " Pickup information from the start character
    let newToken._cargo = startChar._cargo
    let newToken._sourceText = startChar._sourceText
    let newToken._lineIndex = startChar._lineIndex
    let newToken._colIndex = startChar._colIndex

    " Start with nil type ... we will figure out what the token once we have
    " finished processing all of the tokens
    let newToken._type = nil

    return newToken
endfunction

" ---------------------------------------------
" Returns a string representation of this class
" @returns - String representation of this class
" ---------------------------------------------
function! Token.toString()
    let strOut = 'TODO lolz'
    return strOut
endfunction


