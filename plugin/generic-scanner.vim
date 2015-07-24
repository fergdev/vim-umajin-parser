source plugin/umajin-character.vim " Include our character class

" ---------------------------------------------
"
"       Scanner
"
" ---------------------------------------------

let Scanner = {}

" Scanner reads through the sourceText and returns one character at at time

" ---------------------------------------------
" Constructor
" ---------------------------------------------
function! Scanner.new(sourceText)
    let newScanner = copy(self)
    let newScanner._sourceText = sourceText
    let newScanner._lastIndex = len(sourceText) -1
    let newScanner._sourceIndex = -1
    let newScanner._lineIndex = 0
    let newScanner._colIndex = -1 
    return newScanner
endfunction


" ---------------------------------------------
" Return the next character in the sourceText
" ---------------------------------------------
function! Scanner.get()
    self._sourceIndex += 1 " increment the index in the source text
    
    if self._sourceIndex > 0 
        if self._sourceText[self._sourceIndex - 1] == '%n'
            self._lineIndex += 1
            self._colIndex = -1
        endif
    endif

    self._colIndex += 1

    let c = ''
    if self._sourceIndex > lastIndex
        " We have gone past the end of the sourceText
        " Return the ENDMARK char
        let c = '%0'
    else     
        let c = self._sourceText[self._sourceIndex]
    endif
    let char = Character.new('',self._lineIndex, self._colIndex, self._sourceIndex, self._sourceText)
    return char
endfunction

