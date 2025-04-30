function <SID>StataStartUp()
	let l:command = join([  
				\ 'tmux split -c "$PWD";',
				\ "tmux list-panes -F '#{session_name}:#{window_index}.#{pane_index} #{pane_active}';",
				\ 'tmux send-keys "stata-mp" ENTER;',
				\ 'tmux last-pane;'
				\ ])
	let b:vimslime_target = system(l:command)
				\ ->split('\n')
				\ ->map({ key, val -> split(val, " ") })
				\ ->filter({ key, val -> val[1] == 1 })
				\ ->{ x -> x[0][0] }()
	let g:slime_default_config = {"socket_name": "default", "target_pane": b:vimslime_target}
endfunction

call <SID>StataStartUp()
let g:slime_dont_ask_default = 1
