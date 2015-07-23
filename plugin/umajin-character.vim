" ---------------------------------------------
"
"       Character 
"
" ---------------------------------------------
 let Character = {}

" A character objet holds
" - a character 
" - path to the file where the character was declared
" - the index of the char's position in the source
" - the inde of the line where the character was found
" - the index of the column in the line where the char was found


" ---------------------------------------------
" Constructor
" ---------------------------------------------
function! Character.New(c, lineIndex, colIndex, sourceIndex, sourceText)
    let newChar = copy(self)
    let newChar._cargo = a:c
    let newChar._sourceIndex = a:soureIndex
    let newChar._lineIndex = a:lineIndex
    let newChar._colIndex = a:colIndex
    let newChar._sourceText = a:sourceText
    return newChar
endfunction

" ---------------------------------------------
" Returns a displayable string rep of the Character object
" ---------------------------------------------
function! Character.toString()
    let out = self._cargo
    if self._cargo == ' ' out = '   space'
    elseif self._cargo == '\n'
        out = '   newline'
    elseif self._cargo == '\t'
        out = '   tab'
    elseif self.cargo == '\0'
        out = '   eof'
    endif
    let out =  string(self._lineIndex). ' ' . string(self.colIndex) . ' ' . out
    return out
endfunction

