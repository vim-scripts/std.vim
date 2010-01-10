
" Std.vim
" Version: 0.22

" FUNCTIONS: std#is_expired(file,expiry)
" @expiry is in seconds
fun! std#is_expired(file,expiry)
  let lt = localtime( )
  let ft = getftime( expand( a:file ) )
  let dist = lt - ft
  if dist > a:expiry * 60 
    return 1
  else
    return 0
  endif
endf

" FUNCTION: defopt( name , val )
" default option setter 
fun! std#defopt(name,val)
  if !exists(a:name)
    let {a:name} = a:val
  endif
endf

" FUNCTION: std#echo(msg)
" redraw and echo
fun! std#echo(msg)
  redraw
  echomsg a:msg
endf

" FUNCTION: std#ucfirst(str)
" capitalize string
fun! std#ucfirst(str)
  return toupper(str[0]) . strpart(str,1)
endf
