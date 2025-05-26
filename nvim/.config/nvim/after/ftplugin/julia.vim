function <SID>JuliaStartUp()
	let l:command = join([  
				\ 'tmux split -c "$PWD" -l 30%;',
				\ "tmux list-panes -F '#{session_name}:#{window_index}.#{pane_index} #{pane_active}';",
				\ 'tmux send-keys "julia" ENTER;',
				\ 'tmux last-pane;'
				\ ])
	let b:vimslime_target = system(l:command)
				\ ->split('\n')
				\ ->map({ key, val -> split(val, " ") })
				\ ->filter({ key, val -> val[1] == 1 })
				\ ->{ x -> x[0][0] }()
	let g:slime_default_config = {"socket_name": "default", "target_pane": b:vimslime_target}
endfunction

call <SID>JuliaStartUp()
let g:slime_dont_ask_default = 1

augroup CloseOnExit
    autocmd!
    autocmd VimLeave * if exists('b:vimslime_target') && !empty(b:vimslime_target) |
        \ call system("tmux kill-pane -t " .. b:vimslime_target) |
    \ endif
augroup END
